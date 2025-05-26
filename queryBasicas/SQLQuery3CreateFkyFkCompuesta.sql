create table Detalle(
tipo varchar(30),
nro_factura integer,
id_producto integer,
precio_venta decimal(10,2),
cantidad int,
constraint pk_detalle primary key(tipo,nro_factura,id_producto),
constraint fk_detalle_producto foreign key references Producto(id_producto),
constraint fk_detalle_factura foreign key references Factura(tipo,nro_factura),)