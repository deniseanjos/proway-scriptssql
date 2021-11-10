-- DB - DQL - ATP43

select * from tb_categoria;

select * from tb_produto;

select * from tb_categoria where descricao != '';

select id, nome, preco from tb_produto where nome like 'C%';

select p.id, p.nome, p.preco from tb_produto as p join tb_categoria as c on p.categoria_id = c.id where p.preco > 0;

select * from tb_produto where categoria_id > 2;

select c.id, c.nome, c.descricao, p.nome from tb_categoria as c join tb_produto as p on c.id = p.categoria_id;