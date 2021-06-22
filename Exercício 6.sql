/*Função: Exercício 6 - Cursos Online
 * Autora: Talu - Turma 25
 * Data: 21.06.2021
*/
create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (255) not null,
ead boolean not null,
primary key (id)
);

insert into tb_categoria (tipo, ead) values ("Idioma", true);
insert into tb_categoria (tipo, ead) values ("Gestão", true);
insert into tb_categoria (tipo, ead) values ("Técnico", true);
insert into tb_categoria (tipo, ead) values ("Profissionalizante", true);
insert into tb_categoria (tipo, ead) values ("Livre", true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
vagas int not null,
preco decimal (10,2) not null,
fk_categoria bigint not null,
primary key (id),
foreign key (fk_categoria) references tb_categoria (id)
);

insert into tb_produtos (nome, vagas, preco, fk_categoria) values ("Francês", 20, 650.00, 1);
insert into tb_produtos (nome, vagas, preco, fk_categoria) values ("Dança", 32, 985.00, 5);
insert into tb_produtos (nome, vagas, preco, fk_categoria) values ("Programação com Python", 50, 3500,3);
insert into tb_produtos (nome, vagas, preco, fk_categoria) values ("Programação com Java", 15, 2500.00, 3);
insert into tb_produtos (nome, vagas, preco, fk_categoria) values ("Culinária Vegana", 5, 800.00, 5);
insert into tb_produtos (nome, vagas, preco, fk_categoria) values ("Gestão de Tempo Pessoal", 30, 250.00, 2);
insert into tb_produtos (nome, vagas, preco, fk_categoria) values ("Literatura Inglesa", 60, 789.90, 5 );
insert into tb_produtos (nome, vagas, preco, fk_categoria) values ("Manicure e Pedicure", 10, 560.00, 4);

select * from tb_produtos;

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco between 200 and 600;
select * from tb_produtos where nome like "%J%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria where fk_categoria = 5;