create database biblioteca_universitaria;
use biblioteca_universitaria;

-- Alunos (RA, nome, curso, e-mail, telefone).
create table aluno (
	id_alunos int not null auto_increment primary key,
    ra varchar(15) not null unique,
    nome varchar(100) not null,
    curso varchar(100) not null,
    email varchar(100) not null,
    telefone varchar(20) not null,
    usuario int not null -- Fk tabela usuario 
);

-- Professores (matrícula, nome, departamento, e-mail).
create table professor (
	id_professores int not null auto_increment primary key,
    matricula varchar(20) not null unique,
    nome varchar(100) not null,
    departamento varchar(20) not null,
    email varchar(100) not null,
    usuario int not null -- Fk tabela usuario 
);

-- Bibliotecários (matrícula, nome, turno, contato).
create table bibliotecario (
	id_bibliotecarios int not null auto_increment primary key,
    matricula varchar(20) not null unique,
    nome varchar(100) not null,
    turno varchar(10) not null,
    contato varchar(20) not null,
    usuario int not null -- Fk tabela usuario 
);

-- Usuários (login, senha, tipo).
create table usuario (
	id_usuarios int not null auto_increment primary key,
	login varchar(100) not null unique,
    senha varchar(100) not null,
    tipo varchar(20) not null
);

-- Livros (ISBN, título, autor, editora, ano, categoria).
create table livro (
	id_livros int not null auto_increment primary key,
    ISBN varchar(13) not null unique,
    titulo varchar(100) not null,
    autor varchar(100) not null,
    editora varchar(100) not null,
    ano year not null,
    categoria varchar(20)
);

-- Exemplares (código_exemplar, status, localização, ISBN).
create table exemplar (
	id_exemplares int not null auto_increment primary key,
    codigo_exemplar varchar(20) not null,
    status varchar(15) not null,
    localizacao varchar(100) not null,
    ISBN varchar(13) not null unique
);

-- Empréstimos (ID, usuário, exemplar, data_retirada, data_prevista, data_devolução, status).
create table emprestimo (
	id_emprestimos int not null auto_increment primary key,
    usuario int not null, -- Fk tabela usuario
    exemplar int not null, -- Fk tabela exemplar
    data_retirada date not null,
    data_prevista date not null,
    data_devolucao date not null,
    status varchar(15) not null
);

-- Reservas (ID, usuário, livro, data, status).
create table reserva (
	id_reservas int not null auto_increment primary key,
    usuario int not null, -- Fk tabela usuario 
    livro int not null, -- Fk tabela livro
    data date not null,
    status varchar(15) not null
);

-- Penalidades (ID, usuário, dias_atraso, valor_multa).
create table penalidade (
	id_penalidades int not null auto_increment primary key,
    usuario int not null, -- Fk tabela usuario
    dias_atraso int not null,
    valor_multa decimal(10,2)
);

-- Criação de chaves estrangeiras (FK)

-- Aluno -> Usuario
alter table aluno 
add constraint fk_aluno_usuario foreign key (usuario) references usuario(id_usuarios)
on delete no action on update no action;

-- Professor -> Usuario
alter table professor 
add constraint fk_professor_usuario foreign key (usuario) references usuario(id_usuarios)
on delete no action on update no action;

-- Bibliotecario -> Usuario
alter table bibliotecario 
add constraint fk_bibliotecario_usuario foreign key (usuario) references usuario(id_usuarios)
on delete no action on update no action;

-- Exemplar -> Livro (pelo ISBN)
alter table exemplar 
add constraint fk_exemplar_livro foreign key (ISBN) references livro(ISBN)
on delete no action on update no action;

-- Empréstimo -> Usuario
alter table emprestimo 
add constraint fk_emprestimo_usuario foreign key (usuario) references usuario(id_usuarios)
on delete no action on update no action;

-- Empréstimo -> Exemplar
alter table emprestimo 
add constraint fk_emprestimo_exemplar foreign key (exemplar) references exemplar(id_exemplares)
on delete no action on update no action;

-- Reserva -> Usuario
alter table reserva 
add constraint fk_reserva_usuario foreign key (usuario) references usuario(id_usuarios)
on delete no action on update no action;

-- Reserva -> Livro
alter table reserva 
add constraint fk_reserva_livro foreign key (livro) references livro(id_livros)
on delete no action on update no action;

-- Penalidade -> Usuario
alter table penalidade 
add constraint fk_penalidade_usuario foreign key (usuario) references usuario(id_usuarios)
on delete no action on update no action;