--DB - DML - ATP42

insert into tb_categoria (nome) values ('Eletronicos'); -- ID: 1
insert into tb_categoria (nome) values ('Moveis'); -- ID: 2
insert into tb_categoria (nome, descricao) values ('Eletrodomesticos', 'Produtos variados'); -- ID: 3

insert into tb_produto (nome, descricao, preco, categoria_id) values ('Celular', 'Smartphone', 3456.00, 1);
insert into tb_produto (nome, descricao, preco, categoria_id) values ('Sofa', '3 lugares', 6534, 2);
insert into tb_produto (nome, descricao, preco, categoria_id) values ('Geladeira', 'Frost free', 7456.00, 3);
insert into tb_produto (nome, descricao, preco, categoria_id) values ('Mesa', '8 lugares', 1236.00, 2);
insert into tb_produto (nome, descricao, preco, categoria_id) values ('Fogão', '4 bocas', 956.00, 3);
insert into tb_produto (nome, descricao, preco, categoria_id) values ('Notebook', 'Dell Intel Core', 8456.00, 1);

update tb_produto set descricao = 'Smartphone MotoOne' where id = 1;

update tb_produto set descricao = 'Mesa 8 lugares sem cadeiras' where id = 5;

delete from tb_produto where id = 4;
delete from tb_produto where id = 6;
delete from tb_categoria where id = 3;

update tb_produto set categoria_id = 1 where id = 5;

update tb_produto set preco = preco-1 where preco > 1;