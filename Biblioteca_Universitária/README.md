# 📚 Sistema de Gestão de Biblioteca Universitária

Este projeto foi desenvolvido com o objetivo de criar um sistema robusto de gerenciamento de biblioteca utilizando **MySQL**, com suporte a **transações**, **stored procedures**, e um **dump SQL completo** para reprodutibilidade.

---

## 🎯 Objetivo

Desenvolver um sistema de gestão de biblioteca universitária com foco em:

- Criação estruturada do banco de dados em MySQL
- Implementação de transações com controle de integridade
- Stored procedures para operações críticas
- Consultas SQL avançadas para análise de dados
- Entrega de um **dump SQL** com toda a estrutura e dados

---

## 🗃️ Estrutura do Banco de Dados

### Entidades Principais

- **Alunos**: RA, nome, curso, e-mail, telefone  
- **Professores**: matrícula, nome, departamento, e-mail  
- **Bibliotecários**: matrícula, nome, turno, contato  
- **Usuários**: login, senha, tipo  
- **Livros**: ISBN, título, autor, editora, ano, categoria  
- **Exemplares**: código_exemplar, status, localização, ISBN  
- **Empréstimos**: ID, usuário, exemplar, data_retirada, data_prevista, data_devolução, status  
- **Reservas**: ID, usuário, livro, data, status  
- **Penalidades**: ID, usuário, dias_atraso, valor_multa  

---

## 🔁 Stored Procedures

### 📌 Procedure: Empréstimo
- **Parâmetros**: `ID_usuario`, `codigo_exemplar`
- **Operações**:
  - Início com `START TRANSACTION;`
  - Inserção em `Empréstimos`
  - Atualização em `Exemplares`
  - Lógica de controle: `IF... THEN COMMIT; ELSE ROLLBACK;`

### 📌 Procedure: Devolução
- **Parâmetros**: `ID_emprestimo`, `data_devolucao`
- **Operações**:
  - Atualização de status do empréstimo e exemplar
  - Cálculo de multa
  - Inserção na tabela `Penalidades` (se necessário)

### 📌 Procedure: Reserva
- **Parâmetros**: `ID_usuario`, `ISBN_livro`
- **Operações**:
  - Verificação de disponibilidade
  - Verificação de reservas existentes
  - Inserção na tabela `Reservas`

---

## 📊 Consultas SQL 

- 10 livros mais emprestados por ano
- Média de atrasos por curso
- Professores que nunca atrasaram devoluções
- Usuários com mais reservas
- Alunos que mais pagaram multas
- Ranking das editoras com mais livros emprestados
- Cursos que mais utilizam a biblioteca
- Taxa média de devoluções atrasadas por mês
- Número de empréstimos por categoria de livro
- Livros que nunca foram emprestados
- Usuários que mais atrasaram devoluções
- Dias médios de atraso por usuário
- Reservas ativas por curso
- Tempo médio entre retirada e devolução
- Professores que mais utilizam a biblioteca
- Livros mais reservados
- Empréstimos por ano
- Empréstimos por categoria e curso (com JOINs complexos)
- Alunos com mais de 3 empréstimos em aberto (usando HAVING)
- Livros emprestados e penalizados (usando subconsultas)

---

## 👥 Colaboradores

| Nome                 | Github
|----------------------|----------------------------------------|
| Glauber Máximo       | https://github.com/GlauberMaximo       |
| César Augusto        | https://github.com/Cesar0208           |
| Cauê Oliveira        | https://github.com/Caueoliveira-064    |
| João Vitor           | https://github.com/joao2740            |
| Pedro Matos          | https://github.com/PMDL-0310           |

> Adicione os nomes e responsabilidades conforme a contribuição de cada membro do grupo.
---

## 🛠️ Tecnologias Utilizadas

- **MySQL** (versão recomendada: 8.x)
- **Workbench / DBeaver** para modelagem
- **VS Code / outro editor** para edição dos scripts
- **mysqldump** para geração do backup/dump

---