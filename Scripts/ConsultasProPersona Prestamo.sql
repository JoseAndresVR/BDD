select * from personas
select * from prestamo

select ct.cedula,SUM(us.monto) as total_prestamos
from personas ct, prestamo us
group by ct.cedula

select count(ct.cedula) as total_personas
from personas ct, prestamo us
where ct.numero_hijos > 1


