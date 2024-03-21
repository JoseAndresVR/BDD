select * from registros_entrada
select * from empleado

select us.cedula_empleado,us.fecha,ct.nombre from
registros_entrada us, empleado ct
where us.fecha between '2024/03/11' and '2024/03/20' or us.cedula_empleado like '17%' and us.hora between '08:00' and '12:00' or ct.fecha = '2024/04/23' and us.cedula_empleado like '08%' and us.hora between '09:00' and '13:00' 
and us.cedula_empleado like '%2201%'