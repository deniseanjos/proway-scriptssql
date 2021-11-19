-- DB - DTL - APT44

begin transaction;

insert into tb_produto (nome, descricao, preco, categoria_id) values ('Monitor', '19 polegadas', 380, 1);

insert into tb_categoria (nome) values ('Papelaria');

commit;
end;


begin transaction;

create table tb_carros(
	id int primary key generated always as identity,
	marca varchar not null,
	modelo varchar not null
);

insert into tb_carros(marca, modelo) values ('Fiat', 'Mobi');
insert into tb_carros(marca, modelo) values ('Fiat', 'Kazinho');

commit;
end;

begin transaction;

create table tb_pais(
	id int primary key generated always as identity,
	nome varchar not null,
	sigla varchar
);

create table tb_estado(
	id int primary key generated always as identity,
	nome varchar not null,
	sigla varchar,
	pais_id int not null,
	constraint fk_pais foreign key(pais_id) references tb_pais(id)
);

create table tb_cidade(
	id int primary key generated always as identity,
	nome varchar not null,
	estado_id int not null,
	constraint fk_estado foreign key(estado_id) references tb_estado(id)
);

insert into tb_pais(nome, sigla) values ('Brasil', 'BR');

insert into tb_estado(nome, sigla, pais_id) values ('Sao Paulo', 'SP', 1);

insert into tb_cidade(nome, estado_id) values ('SBC', 1);

commit;
end;