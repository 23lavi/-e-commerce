create database sistema_vendas_online;
use sistema_vendas_online;

create table cliente(
	id_clientes int
	auto_increment primary key,
    nome varchar(255),
    endereco varchar(255),
    email varchar (255),
    celular varchar (20),
    dt_nasc date
);

create table produtos(
    id_produtos int auto_increment primary key,
    nome varchar(255),
    preco decimal (6,5),
    descricao varchar(255),
	qtd_etq tinyint
);

create table pedidos(
	id_pedidos int auto_increment primary key,
	num_pedido int,
    dt_compra date,
    valor_total DECIMAL(10,2),
    dt_estimada_entrega DATE,
    id_clientes INT,
    FOREIGN KEY (id_clientes) REFERENCES cliente(id_clientes)
);

CREATE TABLE lista_itens (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    qtd INT,
    valor_untr DECIMAL(10,2),
    valor_total_item DECIMAL(10,2),
    id_pedidos INT,
    id_produtos INT,
    FOREIGN KEY (id_pedidos) REFERENCES pedidos(id_pedidos),
    FOREIGN KEY (id_produtos) REFERENCES produtos(id_produtos)
);
