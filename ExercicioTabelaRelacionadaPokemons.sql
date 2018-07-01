drop table pokemons;
drop table categorias;
drop table fraquezas;

create table categorias(
	id int identity(1,3),
	nome	varchar(100) not null,
	primary key (id)
);

create table fraquezas(
	id		int identity(1,3),
	nome	varchar(100) not null,
	primary key (id)
);


create table pokemons(
	id				int identity(1,3) primary key,
	id_categoria	int,
	id_fraqueza1	int,
	id_fraqueza2	int,
	nome			VARCHAR(100) NOT NULL,
	foreign key (id_categoria) references categorias(id),
	foreign key (id_fraqueza1) references fraquezas(id),
	foreign key (id_fraqueza2) references fraquezas(id)
);

insert into categorias (nome) values ('Fox');
insert into categorias (nome) values ('Gas');
insert into categorias (nome) values ('Sun');
insert into categorias (nome) values ('Moonlight');
insert into categorias (nome) values ('Face');
insert into categorias (nome) values ('Magical');
insert into categorias (nome) values ('Karate');
insert into categorias (nome) values ('Coffin');
insert into categorias (nome) values ('Illusion fox');
insert into categorias (nome) values ('Prism');

insert into fraquezas (nome) values ('Water');
insert into fraquezas (nome) values ('Ground');
insert into fraquezas (nome) VALUES ('Dark');
insert into fraquezas (nome) values ('Psychic');
insert into fraquezas (nome) values ('Bug');
insert into fraquezas (nome) VALUES ('Ghost');
insert into fraquezas (nome) values ('Fairy');
insert into fraquezas (nome) values ('Fighting');
insert into fraquezas (nome) VALUES ('Steel');
insert into fraquezas (nome) values ('Rock');
insert into fraquezas (nome) values ('Flaying');

INSERT INTO pokemons (id_categoria, id_fraqueza1, id_fraqueza2, nome) VALUES 
((SELECT id FROM categorias WHERE nome = 'Fox'), 
(SELECT id FROM fraquezas WHERE nome = 'Water'), 
(SELECT id FROM fraquezas WHERE nome = 'Ground'), 'Ninetales'),

((SELECT id FROM categorias WHERE nome = 'Gas'),
(SELECT id FROM fraquezas WHERE nome = 'Dark'),
(SELECT id FROM fraquezas WHERE nome = 'Psychic'), 'Gastly'),

((SELECT id FROM categorias WHERE nome = 'Sun'),
(SELECT id FROM fraquezas WHERE nome = 'Bug'),
(SELECT id FROM fraquezas WHERE nome = 'Ghost'), 'Espeon'),

((SELECT id FROM categorias WHERE nome = 'Moonlight'),
(SELECT id FROM fraquezas WHERE nome = 'Fairy'),
(SELECT id FROM fraquezas WHERE nome = 'Fighting'), 'Umbreon'),

((SELECT id FROM categorias WHERE nome = 'Face'),
(SELECT id FROM fraquezas WHERE nome = 'Steel'),
(SELECT id FROM fraquezas WHERE nome = 'Rock'), 'Glalie'),

((SELECT id FROM categorias WHERE nome = 'Magical'),
(SELECT id FROM fraquezas WHERE nome = 'Dark'),
(SELECT id FROM fraquezas WHERE nome = 'Ghost'), 'Mismagius'),

((SELECT id FROM categorias WHERE nome = 'Karate'),
(SELECT id FROM fraquezas WHERE nome = 'Flaying'),
(SELECT id FROM fraquezas WHERE nome = 'Psychic'), 'Sawk'),

((SELECT id FROM categorias WHERE nome = 'Coffin'),
(SELECT id FROM fraquezas WHERE nome = 'Ghost'),
(SELECT id FROM fraquezas WHERE nome = 'Dark'), 'Cofagrigus'),

((SELECT id FROM categorias WHERE nome = 'Illusion Fox'),
(SELECT id FROM fraquezas WHERE nome = 'Fighting'),
(SELECT id FROM fraquezas WHERE nome = 'Bug'), 'Zoroark'),

((SELECT id FROM categorias WHERE nome = 'Prism'),
(SELECT id FROM fraquezas WHERE nome = 'Ghost'),
(SELECT id FROM fraquezas WHERE nome = 'Dark'), 'Necrozma');




SELECT id'ID', nome'Nome', id_categoria'Categoria', id_fraqueza1'Fraqueza 1', id_fraqueza2'Fraqueza 2' FROM pokemons;
SELECT * FROM categorias;
SELECT * FROM fraquezas;
