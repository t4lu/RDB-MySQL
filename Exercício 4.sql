/*Função: Exercício 4 - Quitanda
 * Autora: Talu - Turma 25
 * Data: 21.06.2021
*/
create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (255) not null,
organico boolean not null,
industrializado boolean not null,
primary key (id) 
);

insert into tb_categoria (tipo, organico, industrializado) values ("Fruta", true, false);
insert into tb_categoria (tipo, organico, industrializado) values ("Fruta", false, true);

insert into tb_categoria (tipo, organico, industrializado) values ("Vegetal", true, false);
insert into tb_categoria (tipo, organico, industrializado) values ("Vegetal", false, true);

insert into tb_categoria (tipo, organico, industrializado) values ("Legume", true, false);
insert into tb_categoria (tipo, organico, industrializado) values ("Legume", false, true);

select*from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
qtd int not null,
fk_categoria bigint,
preco decimal (10,2),
primary key (id),
foreign key(fk_categoria) references tb_categoria (id)
);

insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Morango", "3", 1, 20.00);
insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Pêssego em Conserva", "2", 2, 25.00);

insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Brócolis", "6", 3, 45.00);
insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Alface Crespa", "10", 4, 5.00);

insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Tomate", "1", 5, 6.00);
insert into tb_produtos (nome, qtd, fk_categoria, preco) values ("Snack de Semente de Abóbora", "3", 6, 35.00);

select * from tb_produtos;

select * from tb_produtos where preco >= 30;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria where organico =  true;