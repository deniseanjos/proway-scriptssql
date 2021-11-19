-- DB - DTL - APT45

begin transaction;

insert into tb_pais(nome, sigla) values ('Brasilandia', 'BR');

insert into tb_estado(nome, sigla, pais_id) values ('Sao Paulão', 'SP', 1);
insert into tb_estado(nome, sigla, pais_id) values ('Bahia', 'BA', 1);
insert into tb_estado(nome, sigla, pais_id) values ('Amazonas', 'SP', 1);

insert into tb_cidade(nome, estado_id) values ('SBC', 2);
insert into tb_cidade(nome, estado_id) values ('Grajaucity', 2);
insert into tb_cidade(nome, estado_id) values ('Salvador', 3);
insert into tb_cidade(nome, estado_id) values ('Nova Soure', 3);
insert into tb_cidade(nome, estado_id) values ('Manaus', 4);
insert into tb_cidade(nome, estado_id) values ('Parintins', 4);

commit;
end;

select * from tb_cidade;
select * from tb_estado;
select * from tb_pais;

select c.nome as "Cidade", e.sigla as "Estado", p.nome as "Pais" from tb_cidade as c join tb_estado as e on c.estado_id = e.id join tb_pais as p on e.pais_id = p.id;