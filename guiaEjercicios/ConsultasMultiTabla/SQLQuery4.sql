/*
c. Mostrar el apellido, nombre de la regi�n y porcentaje de comisi�n para todos los empleados que 
ganan una comisi�n.
*/

SELECT
    e.apellido,
    r.name AS nombre_region,
    e.porcent_comision AS porcentaje_comision
FROM
    empleados e
INNER JOIN
    depto d ON e.depto_id = d.id
INNER JOIN
    region r ON d.id_region = r.id
WHERE
    e.porcent_comision IS NOT NULL AND e.porcent_comision > 0;

    /*
    Explicaci�n:

Aqu� necesitamos tres tablas: 
empleados para el apellido y la comisi�n, 
depto para conectar empleados con region, 
y region para el nombre de la regi�n.

INNER JOIN depto d ON e.id_depto = d.id: Primero unimos empleados con departamentos.

INNER JOIN region r ON d.id_region = r.id: Luego unimos el resultado con regiones.

WHERE e.percent_commision IS NOT NULL AND e.percent_commision > 0: Filtra para incluir solo los empleados que realmente tienen un porcentaje de comisi�n asignado y es mayor que cero (asumiendo que una comisi�n de 0 no se considera "ganar una comisi�n").
    */