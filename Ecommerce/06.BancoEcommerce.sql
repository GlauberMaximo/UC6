-- view que lista o ID do Pedido, o Nome do Cliente, o Status do Pedido, o Nome do Produto comprado e a Quantidade.
CREATE VIEW v_pedidos_detalhados AS
SELECT 
	p.id as ID_Pedido,
	u.nome AS Nome_Cliente,
    p.status AS Status_Pedido,
    pr.nome AS Nome_Produto,
    ip.quantidade AS Quantidade_Comprada,
    ip.preco_unitario AS Preco_Unitario
FROM
	pedidos p 
JOIN
	usuarios u ON p.cliente_id = u.id
JOIN
	itens_pedido ip ON p.id = ip.pedido_id
JOIN
	produtos pr ON ip.produto_id = pr.id;
    
-- consulta da view v_pedidos_detalhados
SELECT * FROM v_pedidos_detalhados;

-- view que lista usuários com todos os dados essesciais exceto a senha e o CPF, que são informações sensíveis.
CREATE VIEW v_clientes_sem_senha AS
SELECT
	id, nome, email, celular, criado_em
FROM
	usuarios;
    
-- consulta da view v_clientes_sem_senha
	SELECT * FROM v_clientes_sem_senha;
    
-- view que lista produtos com baixo estoque
CREATE VIEW v_resumo_estoque_baixo AS
SELECT
	p.id AS ID_Produto,
    p.nome AS Nome_Produto,
    p.estoque AS Estoque_Atual,
    p.preco AS Preco_Venda,
    c.nome AS Categoria
FROM
	produtos p
JOIN
	categorias c ON p.categoria_id = c.id
WHERE
	p.estoque < 40;
    
drop view v_resumo_estoque_baixo;
-- consulta da view v_resumo_estoque_baixo
	SELECT * FROM v_resumo_estoque_baixo;
    
    select * from produtos;