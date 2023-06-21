CREATE DATABASE mydb;
USE mydb;
SHOW TABLES;
CREATE TABLE usuarios(
nombre varchar(30),
clave varchar(30)
);
DROP TABLE usuarios;
INSERT INTO usuarios (nombre, clave) VALUES ("Mario Perez", "Mario");
SELECT * FROM usuarios;
CREATE TABLE libros (
titulo varchar(40),
autor varchar(20),
editorial varchar(15),
precio float,
cantidad integer
);
drop table if exists libros;
create table libros(
codigo int unsigned auto_increment,
titulo varchar(40) not null,
autor varchar(30),
editorial varchar(15),
precio decimal(5,2) unsigned,
primary key (codigo)
);
insert into libros (titulo,autor,editorial,precio)
values('El aleph','Borges','Planeta',15);
insert into libros (titulo,autor,editorial,precio)
values('Martin Fierro','Jose Hernandez','Emece',22.20);
insert into libros (titulo,autor,editorial,precio)
values('Antologia poetica','Borges','Planeta',40);
insert into libros (titulo,autor,editorial,precio)
values('Aprenda PHP','Mario Molina','Emece',18.20);
insert into libros (titulo,autor,editorial,precio)
values('Cervantes y el quijote','Borges','Paidos',36.40);
insert into libros (titulo,autor,editorial,precio)
values('Manual de PHP', 'J.C. Paez', 'Paidos',30.80);
insert into libros (titulo,autor,editorial,precio)
values('Harry Potter y la piedra filosofal','J.K. Rowling','Paidos',45.00);
insert into libros (titulo,autor,editorial,precio)
values('Harry Potter y la camara secreta','J.K. Rowling','Paidos',46.00);
insert into libros (titulo,autor,editorial,precio)
values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',null);
SELECT * FROM libros;
SELECT titulo, autor FROM libros;
SELECT * FROM libros LIMIT 5;
SELECT * FROM libros LIMIT 0, 5;
SELECT * FROM libros LIMIT 0, 2;
SELECT * FROM libros LIMIT 5, 2;
SELECT * FROM libros WHERE editorial = "Planeta" AND titulo = "El aleph";
DELETE FROM libros WHERE codigo = 1;
SELECT * FROM libros;

ALTER TABLE libros ADD isbn varchar(20);
describe libros;
ALTER TABLE libros DROP COLUMN isbn;
ALTER TABLE libros RENAME COLUMN precio TO coste;
ALTER TABLE libros MODIFY COLUMN editorial varchar(30);

SELECT * FROM libros;
SELECT * FROM libros WHERE autor = "Borges";
UPDATE libros SET autor = "Luis Borges" WHERE autor = "Borges";