DELIMITER //

CREATE PROCEDURE RealizarEmprestimo (
    IN p_usuario INT,
    IN p_codigo_exemplar VARCHAR(20)
)
BEGIN
    DECLARE v_exemplar_id INT;

    START TRANSACTION;

    -- Tenta pegar exemplar disponível
    SELECT id_exemplares
    INTO v_exemplar_id
    FROM exemplar
    WHERE codigo_exemplar = p_codigo_exemplar
      AND status = 'Disponível'
    LIMIT 1;

    IF v_exemplar_id IS NULL THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Exemplar não disponível.';
    END IF;

    -- Registra empréstimo
    INSERT INTO emprestimo (
        usuario, exemplar, data_retirada, data_prevista, data_devolucao, status
    ) VALUES (
        p_usuario, v_exemplar_id, CURDATE(),
        DATE_ADD(CURDATE(), INTERVAL 15 DAY),
        DATE_ADD(CURDATE(), INTERVAL 15 DAY),
        'Em andamento'
    );

    -- Atualiza exemplar
    UPDATE exemplar
    SET status = 'Emprestado'
    WHERE id_exemplares = v_exemplar_id;

    COMMIT;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE RealizarDevolucao (
    IN p_id_emprestimo INT,
    IN p_data_devolucao DATE
)
BEGIN
    DECLARE v_usuario INT;
    DECLARE v_exemplar INT;
    DECLARE v_data_prevista DATE;
    DECLARE v_dias_atraso INT;
    DECLARE v_valor_multa DECIMAL(10,2);

    START TRANSACTION;

    -- Pega informações do empréstimo
    SELECT usuario, exemplar, data_prevista
    INTO v_usuario, v_exemplar, v_data_prevista
    FROM emprestimo
    WHERE id_emprestimos = p_id_emprestimo
    FOR UPDATE;

    -- Atualiza empréstimo
    UPDATE emprestimo
    SET data_devolucao = p_data_devolucao,
        status = 'Concluído'
    WHERE id_emprestimos = p_id_emprestimo;

    -- Libera exemplar
    UPDATE exemplar
    SET status = 'Disponível'
    WHERE id_exemplares = v_exemplar;

    -- Calcula atraso
    SET v_dias_atraso = DATEDIFF(p_data_devolucao, v_data_prevista);

    IF v_dias_atraso > 0 THEN
        SET v_valor_multa = v_dias_atraso * 2.50; -- R$ 2,50 por dia de atraso

        -- Registra penalidade
        INSERT INTO penalidade (usuario, dias_atraso, valor_multa)
        VALUES (v_usuario, v_dias_atraso, v_valor_multa);
    END IF;

    COMMIT;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE RealizarReserva (
    IN p_usuario INT,
    IN p_isbn VARCHAR(13)
)
BEGIN
    DECLARE v_livro_id INT;
    DECLARE v_reserva_existente INT;

    START TRANSACTION;

    -- Verifica se o livro existe
    SELECT id_livros
    INTO v_livro_id
    FROM livro
    WHERE ISBN = p_isbn
    LIMIT 1;

    IF v_livro_id IS NULL THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Livro não encontrado.';
    END IF;

    -- Verifica se o usuário já reservou esse livro
    SELECT COUNT(*)
    INTO v_reserva_existente
    FROM reserva
    WHERE usuario = p_usuario
      AND livro = v_livro_id
      AND status = 'Ativa';

    IF v_reserva_existente > 0 THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Usuário já possui reserva ativa para este livro.';
    END IF;

    -- Cria a reserva
    INSERT INTO reserva (usuario, livro, data, status)
    VALUES (p_usuario, v_livro_id, CURDATE(), 'Ativa');

    COMMIT;
END //

DELIMITER ;

-- Para executar:
CALL RealizarReserva(5, '978000000001');

-- Para executar:
CALL RealizarEmprestimo(5, 'EXP002');

-- Para executar:
CALL RealizarDevolucao(7, '2025-04-15');