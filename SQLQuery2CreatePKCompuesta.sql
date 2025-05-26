create table factura(
nro_factura integer,
tipoFactura varchar(30) not null,
fecha datetime,
constraint pk_factura primary key(nro_factura,tipoFactura)
)