/*
13) Consultas multitablas
a. Combinar las 
tablas de empleados y departamentos con el fin de visualizar 
el nombre del empleado, n�mero y nombre del departamento.
*/

SELECT
    e.nombre AS nombre_empleado,
    d.id AS numero_departamento,
    d.nombre AS nombre_departamento
FROM
    empleados e
INNER JOIN
    depto d ON e.depto_id = d.id;

    /*
    INNER JOIN depto d ON e.depto_id = d.id;
    Une las tablas empleados (alias e) y depto (alias d) 
    bas�ndose en la coincidencia de id_depto en empleados y id en depto. 
    
    Solo se mostrar�n los empleados que tienen un departamento asignado que existe en la tabla depto.
    */