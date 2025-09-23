-- 1. Top 10 livros mais emprestados por ano
SELECT l.titulo, COUNT(e.id_emprestimos) AS total_emprestimos, YEAR(e.data_retirada) AS ano
FROM emprestimo e
JOIN exemplar ex ON e.exemplar = ex.id_exemplares
JOIN livro l ON ex.ISBN = l.ISBN
GROUP BY l.titulo, YEAR(e.data_retirada)
ORDER BY ano, total_emprestimos DESC
LIMIT 10;

-- 2. Média de dias de atraso por curso
SELECT a.curso, AVG(p.dias_atraso) AS media_atraso
FROM penalidade p
JOIN aluno a ON p.usuario = a.usuario
GROUP BY a.curso;

-- 3. Professores que nunca atrasaram devoluções
SELECT pr.nome
FROM professor pr
LEFT JOIN penalidade p ON pr.usuario = p.usuario
WHERE p.id_penalidades IS NULL;

-- 4. Usuários com mais reservas realizadas
SELECT u.login, COUNT(r.id_reservas) AS total_reservas
FROM usuario u
JOIN reserva r ON u.id_usuarios = r.usuario
GROUP BY u.login
ORDER BY total_reservas DESC;

-- 5. Alunos que mais pagaram multas (em valor total)
SELECT a.nome, SUM(p.valor_multa) AS total_pago
FROM aluno a
JOIN penalidade p ON a.usuario = p.usuario
GROUP BY a.nome
ORDER BY total_pago DESC;

-- 6. Ranking das editoras com mais livros emprestados
SELECT l.editora, COUNT(e.id_emprestimos) AS total_emprestimos
FROM emprestimo e
JOIN exemplar ex ON e.exemplar = ex.id_exemplares
JOIN livro l ON ex.ISBN = l.ISBN
GROUP BY l.editora
ORDER BY total_emprestimos DESC;


-- 7. Cursos que mais utilizam a biblioteca (via empréstimos)
SELECT a.curso, COUNT(e.id_emprestimos) AS total_emprestimos
FROM emprestimo e
JOIN aluno a ON e.usuario = a.usuario
GROUP BY a.curso
ORDER BY total_emprestimos DESC;

-- 8. Quantidade de reservas ativas por categoria de livro
SELECT l.categoria, COUNT(r.id_reservas) AS total_reservas
FROM reserva r
JOIN livro l ON r.livro = l.id_livros
WHERE r.status = 'Ativa'
GROUP BY l.categoria
ORDER BY total_reservas DESC;

-- 9. Média de livros emprestados por mês no ano atual
SELECT MONTH(e.data_retirada) AS mes, COUNT(*) AS total_emprestimos
FROM emprestimo e
WHERE YEAR(e.data_retirada) = YEAR(CURDATE())
GROUP BY MONTH(e.data_retirada);


-- 10. Livros que foram reservados mas nunca emprestados
SELECT DISTINCT l.titulo
FROM reserva r
JOIN livro l ON r.livro = l.id_livros
LEFT JOIN exemplar ex ON ex.ISBN = l.ISBN
LEFT JOIN emprestimo e ON e.exemplar = ex.id_exemplares
WHERE e.id_emprestimos IS NULL;

-- 11. Usuários que têm empréstimos em andamento
SELECT u.login, COUNT(e.id_emprestimos) AS emprestimos_ativos
FROM emprestimo e
JOIN usuario u ON e.usuario = u.id_usuarios
WHERE e.status = 'Em andamento'
GROUP BY u.login
ORDER BY emprestimos_ativos DESC;

-- 12. Livros com maior número de reservas (ranking)
SELECT l.titulo, COUNT(r.id_reservas) AS total_reservas
FROM reserva r
JOIN livro l ON r.livro = l.id_livros
GROUP BY l.titulo
ORDER BY total_reservas DESC;

-- 13. Alunos que fizeram mais de 3 reservas ativas
SELECT a.nome, COUNT(r.id_reservas) AS total_reservas
FROM aluno a
JOIN reserva r ON a.usuario = r.usuario
WHERE r.status = 'Ativa'
GROUP BY a.nome
HAVING total_reservas > 3;

-- 14. Multa média por usuário
SELECT u.login, AVG(p.valor_multa) AS media_multa
FROM penalidade p
JOIN usuario u ON p.usuario = u.id_usuarios
GROUP BY u.login;

-- 15. Total de livros disponíveis por categoria
SELECT l.categoria, COUNT(ex.id_exemplares) AS total_disponiveis
FROM exemplar ex
JOIN livro l ON ex.ISBN = l.ISBN
WHERE ex.status = 'Disponível'
GROUP BY l.categoria;

-- 16. Top 5 alunos com mais empréstimos 
SELECT a.nome, COUNT(e.id_emprestimos) AS total_emprestimos
FROM aluno a
JOIN emprestimo e ON a.usuario = e.usuario
GROUP BY a.nome
ORDER BY total_emprestimos DESC
LIMIT 5;

-- 17. Departamentos dos professores que mais utilizam a biblioteca
SELECT pr.departamento, COUNT(e.id_emprestimos) AS total_emprestimos
FROM emprestimo e
JOIN professor pr ON e.usuario = pr.usuario
GROUP BY pr.departamento
ORDER BY total_emprestimos DESC;

-- 18. Livros emprestados e não devolvidos após a data prevista
SELECT l.titulo, e.data_prevista, e.data_devolucao
FROM emprestimo e
JOIN exemplar ex ON e.exemplar = ex.id_exemplares
JOIN livro l ON ex.ISBN = l.ISBN
WHERE e.data_devolucao > e.data_prevista;

-- 19. Exemplares que nunca foram emprestados
SELECT ex.codigo_exemplar, l.titulo
FROM exemplar ex
JOIN livro l ON ex.ISBN = l.ISBN
LEFT JOIN emprestimo e ON e.exemplar = ex.id_exemplares
WHERE e.id_emprestimos IS NULL;

-- 20. Quantidade de livros por editora
SELECT editora, COUNT(*) AS total_livros
FROM livro
GROUP BY editora
ORDER BY total_livros DESC;