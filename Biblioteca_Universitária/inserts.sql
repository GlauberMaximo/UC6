-- ==========================
-- PARTE 1 - Usuários
-- ==========================

-- Inserindo 60 usuários
INSERT INTO usuario (login, senha, tipo) VALUES
('aluno1', 'senha1', 'aluno'),
('aluno2', 'senha2', 'aluno'),
('aluno3', 'senha3', 'aluno'),
('aluno4', 'senha4', 'aluno'),
('aluno5', 'senha5', 'aluno'),
('aluno6', 'senha6', 'aluno'),
('aluno7', 'senha7', 'aluno'),
('aluno8', 'senha8', 'aluno'),
('aluno9', 'senha9', 'aluno'),
('aluno10', 'senha10', 'aluno'),
('aluno11', 'senha11', 'aluno'),
('aluno12', 'senha12', 'aluno'),
('aluno13', 'senha13', 'aluno'),
('aluno14', 'senha14', 'aluno'),
('aluno15', 'senha15', 'aluno'),
('aluno16', 'senha16', 'aluno'),
('aluno17', 'senha17', 'aluno'),
('aluno18', 'senha18', 'aluno'),
('aluno19', 'senha19', 'aluno'),
('aluno20', 'senha20', 'aluno'),

('prof1', 'senha21', 'professor'),
('prof2', 'senha22', 'professor'),
('prof3', 'senha23', 'professor'),
('prof4', 'senha24', 'professor'),
('prof5', 'senha25', 'professor'),
('prof6', 'senha26', 'professor'),
('prof7', 'senha27', 'professor'),
('prof8', 'senha28', 'professor'),
('prof9', 'senha29', 'professor'),
('prof10', 'senha30', 'professor'),
('prof11', 'senha31', 'professor'),
('prof12', 'senha32', 'professor'),
('prof13', 'senha33', 'professor'),
('prof14', 'senha34', 'professor'),
('prof15', 'senha35', 'professor'),
('prof16', 'senha36', 'professor'),
('prof17', 'senha37', 'professor'),
('prof18', 'senha38', 'professor'),
('prof19', 'senha39', 'professor'),
('prof20', 'senha40', 'professor'),

('biblio1', 'senha41', 'bibliotecario'),
('biblio2', 'senha42', 'bibliotecario'),
('biblio3', 'senha43', 'bibliotecario'),
('biblio4', 'senha44', 'bibliotecario'),
('biblio5', 'senha45', 'bibliotecario'),
('biblio6', 'senha46', 'bibliotecario'),
('biblio7', 'senha47', 'bibliotecario'),
('biblio8', 'senha48', 'bibliotecario'),
('biblio9', 'senha49', 'bibliotecario'),
('biblio10', 'senha50', 'bibliotecario'),
('biblio11', 'senha51', 'bibliotecario'),
('biblio12', 'senha52', 'bibliotecario'),
('biblio13', 'senha53', 'bibliotecario'),
('biblio14', 'senha54', 'bibliotecario'),
('biblio15', 'senha55', 'bibliotecario'),
('biblio16', 'senha56', 'bibliotecario'),
('biblio17', 'senha57', 'bibliotecario'),
('biblio18', 'senha58', 'bibliotecario'),
('biblio19', 'senha59', 'bibliotecario'),
('biblio20', 'senha60', 'bibliotecario');

-- ==========================
-- PARTE 1 - Alunos
-- ==========================

INSERT INTO aluno (ra, nome, curso, email, telefone, usuario) VALUES
('RA1001', 'Aluno 1', 'Engenharia', 'aluno1@email.com', '1111-1001', 1),
('RA1002', 'Aluno 2', 'Direito', 'aluno2@email.com', '1111-1002', 2),
('RA1003', 'Aluno 3', 'Medicina', 'aluno3@email.com', '1111-1003', 3),
('RA1004', 'Aluno 4', 'História', 'aluno4@email.com', '1111-1004', 4),
('RA1005', 'Aluno 5', 'Engenharia', 'aluno5@email.com', '1111-1005', 5),
('RA1006', 'Aluno 6', 'Direito', 'aluno6@email.com', '1111-1006', 6),
('RA1007', 'Aluno 7', 'Medicina', 'aluno7@email.com', '1111-1007', 7),
('RA1008', 'Aluno 8', 'História', 'aluno8@email.com', '1111-1008', 8),
('RA1009', 'Aluno 9', 'Engenharia', 'aluno9@email.com', '1111-1009', 9),
('RA1010', 'Aluno 10', 'Direito', 'aluno10@email.com', '1111-1010', 10),
('RA1011', 'Aluno 11', 'Medicina', 'aluno11@email.com', '1111-1011', 11),
('RA1012', 'Aluno 12', 'História', 'aluno12@email.com', '1111-1012', 12),
('RA1013', 'Aluno 13', 'Engenharia', 'aluno13@email.com', '1111-1013', 13),
('RA1014', 'Aluno 14', 'Direito', 'aluno14@email.com', '1111-1014', 14),
('RA1015', 'Aluno 15', 'Medicina', 'aluno15@email.com', '1111-1015', 15),
('RA1016', 'Aluno 16', 'História', 'aluno16@email.com', '1111-1016', 16),
('RA1017', 'Aluno 17', 'Engenharia', 'aluno17@email.com', '1111-1017', 17),
('RA1018', 'Aluno 18', 'Direito', 'aluno18@email.com', '1111-1018', 18),
('RA1019', 'Aluno 19', 'Medicina', 'aluno19@email.com', '1111-1019', 19),
('RA1020', 'Aluno 20', 'História', 'aluno20@email.com', '1111-1020', 20);

-- ==========================
-- PARTE 1 - Professores
-- ==========================

INSERT INTO professor (matricula, nome, departamento, email, usuario) VALUES
('P2001', 'Professor 1', 'Matemática', 'prof1@email.com', 21),
('P2002', 'Professor 2', 'Física', 'prof2@email.com', 22),
('P2003', 'Professor 3', 'História', 'prof3@email.com', 23),
('P2004', 'Professor 4', 'Direito', 'prof4@email.com', 24),
('P2005', 'Professor 5', 'Biologia', 'prof5@email.com', 25),
('P2006', 'Professor 6', 'Medicina', 'prof6@email.com', 26),
('P2007', 'Professor 7', 'Engenharia', 'prof7@email.com', 27),
('P2008', 'Professor 8', 'Química', 'prof8@email.com', 28),
('P2009', 'Professor 9', 'Matemática', 'prof9@email.com', 29),
('P2010', 'Professor 10', 'Física', 'prof10@email.com', 30),
('P2011', 'Professor 11', 'História', 'prof11@email.com', 31),
('P2012', 'Professor 12', 'Direito', 'prof12@email.com', 32),
('P2013', 'Professor 13', 'Biologia', 'prof13@email.com', 33),
('P2014', 'Professor 14', 'Medicina', 'prof14@email.com', 34),
('P2015', 'Professor 15', 'Engenharia', 'prof15@email.com', 35),
('P2016', 'Professor 16', 'Química', 'prof16@email.com', 36),
('P2017', 'Professor 17', 'Matemática', 'prof17@email.com', 37),
('P2018', 'Professor 18', 'Física', 'prof18@email.com', 38),
('P2019', 'Professor 19', 'História', 'prof19@email.com', 39),
('P2020', 'Professor 20', 'Direito', 'prof20@email.com', 40);

-- ==========================
-- PARTE 1 - Bibliotecários
-- ==========================

INSERT INTO bibliotecario (matricula, nome, turno, contato, usuario) VALUES
('B3001', 'Bibliotecário 1', 'Manhã', '9999-3001', 41),
('B3002', 'Bibliotecário 2', 'Tarde', '9999-3002', 42),
('B3003', 'Bibliotecário 3', 'Noite', '9999-3003', 43),
('B3004', 'Bibliotecário 4', 'Manhã', '9999-3004', 44),
('B3005', 'Bibliotecário 5', 'Tarde', '9999-3005', 45),
('B3006', 'Bibliotecário 6', 'Noite', '9999-3006', 46),
('B3007', 'Bibliotecário 7', 'Manhã', '9999-3007', 47),
('B3008', 'Bibliotecário 8', 'Tarde', '9999-3008', 48),
('B3009', 'Bibliotecário 9', 'Noite', '9999-3009', 49),
('B3010', 'Bibliotecário 10', 'Manhã', '9999-3010', 50),
('B3011', 'Bibliotecário 11', 'Tarde', '9999-3011', 51),
('B3012', 'Bibliotecário 12', 'Noite', '9999-3012', 52),
('B3013', 'Bibliotecário 13', 'Manhã', '9999-3013', 53),
('B3014', 'Bibliotecário 14', 'Tarde', '9999-3014', 54),
('B3015', 'Bibliotecário 15', 'Noite', '9999-3015', 55),
('B3016', 'Bibliotecário 16', 'Manhã', '9999-3016', 56),
('B3017', 'Bibliotecário 17', 'Tarde', '9999-3017', 57),
('B3018', 'Bibliotecário 18', 'Noite', '9999-3018', 58),
('B3019', 'Bibliotecário 19', 'Manhã', '9999-3019', 59),
('B3020', 'Bibliotecário 20', 'Tarde', '9999-3020', 60);


-- ==========================
-- PARTE 2 - Livros
-- ==========================

INSERT INTO livro (ISBN, titulo, autor, editora, ano, categoria) VALUES
('978000000001', 'Introdução à Programação', 'José Silva', 'Editora Atlas', 2018, 'Tecnologia'),
('978000000002', 'Algoritmos e Estruturas de Dados', 'Maria Souza', 'Editora Atlas', 2019, 'Tecnologia'),
('978000000003', 'Banco de Dados Relacionais', 'Carlos Pereira', 'Editora Pearson', 2020, 'Tecnologia'),
('978000000004', 'Engenharia de Software', 'Ana Santos', 'Editora Pearson', 2017, 'Tecnologia'),
('978000000005', 'Redes de Computadores', 'Pedro Costa', 'Editora LTC', 2016, 'Tecnologia'),
('978000000006', 'Inteligência Artificial', 'Fernanda Rocha', 'Editora LTC', 2021, 'Tecnologia'),
('978000000007', 'Matemática Básica', 'Roberto Lima', 'Editora Saraiva', 2015, 'Matemática'),
('978000000008', 'Cálculo I', 'Juliana Alves', 'Editora Saraiva', 2018, 'Matemática'),
('978000000009', 'Cálculo II', 'Juliana Alves', 'Editora Saraiva', 2019, 'Matemática'),
('978000000010', 'Álgebra Linear', 'Cláudia Nunes', 'Editora Saraiva', 2020, 'Matemática'),

('978000000011', 'Direito Constitucional', 'Luiz Carvalho', 'Editora Atlas', 2017, 'Direito'),
('978000000012', 'Direito Penal', 'Renata Dias', 'Editora Atlas', 2019, 'Direito'),
('978000000013', 'Direito Civil', 'André Gomes', 'Editora Atlas', 2018, 'Direito'),
('978000000014', 'Processo Penal', 'Marcos Silva', 'Editora Atlas', 2020, 'Direito'),
('978000000015', 'Direito Administrativo', 'Helena Castro', 'Editora Atlas', 2016, 'Direito'),

('978000000016', 'História do Brasil', 'Sérgio Mendes', 'Editora Moderna', 2015, 'História'),
('978000000017', 'História Antiga', 'Paulo Almeida', 'Editora Moderna', 2016, 'História'),
('978000000018', 'História Contemporânea', 'Ricardo Lopes', 'Editora Moderna', 2017, 'História'),
('978000000019', 'História da Arte', 'Luciana Freitas', 'Editora Moderna', 2018, 'História'),
('978000000020', 'História Medieval', 'Mariana Barros', 'Editora Moderna', 2019, 'História'),

('978000000021', 'Anatomia Humana', 'João Farias', 'Editora Elsevier', 2015, 'Medicina'),
('978000000022', 'Fisiologia Humana', 'Carla Mendes', 'Editora Elsevier', 2016, 'Medicina'),
('978000000023', 'Patologia Geral', 'Eduardo Santos', 'Editora Elsevier', 2017, 'Medicina'),
('978000000024', 'Farmacologia', 'Patrícia Lima', 'Editora Elsevier', 2018, 'Medicina'),
('978000000025', 'Clínica Médica', 'Rodrigo Oliveira', 'Editora Elsevier', 2019, 'Medicina'),

('978000000026', 'Química Geral', 'Beatriz Campos', 'Editora Pearson', 2015, 'Química'),
('978000000027', 'Química Orgânica', 'Henrique Cardoso', 'Editora Pearson', 2016, 'Química'),
('978000000028', 'Química Inorgânica', 'Fernanda Costa', 'Editora Pearson', 2017, 'Química'),
('978000000029', 'Química Analítica', 'Lucio Andrade', 'Editora Pearson', 2018, 'Química'),
('978000000030', 'Físico-Química', 'Marcela Prado', 'Editora Pearson', 2019, 'Química'),

('978000000031', 'Física Mecânica', 'Gustavo Lopes', 'Editora LTC', 2015, 'Física'),
('978000000032', 'Física Termodinâmica', 'Tatiana Ferreira', 'Editora LTC', 2016, 'Física'),
('978000000033', 'Física Eletromagnetismo', 'Ricardo Souza', 'Editora LTC', 2017, 'Física'),
('978000000034', 'Física Moderna', 'Carolina Braga', 'Editora LTC', 2018, 'Física'),
('978000000035', 'Óptica e Ondas', 'Luana Ribeiro', 'Editora LTC', 2019, 'Física'),

('978000000036', 'Biologia Celular', 'Amanda Teixeira', 'Editora Saraiva', 2015, 'Biologia'),
('978000000037', 'Genética', 'Bruno Martins', 'Editora Saraiva', 2016, 'Biologia'),
('978000000038', 'Zoologia', 'Mariana Silva', 'Editora Saraiva', 2017, 'Biologia'),
('978000000039', 'Botânica', 'Lucas Almeida', 'Editora Saraiva', 2018, 'Biologia'),
('978000000040', 'Ecologia', 'Vanessa Moura', 'Editora Saraiva', 2019, 'Biologia'),

('978000000041', 'Administração Geral', 'Ricardo Fonseca', 'Editora Atlas', 2015, 'Administração'),
('978000000042', 'Marketing Básico', 'Juliana Costa', 'Editora Atlas', 2016, 'Administração'),
('978000000043', 'Gestão Financeira', 'Fernando Rocha', 'Editora Atlas', 2017, 'Administração'),
('978000000044', 'Recursos Humanos', 'Paula Martins', 'Editora Atlas', 2018, 'Administração'),
('978000000045', 'Logística Empresarial', 'Marcos Pereira', 'Editora Atlas', 2019, 'Administração'),

('978000000046', 'Sociologia Geral', 'Renato Vieira', 'Editora Moderna', 2016, 'Sociologia'),
('978000000047', 'Sociologia Contemporânea', 'Camila Santos', 'Editora Moderna', 2017, 'Sociologia'),
('978000000048', 'Psicologia Geral', 'Adriana Ribeiro', 'Editora Pearson', 2018, 'Psicologia'),
('978000000049', 'Psicologia Social', 'Rodrigo Cunha', 'Editora Pearson', 2019, 'Psicologia'),
('978000000050', 'Filosofia Moderna', 'André Carvalho', 'Editora Saraiva', 2020, 'Filosofia');

-- ==========================
-- PARTE 2 - Exemplares (35)
-- ==========================

INSERT INTO exemplar (codigo_exemplar, status, localizacao, ISBN) VALUES
('EXP001', 'Disponível', 'Estante A1', '978000000001'),
('EXP002', 'Disponível', 'Estante A1', '978000000002'),
('EXP003', 'Emprestado', 'Estante A1', '978000000003'),
('EXP004', 'Disponível', 'Estante A1', '978000000004'),
('EXP005', 'Disponível', 'Estante A2', '978000000005'),
('EXP006', 'Emprestado', 'Estante A2', '978000000006'),
('EXP007', 'Disponível', 'Estante A2', '978000000007'),
('EXP008', 'Disponível', 'Estante A2', '978000000008'),
('EXP009', 'Disponível', 'Estante A3', '978000000009'),
('EXP010', 'Disponível', 'Estante A3', '978000000010'),

('EXP011', 'Emprestado', 'Estante B1', '978000000011'),
('EXP012', 'Disponível', 'Estante B1', '978000000012'),
('EXP013', 'Disponível', 'Estante B1', '978000000013'),
('EXP014', 'Disponível', 'Estante B1', '978000000014'),
('EXP015', 'Disponível', 'Estante B2', '978000000015'),

('EXP016', 'Disponível', 'Estante B2', '978000000016'),
('EXP017', 'Disponível', 'Estante B2', '978000000017'),
('EXP018', 'Disponível', 'Estante B2', '978000000018'),
('EXP019', 'Disponível', 'Estante B3', '978000000019'),
('EXP020', 'Disponível', 'Estante B3', '978000000020'),

('EXP021', 'Disponível', 'Estante C1', '978000000021'),
('EXP022', 'Disponível', 'Estante C1', '978000000022'),
('EXP023', 'Disponível', 'Estante C1', '978000000023'),
('EXP024', 'Disponível', 'Estante C2', '978000000024'),
('EXP025', 'Emprestado', 'Estante C2', '978000000025'),

('EXP026', 'Disponível', 'Estante D1', '978000000026'),
('EXP027', 'Disponível', 'Estante D1', '978000000027'),
('EXP028', 'Disponível', 'Estante D1', '978000000028'),
('EXP029', 'Disponível', 'Estante D2', '978000000029'),
('EXP030', 'Disponível', 'Estante D2', '978000000030'),

('EXP031', 'Disponível', 'Estante E1', '978000000031'),
('EXP032', 'Disponível', 'Estante E1', '978000000032'),
('EXP033', 'Disponível', 'Estante E1', '978000000033'),
('EXP034', 'Disponível', 'Estante E2', '978000000034'),
('EXP035', 'Disponível', 'Estante E2', '978000000035');


-- ==========================
-- PARTE 3 - Reservas (40)
-- ==========================

INSERT INTO reserva (usuario, livro, data, status) VALUES
(1, 5, '2025-01-10', 'Ativa'),
(1, 6, '2025-02-12', 'Concluída'),
(2, 10, '2025-01-15', 'Ativa'),
(2, 11, '2025-02-18', 'Cancelada'),
(3, 15, '2025-01-20', 'Ativa'),
(4, 20, '2025-02-22', 'Ativa'),
(5, 25, '2025-03-05', 'Concluída'),
(6, 30, '2025-03-10', 'Ativa'),
(6, 31, '2025-04-12', 'Ativa'),
(7, 35, '2025-03-15', 'Cancelada'),

(8, 40, '2025-03-20', 'Ativa'),
(9, 45, '2025-04-01', 'Ativa'),
(10, 50, '2025-04-05', 'Concluída'),
(11, 2, '2025-04-08', 'Ativa'),
(12, 3, '2025-04-10', 'Ativa'),
(13, 7, '2025-04-12', 'Cancelada'),
(14, 8, '2025-04-15', 'Ativa'),
(15, 9, '2025-04-18', 'Ativa'),
(15, 12, '2025-05-01', 'Concluída'),
(16, 14, '2025-05-05', 'Ativa'),

(17, 16, '2025-05-10', 'Ativa'),
(18, 18, '2025-05-12', 'Ativa'),
(19, 22, '2025-05-15', 'Cancelada'),
(20, 24, '2025-05-20', 'Ativa'),
(21, 26, '2025-05-25', 'Ativa'),
(22, 28, '2025-05-28', 'Ativa'),
(23, 32, '2025-06-01', 'Concluída'),
(24, 34, '2025-06-05', 'Ativa'),
(25, 36, '2025-06-10', 'Ativa'),
(26, 38, '2025-06-15', 'Ativa'),

(27, 39, '2025-06-20', 'Concluída'),
(28, 41, '2025-06-25', 'Ativa'),
(29, 42, '2025-07-01', 'Ativa'),
(30, 43, '2025-07-05', 'Ativa'),
(31, 44, '2025-07-10', 'Ativa'),
(32, 46, '2025-07-15', 'Cancelada'),
(33, 47, '2025-07-20', 'Ativa'),
(34, 48, '2025-07-25', 'Ativa'),
(35, 49, '2025-07-30', 'Ativa'),
(36, 50, '2025-08-05', 'Concluída');


-- ==========================
-- PARTE 5 - Penalidades (20)
-- ==========================

INSERT INTO penalidade (usuario, dias_atraso, valor_multa) VALUES
(2, 3, 7.50),
(5, 2, 5.00),
(6, 5, 12.50),
(6, 4, 10.00),
(9, 7, 17.50),
(11, 1, 2.50),
(13, 6, 15.00),
(15, 10, 25.00),
(15, 8, 20.00),
(17, 2, 5.00),

(18, 4, 10.00),
(19, 12, 30.00),
(21, 9, 22.50),
(23, 3, 7.50),
(25, 15, 37.50),
(27, 6, 15.00),
(29, 11, 27.50),
(30, 2, 5.00),
(32, 5, 12.50),
(33, 4, 10.00);


-- ==========================
-- PARTE 4 - Empréstimos (35) - Ajustado
-- ==========================

INSERT INTO emprestimo (usuario, exemplar, data_retirada, data_prevista, data_devolucao, status) VALUES
(1, 1, '2025-01-05', '2025-01-20', '2025-01-18', 'Concluído'),
(2, 2, '2025-01-10', '2025-01-25', '2025-01-24', 'Concluído'),
(3, 3, '2025-01-12', '2025-01-27', '2025-01-27', 'Em andamento'),
(4, 4, '2025-01-15', '2025-01-30', '2025-01-29', 'Concluído'),
(5, 5, '2025-01-18', '2025-02-02', '2025-02-02', 'Em andamento'),
(6, 6, '2025-01-20', '2025-02-04', '2025-02-03', 'Concluído'),
(6, 7, '2025-01-22', '2025-02-06', '2025-02-06', 'Em andamento'),
(7, 8, '2025-01-25', '2025-02-09', '2025-02-07', 'Concluído'),
(8, 9, '2025-01-28', '2025-02-12', '2025-02-12', 'Em andamento'),
(9, 10, '2025-02-01', '2025-02-16', '2025-02-16', 'Em andamento'),

(10, 11, '2025-02-03', '2025-02-18', '2025-02-16', 'Concluído'),
(11, 12, '2025-02-05', '2025-02-20', '2025-02-20', 'Em andamento'),
(12, 13, '2025-02-07', '2025-02-22', '2025-02-21', 'Concluído'),
(13, 14, '2025-02-09', '2025-02-24', '2025-02-24', 'Em andamento'),
(14, 15, '2025-02-11', '2025-02-26', '2025-02-25', 'Concluído'),
(15, 16, '2025-02-13', '2025-02-28', '2025-02-28', 'Em andamento'),
(15, 17, '2025-02-15', '2025-03-02', '2025-03-02', 'Em andamento'),
(16, 18, '2025-02-17', '2025-03-04', '2025-03-03', 'Concluído'),
(17, 19, '2025-02-19', '2025-03-06', '2025-03-06', 'Em andamento'),
(18, 20, '2025-02-21', '2025-03-08', '2025-03-08', 'Em andamento'),

(19, 21, '2025-02-23', '2025-03-10', '2025-03-09', 'Concluído'),
(20, 22, '2025-02-25', '2025-03-12', '2025-03-12', 'Em andamento'),
(21, 23, '2025-02-27', '2025-03-14', '2025-03-14', 'Em andamento'),
(22, 24, '2025-03-01', '2025-03-16', '2025-03-16', 'Em andamento'),
(23, 25, '2025-03-03', '2025-03-18', '2025-03-16', 'Concluído'),
(24, 26, '2025-03-05', '2025-03-20', '2025-03-20', 'Em andamento'),
(25, 27, '2025-03-07', '2025-03-22', '2025-03-22', 'Em andamento'),
(26, 28, '2025-03-09', '2025-03-24', '2025-03-24', 'Em andamento'),
(27, 29, '2025-03-11', '2025-03-26', '2025-03-24', 'Concluído'),
(28, 30, '2025-03-13', '2025-03-28', '2025-03-28', 'Em andamento'),

(29, 31, '2025-03-15', '2025-03-30', '2025-03-28', 'Concluído'),
(30, 32, '2025-03-17', '2025-04-01', '2025-04-01', 'Em andamento'),
(31, 33, '2025-03-19', '2025-04-03', '2025-04-03', 'Em andamento'),
(32, 34, '2025-03-21', '2025-04-05', '2025-04-04', 'Concluído'),
(33, 35, '2025-03-23', '2025-04-07', '2025-04-07', 'Em andamento');
