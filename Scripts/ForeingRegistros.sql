alter table registros_entrada
add column codigo_empleado int

create table empleado(
	codigo_empleados int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint codempl_pk primary key(codigo_empleados)
)

alter table registros_entrada
add constraint codiem_fk foreign key(codigo_empleado)
references empleado(codigo_empleados)

insert into empleado(codigo_empleados,nombre,fecha,hora)
values 
(001,'Jose Andres','23/04/2022','20:00:00')

select * from registros_entrada
select * from empleado

update registros_entrada
set codigo_empleado = 1
where cedula_empleado = '0804514875'



