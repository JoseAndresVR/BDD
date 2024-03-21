select * from registros_entrada
select * from empleado

select ct.cedula_empleado,count(ct.codigo_registro)
from registros_entrada ct, empleado us
group by ct.cedula_empleado

select min(ct.fecha) as fecha_minima,max(ct.fecha) as fecha_maxima
from registros_entrada ct, empleado us