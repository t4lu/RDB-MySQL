/*Função: Exercício 2 - Pizzaria
 * Autora: Talu - Turma 25
 * Data: 21.06.2021
*/
create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
tamanho varchar(255) not null,
delivery boolean not null,
primary key (id)
); 

insert into tb_categoria (tipo, tamanho, delivery) values ("Carnes", "Grande", true);
insert into tb_categoria (tipo, tamanho, delivery) values ("Carnes", "Média", true);
insert into tb_categoria (tipo, tamanho, delivery) values ("Carnes", "Broto", false);

insert into tb_categoria (tipo, tamanho, delivery) values ("Frutos do Mar", "Grande", true);
insert into tb_categoria (tipo, tamanho, delivery) values ("Frutos do Mar", "Média", true);
insert into tb_categoria (tipo, tamanho, delivery) values ("Frutos do Mar", "Broto", false);

insert into tb_categoria (tipo, tamanho, delivery) values ("Queijos", "Grande", true);
insert into tb_categoria(tipo, tamanho, delivery) values ( "Queijos", "Média", true);
insert into tb_categoria (tipo, tamanho, delivery) values ("Queijos", "Broto", false);

insert into tb_categoria (tipo, tamanho, delivery) values ("Doce", "Grande", true);
insert into tb_categoria (tipo, tamanho, delivery) values ("Doce", "Média", true);
insert into tb_categoria (tipo, tamanho, delivery) values ("Doce", "Broto", false);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
ingredientes varchar(255) not null,
preco decimal (10,2) not null,
categoria_id bigint not null,
bebida  boolean not null,
primary key (id),
foreign key(categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Carne Seca 1", "Carne seca, cebola, rodelas de tomate e muçarela", 75.00, "Grande", false);
insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Carne Seca 1", "Carne seca, cebola, rodelas de tomate e muçarela", 45.00, "Média", false);
insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Carne Seca 1", "Carne seca, cebola, rodelas de tomate e muçarela", 35.00, "Broto", false);

insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Aliche", "Rodelas de tomate, aliche importado e parmesão ralado", 76.00, "Grande", false);
insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Aliche", "Rodelas de tomate, aliche importado e parmesão ralado", 46.00, "Média", false);
insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Aliche", "Rodelas de tomate, aliche importado e parmesão ralado", 36.00, "Broto", false);

insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Quatro Queijos", "Muçarela, catupiry, provolone e parmesão", 80.00, "Grande", false);
insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Quatro Queijos", "Muçarela, catupiry, provolone e parmesão", 70.00, "Média", false);
insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Quatro Queijos", "Muçarela, catupiry, provolone e parmesão", 40.00, "Broto", false);

insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Prestígio", "Chocolate, coco ralado e granulado sabor chocolate", 73.00, "Grande",false);
insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Prestígio", "Chocolate, coco ralado e granulado sabor chocolate", 53.00, "Média", false);
insert into tb_pizza (sabor, ingredientes, preco, categoria_id, bebida) values ("Prestígio", "Chocolate, coco ralado e granulado sabor chocolate", 33.00, "Broto", false);
select * from tb_pizza;

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where sabor like "%C%";

select tb_pizza.sabor, tb_pizza.ingredientes, tb_pizza.preco, tb_categoria.tamanho, tb_pizza.bebida from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.sabor, tb_pizza.ingredientes, tb_pizza.preco, tb_categoria.tamanho, tb_pizza.bebida from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tamanho = "Grande";