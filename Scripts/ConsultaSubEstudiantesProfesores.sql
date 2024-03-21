select * from estudiantes
select * from profesores

select ct.codigo,us.nombre,us.apellido from
estudiantes us, profesores ct
where us.apellido like'%n%'
and ct.nombre = 'Andres'


