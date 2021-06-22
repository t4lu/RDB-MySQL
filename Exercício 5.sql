/*Função: Exercício 5 - Loja Materiais de Construção
 * Autora: Talu - Turma 25
 * Data: 21.06.2021
*/
create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (255) not null,
material boolean not null,
equipamento boolean not null,
primary key (id) 
);

insert into tb_categoria (tipo, material, equipamento) values ("Madeira", true, false);
insert into tb_categoria (tipo, material, equipamento) values ("Madeira", false, true);

insert into tb_categoria (tipo, material, equipamento) values ("Metal", true, false);
insert into tb_categoria (tipo, material, equipamento) values ("Metal", false, true);

insert into tb_categoria (tipo, material, equipamento) values ("Plástico", true, false);
insert into tb_categoria (tipo, material, equipamento) values ("Plástico", false, true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
qtd int not null,
fk_categoria bigint,
preco decimal (10,2),
primary key (id),
foreign key(fk_categoria) references tb_categoria (id)
);

insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Tábua", 4, 1, 420.00);
insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Pincel", 25, 2, 47.00);

insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Grade", 20, 3, 620.00);
insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Barra de Metal", 10, 3, 230.00);

insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Lona", 1, 4, 23.50);
insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Caixa D'Água", 5, 3, 720.00);

select * from tb_produtos;

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria where equipamento = true;