--h. Mostrar los empleados cuyo nombre comience en "C" y que en su tercera letra sea una "r".

SELECT
    nombre
FROM
    empleados
WHERE
    nombre LIKE 'C_r%';