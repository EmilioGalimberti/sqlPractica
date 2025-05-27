/*
e. Mostrar el nombre y n�mero de empleado y el n�mero y nombre del jefe que le corresponde, a cada 
uno de los empleados. Incluir los empleados sin jefe. 
*/

SELECT
    e.id AS id_empleado,
    e.nombre AS nombre_empleado,
    e.apellido AS apellido_empleado,
    j.id AS id_jefe,
    j.nombre AS nombre_jefe,
    j.apellido AS apellido_jefe
FROM
    empleados e
left JOIN
    empleados j ON e.id_jefe = j.id;

    /*
    xplicaci�n:

LEFT JOIN empleados j ON e.id_jefe = j.id: 
Aqu� se realiza un LEFT JOIN de la tabla empleados consigo misma (auto-uni�n).


La uni�n se hace cuando el id_jefe del empleado (e.id_jefe) coincide con el id del posible jefe (j.id).
LEFT JOIN se usa para asegurar que todos los empleados (e) se incluyan en el resultado, 
incluso si su id_jefe es NULL (lo que significa que no tienen jefe). Para esos empleados, 
las columnas del jefe (j.id, j.nombre, j.apellido) aparecer�n como NULL.
    */