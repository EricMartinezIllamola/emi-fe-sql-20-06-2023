USE mydb;
drop table if exists productos;
create table productos(
identificador int unsigned auto_increment,
nombre varchar(40),
descripcion varchar(50),
precio decimal(5,2),
stock float,
primary key (identificador)
);
describe productos;

ALTER TABLE productos ADD descuento decimal(4,2);

ALTER TABLE productos MODIFY COLUMN descuento decimal(6,3);

ALTER TABLE productos DROP COLUMN descuento;

INSERT INTO productos (nombre, descripcion, precio, stock)
VALUES ("zapatos", "zapatos rojos", 50, 5);
SELECT * FROM productos;

UPDATE productos SET precio = 40 WHERE nombre = "zapatos";
SELECT * FROM productos;

SELECT * FROM productos WHERE nombre = "zapatos";
SELECT nombre, precio FROM productos;

DELETE FROM productos WHERE nombre = "zapatos";
SELECT * FROM productos;

DROP TABLE productos;
SHOW TABLES;