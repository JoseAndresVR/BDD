create table profesores(
	codigo int,
	nombre varchar(50) not null,
	constraint codigo_pk primary key(codigo)
)

alter table estudiantes
add column codigo_profesor int

alter table estudiantes
add constraint cp_fk foreign key(codigo_profesor)
references profesores(codigo)

insert into profesores(codigo,nombre)
values(001,'Jose'),
(002,'Andres'),
(003,'Carlos'),
(004,'Violeta'),
(005,'Elizabeth')

select * from estudiantes


UPDATE estudiantes
SET codigo_profesor = 002
WHERE cedula = '3456789012'

