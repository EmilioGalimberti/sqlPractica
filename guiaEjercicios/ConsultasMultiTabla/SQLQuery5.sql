/*
d. Muestre el apellido, sueldo, número y nombre de departamento, 
de todos los empleados que trabajen 
en el departamento 44 que además ganen 1000 o más, como así también los empleados del 
departamento 42. 

*/

select e.apellido,
       e.salario,
       e.id as numero_empleado,
       d.id as numero_dpto,
       d.nombre
from empleados e
inner join depto d on e.depto_id = d.id
where
      (d.id = 44 AND e.salario >= 1000)
    OR d.id = 42;

       