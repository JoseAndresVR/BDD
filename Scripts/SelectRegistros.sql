select cedula_empleado,fecha,hora from registros_entrada;
select * from registros_entrada where hora >= '7:00' and hora <= '14:00';
select * from registros_entrada where hora > '8:00'