/*
. Mostrar, sin repetir, los nombres y apellidos de los vendedores 
que han vendido artículos a clientes de USA o de México 
en Setiembre de 1992.
*/

SELECT DISTINCT
    e.nombre,
    e.apellido
FROM
    empleados e
INNER JOIN
    clientes c ON e.id = c.id_vendedor -- Asumiendo que id en empleados es el id del vendedor
INNER JOIN
    pedido p ON c.id = p.id_cliente
WHERE
    (c.pais = 'USA' OR c.pais = 'Mexico')
    AND p.fecha_pedido BETWEEN '1992-09-01' AND '1992-09-30';