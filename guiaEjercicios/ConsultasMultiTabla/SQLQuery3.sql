--b. Mostrar el número de departamento, número y nombre de región para todos los departamentos. 

select d.id as numero_dpto,
       r.id as numero_region,
       r.name as nombre_region
from depto d
inner join region r on d.id_region = r.id