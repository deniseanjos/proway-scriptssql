-- DB - DDL - ATP41

create table tb_produto(
	id int primary key generated always as identity,
	nome varchar(22) not null,
	descricao varchar not null,
	codigo varchar(10) not null,
	preco float not null
);

create table tb_categoria(
	id int primary key generated always as identity,
	nome varchar(22) not null,
	descricao varchar
);

create table tb_carro(
	id int primary key generated always as identity,
	modelo varchar not null,
	marca varchar not null
);

alter table tb_carro
	add column chassi varchar not null,
	add column ano int not null;

alter table tb_produto 
	drop column codigo;

drop table tb_carro;

alter table tb_produto 
	add column categoria_id int not null,
	add constraint fk_categoria foreign key(categoria_id) references tb_categoria(id)