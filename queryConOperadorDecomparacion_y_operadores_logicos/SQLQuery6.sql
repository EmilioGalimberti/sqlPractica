/*
12) Consultas con operadores de comparación y operadores lógicos
a. Muestre Nombre, Apellido y fecha de ingreso de los empleados 
cuya fecha de ingreso este entre 9-5-1991 y 17-6-1991, inclusive.
*/
SELECT
    nombre,
    apellido,
    fecha_ingreso
FROM
    empleados
WHERE
    fecha_ingreso >= '1991-05-09' AND fecha_ingreso <= '1991-06-17';