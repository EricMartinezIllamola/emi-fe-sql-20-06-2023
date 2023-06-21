USE mydb;
drop table if exists fabricantes, articulos;
create table fabricantes(
Codigo int auto_increment,
Nombre varchar(100),
primary key(Codigo)
);
create table articulos(
Codigo int auto_increment,
Nombre varchar(100),
Precio int,
Fabricante int,
primary key (Codigo),
foreign key (Fabricante) REFERENCES fabricantes(Codigo)
);
describe fabricantes;
describe articulos;

insert into fabricantes values(1,'Fabricante 1');
insert into fabricantes values(2,'Fabricante 2');
insert into fabricantes values(3,'Fabricante 3');
insert into fabricantes values(4,'Fabricante 4');
insert into fabricantes values(5,'Fabricante 5');
SELECT * FROM fabricantes;

insert into articulos values(1, "Articulo 1", "25" , 3);
insert into articulos values(2, "Articulo 2", "10" , 1);
insert into articulos values(3, "Articulo 3", "15" , 4);
insert into articulos values(4, "Articulo 4", "60" , 2);
insert into articulos values(5, "Articulo 5", "200" , 1);
insert into articulos values(6, "Articulo 6", "120" , 3);
insert into articulos values(7, "Articulo 7", "70" , 5);
insert into articulos values(8, "Articulo 8", "90" , 4);
insert into articulos values(9, "Articulo 9", "20" , 5);
insert into articulos values(10, "Articulo 10", "75" , 2);
insert into articulos values(11, "Articulo 11", "200" , 4);
insert into articulos values(12, "Articulo 12", "280" , 1);
SELECT * FROM articulos;

SELECT Nombre FROM articulos;

SELECT Nombre, Precio FROM articulos;

SELECT Nombre FROM articulos WHERE Precio <= 20;

SELECT * FROM articulos WHERE Precio BETWEEN 60 AND 120;

SELECT Nombre, (Precio*166.386) AS Precio_Total FROM articulos;

SELECT AVG(Precio) FROM articulos;

SELECT AVG(Precio) FROM articulos WHERE Fabricante = 2;

SELECT COUNT(Precio) FROM articulos WHERE Precio >= 180;

SELECT Nombre, Precio FROM articulos WHERE Precio >= 180 ORDER BY Precio DESC, Nombre ASC;

SELECT * FROM articulos AS a JOIN fabricantes AS f ON a.fabricante = f.codigo;

SELECT a.Nombre, a.Precio, f.Nombre FROM articulos AS a JOIN fabricantes AS f ON a.fabricante = f.codigo;

SELECT Fabricante, AVG(Precio) AS Precio_Medio FROM articulos GROUP BY Fabricante; 

SELECT f.Nombre, AVG(a.Precio) AS Precio_Medio FROM articulos AS a JOIN fabricantes AS f ON a.fabricante = f.codigo GROUP BY f.Nombre;

SELECT f.Nombre, AVG(a.Precio) AS Precio_Medio FROM articulos AS a JOIN fabricantes AS f ON a.fabricante = f.codigo GROUP BY f.Nombre HAVING AVG(a.Precio) >= 150;

SELECT Nombre, Precio FROM articulos ORDER BY Precio LIMIT 1;

SELECT f.Nombre, MAX(a.Precio) AS Precio_Mas_Caro FROM articulos AS a JOIN fabricantes AS f ON a.fabricante = f.codigo GROUP BY f.Nombre ORDER BY MAX(a.Precio) DESC;

insert into articulos values(13, "Altavoces", "70" , 2);

UPDATE articulos SET Nombre = "Impresora Laser" WHERE Codigo = 8;

SELECT Nombre, Precio, (Precio*0.9) AS Precio_Rebajado FROM articulos;

SELECT Nombre, Precio, IF (Precio >= 120, (Precio-10), Precio) AS Precio_Rebajado FROM articulos;

DELETE FROM articulos WHERE Codigo = 6;