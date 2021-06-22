/*Função: Exercício 3 - Farmácia
 * Autora: Talu - Turma 25
 * Data: 21.06.2021
*/
create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias(
id bigint auto_increment,
tipo varchar (255) not null,
estoque bigint,
primary key (id)
);

insert into tb_categorias (tipo, estoque) values ("Medicamento", 300);
insert into tb_categorias (tipo, estoque) values ("Cosmético", 549);
insert into tb_categorias (tipo, estoque) values ( "Dermatologia", 684);
insert into tb_categorias (tipo, estoque) values ( "Higiene", 267);
insert into tb_categorias (tipo, estoque) values ( "Bebê", 563);

select * from tb_categorias;

create table tb_produtos (
id_produtos bigint auto_increment,
nome varchar (255)  not null,
qtd bigint, -- no carrinho do cliente!
valor decimal (5,2) not null,
entrega boolean not null, -- entrega grátis > 50.00
categoria_fk bigint, 
primary key (id_produtos),
foreign key(categoria_fk) references tb_categorias (id)
);

insert into tb_produtos (nome, qtd, valor, entrega, categoria_fk) values ("Aspirina", 2, 5.00, false,1);
insert into tb_produtos (nome, qtd, valor, entrega, categoria_fk) values ("Tonalizante Cor & Tom",9, 75.00, true, 2);
insert into tb_produtos (nome, qtd, valor, entrega, categoria_fk) values ("Protetor Solar FPS 30", 4, 60.00, true, 3);
insert into tb_produtos (nome, qtd, valor, entrega, categoria_fk) values ("Sabonete Líquido - 300 ml", 2, 50.00, true, 4);
insert into tb_produtos (nome, qtd, valor, entrega, categoria_fk) values ("Lenço Umidecido",1, 12.00, false, 5);

select * from tb_produtos;

select * from tb_produtos where valor > 50;
select * from tb_produtos where valor between 3 and 60;
select * from tb_produtos where nome like "%B%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_fk;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_fk where tipo =  "Higiene";