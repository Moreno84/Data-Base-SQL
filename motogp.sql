create schema motogp;
use motogp;

create table marcas(
id_marca smallint auto_increment not null primary key,
nombre varchar (50),
fecha_fundacion date,
pais varchar (50) null,
presupuesto integer
);

SELECT * FROM motogp.marcas;
insert into marcas(id_marca,nombre,fecha_fundacion,pais,presupuesto)
values (1,'yamaha','1876-01-01','japan','300000000');
insert into marcas(id_marca,nombre,fecha_fundacion,pais,presupuesto)
values (2,'honda','1890-02-01','japan','400000000');
insert into marcas(id_marca,nombre,fecha_fundacion,pais,presupuesto)
values (3,'aprilia','1990-08-07','italia','1000000000');
insert into marcas(id_marca,nombre,fecha_fundacion,pais,presupuesto)
values (4,'suzuki','1876-01-01','japan','5000000');
insert into marcas(id_marca,nombre,fecha_fundacion,pais,presupuesto)
values (5,'ducati','1901-04-03','italia','100000000');

create table pilotos(
id_dorsal smallint auto_increment not null primary key,
nombre varchar (50),
apellido varchar (50),
pais varchar (50),
fecha_nacimiento date,
peso smallint,
altura smallint,
numero_victorias smallint,
numero_podios smallint,
numero_campeonatos smallint,
id_marca1 smallint,
id_pais1 smallint,
constraint fk_marcas_pilotos foreign key (id_marca1) references marcas (id_marca),
constraint fk_pilotos_paises foreign key (id_pais1) references paises (id_pais)
);

SELECT * FROM motogp.pilotos;
insert into pilotos(id_dorsal,nombre,apellido,pais,fecha_nacimiento,peso,altura,numero_victorias,numero_podios,numero_campeonatos,id_marca1,id_pais1)
values(6,'stephan','bradl','alemania','1989/11/29','63','170','0','1','0','3','1');
insert into pilotos(id_dorsal,nombre,apellido,pais,fecha_nacimiento,peso,altura,numero_victorias,numero_podios,numero_campeonatos,id_marca1,id_pais1)
values(19,'alvaro','bautista','españa','1984/11/21','60','169','0','3','0','3','2');
insert into pilotos(id_dorsal,nombre,apellido,pais,fecha_nacimiento,peso,altura,numero_victorias,numero_podios,numero_campeonatos,id_marca1,id_pais1)
values(26,'dani','pedrosa','españa','1985/09/29','51','160','26','96','0','2','2');
insert into pilotos(id_dorsal,nombre,apellido,pais,fecha_nacimiento,peso,altura,numero_victorias,numero_podios,numero_campeonatos,id_marca1,id_pais1)
values(46,'valentino','rossi','italia','1979/02/16','65','182','86','172','7','1','3');
insert into pilotos(id_dorsal,nombre,apellido,pais,fecha_nacimiento,peso,altura,numero_victorias,numero_podios,numero_campeonatos,id_marca1,id_pais1)
values(93,'marc','marquez','españa','1993/02/17','59','168','23','37','3','2','2');
insert into pilotos(id_dorsal,nombre,apellido,pais,fecha_nacimiento,peso,altura,numero_victorias,numero_podios,numero_campeonatos,id_marca1,id_pais1)
values(99,'jorge','lorenzo','españa','1987/05/04','64','173','38','92','3','1','2');
insert into pilotos(id_dorsal,nombre,apellido,pais,fecha_nacimiento,peso,altura,numero_victorias,numero_podios,numero_campeonatos,id_marca1,id_pais1)
values(4,'andrea','dovicioso','italia','1986/03/23','68','175','6','39','0','1','3');

create table paises(
id_pais smallint auto_increment not null primary key,
nombre varchar (50),
numero_habitantes integer,
circuitos_mundial smallint,
capital varchar (50)
);

select * from paises;
insert into paises (id_pais,nombre,numero_habitantes,circuitos_mundial,capital)
values (1,'alemania','83','1','berlin');
insert into paises (id_pais,nombre,numero_habitantes,circuitos_mundial,capital)
values (2,'españa','47','4','madrid');
insert into paises (id_pais,nombre,numero_habitantes,circuitos_mundial,capital)
values (3,'italia','60','2','roma');

