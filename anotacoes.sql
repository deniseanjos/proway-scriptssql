--CRIANDO NOVA TABELA E DEFININDO COLUNAS
--create table tb_pessoas (
--	nome varchar(50) not null,
--	sobrenome varchar(50) not null,
--	idade int null
--);

--ALTERANDO TABELA ADICIONANDO NOVA VOLUNA
--alter table tb_pessoas 
--add column endereco varchar(200) not null;
--add column id int generated always as identity;

--ADICIONANDO NOVA COLUNA QUE NÃO PODE SER NULL EM TABELA JÁ CRIADA E POPULADA
--alter table tb_pessoas
--add column cpf varchar(20) not null default '000.000.000-00';
--add column cpf varchar(20) not null; OBS: Não funciona pois já havia sido criado e populado a tabela antes;

--REMOVENDO UMA COLUNA ESPECIFICA DA TABELA
--alter table tb_pessoas 
--drop column endereco;

--POPULANDO TABELA
--insert into tb_pessoas (nome, sobrenome, idade, cpf) values ('Denise', 'Anjos', 26, '000-999-888-77');

--ALTERANDO DADOS ESPECIFICOS
--update tb_pessoas set nome = 'Deniso' where id = 1;

--DELETANDO DADOS DA TABELA
--delete from tb_pessoas where id = 2;

--LISTAR/LER DADOS
--select * from tb_pessoas;
--select * from tb_pessoas where nome like '%D%' and nome like 'e%';
--select concat(p.nome, ' ', p.sobrenome) as "Nome Completo", idade from tb_pessoas as p where p.nome like '%D%';

--RELACIONANDO TABELAS
--KEYS
--PK = PRIMARY KEY
--FK = RFOREIGN KEY (Chave estrangeira)
--create table tb_endereco(
--	id int primary key generated always as identity,
--	logradouro varchar not null
--);
--
--create table tb_pessoinha(
--	id int primary key generated always as identity,
--	nome varchar(20) not null,
--	sobrenome varchar(20) not null,
--	endereco_id int not null,
--	constraint fk_endereco foreign key(endereco_id) references tb_endereco(id)
--);

--POPULANDO TABELA DE ENDEREÇO
--insert into tb_endereco (logradouro) values ('Endereco teste');

--VISUALIZANDO ID DE ENDEREÇO CRIADO
--select * from tb_endereco;

--POPULANDO TABELA DE PESSOINHAS RELACIONANDO ENDEREÇO
--insert into tb_pessoinha (nome, sobrenome, endereco_id) values ('Deniso', 'B', 1);

--VISUALIZANDO DADOS TABELA PESSOINHA
--select * from tb_pessoinha;

--VISUALIZANDO TABELAS RELACIONADAS
--select * from tb_pessoinha join tb_endereco on tb_endereco.id = tb_pessoinha.endereco_id ;
--select * from tb_pessoinha as p join tb_endereco as e on p.endereco_id  = e.id;

--POSSIVEIS ERROS
--Não é possivel deletar endereço relacionado a pessoa:
--delete from tb_endereco where id = 1;
--Não é possível adicionar um endereço que nao exista:
--insert into tb_pessoinha (nome, sobrenome, endereco_id) values ('Teste', 'Invalido', 8);

--DELETANDO TABELAS
--drop table tb_pessoas;
--drop table tb_pessoinha; 
--drop table tb_endereco;