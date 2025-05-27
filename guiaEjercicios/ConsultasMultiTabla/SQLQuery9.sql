/*
h. Mostrar todos los datos de los productos 
que se encuentran en un 90% o más de su cantidad máxima  en stock, en los almacenes de Brasil. 
*/

SELECT
    prod.*
FROM
    producto prod
INNER JOIN
    inventario inv ON prod.id = inv.id_producto
INNER JOIN
    almacenes a ON inv.id_almacenes = a.id
WHERE
    a.pais = 'Brasil'
    AND inv.cant_en_stock >= (inv.max_en_stock * 0.90); 
    -- O si cantidad_max_stock está en inventario: AND inv.cantidad >= (inv.cantidad_max_stock * 0.90)