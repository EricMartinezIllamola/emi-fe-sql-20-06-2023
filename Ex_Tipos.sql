USE mydb;
drop table if exists productos;
CREATE TABLE productos(
ID int unsigned auto_increment,
Nombre varchar(50),
Descripcion text,
Precio decimal(5,2),
Stock int,
FechaLanzamiento date,
Activo bool,
Categoria varchar(50),
Imagen blob,
Peso decimal(5,2),
Estado enum("Disponible","Agotado", "En espera"),
primary key(ID)
);
describe productos;