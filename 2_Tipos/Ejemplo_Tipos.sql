SHOW databases;
USE mydb;
SHOW tables;
SELECT * FROM libros;
DROP table usuarios;
create table usuarios (
nombre varchar(20),
clave varchar(10),
primary key(nombre)
);
describe usuarios;
insert into usuarios (nombre, clave)
values ('Leonardo','payaso');
insert into usuarios (nombre, clave)
values ('MarioPerez','Mario');
insert into usuarios (nombre, clave)
values ('Marcelo','River');
insert into usuarios (nombre, clave)
values ('Gustavo','River');
SELECT * FROM usuarios;

create table vehiculos(
matricula char(6) not null,
tipo char(4),
horallegada time not null,
horasalida time,
primary key(matricula,horallegada)
);
describe vehiculos;
alter table vehiculos drop horallegada;

DROP TABLE libros;
create table libros(
codigo int auto_increment,
titulo varchar(50),
autor varchar(50),
editorial varchar(25),
primary key (codigo)
);
describe libros;
insert into libros (titulo,autor,editorial)
values('El aleph','Borges','Planeta');
SELECT * FROM libros;
insert into libros (titulo,autor,editorial)
values('Libro', null, null);
SELECT * FROM libros WHERE autor is null;
SELECT * FROM libros WHERE autor is not null;
ALTER TABLE libros ADD precio float unsigned;
describe libros;
ALTER TABLE libros ADD stock int default 0;

drop table if exists libros;
create table libros(
codigo int unsigned auto_increment,
titulo varchar(40) not null,
autor varchar(30),
editorial varchar(15),
precio decimal(5,2) unsigned,
cantidad smallint unsigned,
primary key (codigo)
);
describe libros;
insert into libros (titulo,autor,editorial,precio,cantidad)
values('El aleph','Borges','Planeta',15,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Antologia poetica','Borges','Planeta',40,150);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Aprenda PHP','Mario Molina','Emece',18.20,200);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Cervantes y el quijote','Borges','Paidos',36.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Manual de PHP', 'J.C. Paez', 'Paidos',30.80,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Harry Potter y la piedra filosofal','J.K. Rowling','Paidos',45.00,500);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Harry Potter y la camara secreta','J.K. Rowling','Paidos',46.00,300);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',null,50);
SELECT * FROM libros;
SELECT titulo, precio, precio*cantidad AS "ImporteTotal", precio-(precio*0.1) AS "PrecioDescuento" FROM libros;