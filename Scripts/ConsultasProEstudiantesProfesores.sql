select * from estudiantes
select * from profesores

select ct.codigo_profesor,count(ct.cedula) 
from estudiantes ct, profesores us
group by ct.codigo_profesor

select round(AVG(extract(year from current_date)-extract(year from ct.fecha_nacimiento) ))as edad_promedio
from estudiantes ct, profesores us



