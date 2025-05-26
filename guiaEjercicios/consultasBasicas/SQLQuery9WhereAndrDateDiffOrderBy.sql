/*
i. Listar todos los pedidos realizados 
entre el 30 de agosto de 1992 y 5 de setiembre de 1992, 
sólo cuando el tipo de pago fue CREDITO, 
y que hayan sido enviadas dentro de los 15 días 
(la diferencia entre fecha de pedido y enviado). Ordenar el resultado por fecha de pedido en forma 
cronológicamente inversa.
*/

SELECT
    *
FROM
    pedido
WHERE
    fecha_pedido BETWEEN '1992-08-30' AND '1992-09-05'
    AND tipo_pago = 'CREDITO'
    AND DATEDIFF(day, fecha_pedido, fecha_enviado) <= 15 -- Para SQL Server/Sybase
ORDER BY
    fecha_pedido DESC;