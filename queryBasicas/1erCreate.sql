create table Producto(
id_product integer,
nombre varchar(30) not null,
precio_lista decimal(10,2),
constraint pk_producto primary key(id_product)
)