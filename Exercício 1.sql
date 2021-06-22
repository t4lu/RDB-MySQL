/*Função: Exercício 1 - World of Generation
 * Autora: Talu - Turma 25
 * Data: 21.06.2021
*/
create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
tipo_poder varchar (255) not null,
poder varchar (255) not null,
primary key (id)
);

insert into tb_classe (tipo_poder, poder) values ("Feiticeira", "Criatividade");
insert into tb_classe (tipo_poder, poder) values ("Mago", "Invisibilidade");
insert into tb_classe (tipo_poder, poder) values ("Soldado do Mago", "Força");
insert into tb_classe (tipo_poder, poder) values ("Raposa", "Supervelocidade");
insert into tb_classe (tipo_poder, poder) values ("Duende", "Banqueiro");

select * from tb_classe;

create table tb_personagens( -- 5 atributos e 8 dados
id bigint auto_increment,
nome varchar (255) not null,
habilidade varchar (255) not null,
ataque bigint not null,
defesa bigint not null,
fk_classe bigint not null,
primary key (id),
foreign key (fk_classe) references tb_classe (id)
);

insert into tb_personagens (nome, habilidade, ataque, defesa, fk_classe) values ("Generatrix", "Estratégia", 5000, 4500, 1);
insert into tb_personagens (nome, habilidade, ataque, defesa, fk_classe) values ("Camargo", "Estratégia", 3000, 4500, 2);
insert into tb_personagens (nome, habilidade, ataque, defesa, fk_classe) values ("Soldadinho", "Física", 5000, 1500, 3);
insert into tb_personagens (nome, habilidade, ataque, defesa, fk_classe) values ("Raposinha", "Corrida", 5000, 4500, 4);
insert into tb_personagens (nome, habilidade, ataque, defesa, fk_classe) values ("Duendinho", "Negociação", 1000, 3500, 1);

select * from tb_personagens;

select * from tb_personagens where  ataque > 2000;
select * from tb_personagens where  defesa between 1000 and 2000;
select * from tb_personagens where nome like "%C%";

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.fk_classe;

select * from tb_personagens where habilidade =  "Negociação";