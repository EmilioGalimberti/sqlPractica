/*
l. Mostrar el id, el nombre y la dirección de los clientes de USA y que 
tienen como vendedor al de id 11. Ordenar por nombre inversamente según el alfabeto.
*/
select id, nombre , direccion from clientes
where pais = 'usa' and id_vendedor = 11
order by nombre desc