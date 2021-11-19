-- DTL = Data Transaction Language

--Se uma das ações der erro, não será possível efetuar nenhuma das transações internas
--begin transaction;
--
--create table tb_categoria(
--	id int primary key generated always as identity,
--	nome varchar(22) not null,
--	descricao varchar
--);
--
--create table tb_pessoa(
--	id int primary key generated always as identity,
--	nome varchar(22) not null
--);
--
--commit;
--end;

--Savepoint e Rollback
--begin transaction;
--
--insert into tb_pessoa(nome) values ('Jessica');
--
--savepoint insert_pessoa1;
--
--insert into tb_pessoa(nome) values (1);
--
--rollback to insert_pessoa1;
--
--commit;
--end;

--Contar quantidade de itens de uma tabela
--select count(id) from tb_pessoa; 

