create database ecommerce;
use ecommerce;

create table usuarios(
	id int auto_increment primary key,
    nome varchar(100),
    email varchar(100) unique,
    senha varchar(100) not null,
	celular varchar(20),
    cpf varchar(14),
    criado_em datetime default current_timestamp
);

-- Tabela Endereços
create table enderecos(
	id int auto_increment primary key,
    cliente_id int,
    rua varchar(100),
    numero varchar(100),
    bairro varchar(50),
    cidade varchar(50),
    estado char(2),
    cep varchar(9)
);
 
 -- Tabela Categorias
 create table categorias(
	id int auto_increment primary key,
	nome varchar(100) not null,
    descricao text
 );
 
 -- Tabela Produtos
 create table produtos(
	id int auto_increment primary key,
    nome varchar(100) not null,
    descricao text,
    preco decimal(10,2) not null,
    estoque decimal(10,2) not null,
    categoria_id int
 );
 
 -- Tabela itens pedido
 create table itens_pedido(
	id int auto_increment primary key,
    pedido_id int,
    produto_id int,
    quantidade int not null,
    preco_unitario decimal(10,2) not null
 );
 
 -- Tabela de pedidos
 create table pedidos(
	id int auto_increment primary key,
    usuario_id int,
    data_pedido datetime default current_timestamp,
    status varchar(50) default 'Pendente',
    total decimal(10,2)
 );
 
 -- Índices para otimizar buscas e junções
 create index idx_enderecos_cliente_id on enderecos (cliente_id);
 
 create index idx_produtos_categoria_id on produtos (categoria_id);
 
 create index idx_pedidos_cliente_id on pedidos (usuario_id);
 
 create index idx_itens_pedido_pedido_id on itens_pedido (pedido_id);
 
 create index idx_itens_pedido_produto_id on itens_pedido (produto_id);
 
 -- Chaves estrangeiras para garantir a integridade referencial
 alter table enderecos
 add constraint fk_enderecos_cliente_id foreign key (cliente_id) references usuarios(id);
 
 alter table produtos
 add constraint fk_produtos_categoria_id foreign key (categoria_id) references categorias(id);
 
 alter table pedidos
 add constraint fk_pedidos_cliente_id foreign key (usuario_id) references usuarios(id);
 
 alter table itens_pedido 
 add constraint fk_itens_pedido_pedido_id foreign key (pedido_id) references pedidos(id);
 
 alter table itens_pedido
 add constraint fk_itns_pedido_produto_id foreign key (produto_id) references produtos(id);