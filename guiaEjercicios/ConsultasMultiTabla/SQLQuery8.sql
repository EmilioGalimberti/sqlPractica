/*
g. Listar los ítems (todos los datos) cuya cantidad enviada mayor o igual a 500, 
junto con la fecha en la que fueron pedidos, y el nombre del vendedor. 
Ordenar por nro. de pedido, y nro. de ítem de pedido.
*/

SELECT
    i.*, -- Selecciona todas las columnas de la tabla 'item'
    p.fecha_pedido,
    e.nombre AS nombre_vendedor,
    e.apellido AS apellido_vendedor
FROM
    item i
INNER JOIN
    pedido p ON i.ord_id = p.id
INNER JOIN
    clientes c ON p.id_cliente = c.id
INNER JOIN
    empleados e ON c.id_vendedor = e.id -- Asumiendo que el id en empleados es el id del vendedor
WHERE
    i.cantidad_enviada >= 500
ORDER BY
    i.ord_id, i.item_id;