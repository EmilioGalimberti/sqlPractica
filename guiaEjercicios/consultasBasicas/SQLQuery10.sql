--j. ¿Cuál es el empleado que no tiene jefe? Muestre todos sus datos.
SELECT
    *
FROM
    empleados
WHERE
    id_jefe IS NULL;