/*e. Seleccione todos los nombres de los departamentos que contengan en el nombre una letra “O” 
(mayúscula). No mostrar filas duplicadas. 
*/
select distinct nombre from depto where nombre like '%o%'