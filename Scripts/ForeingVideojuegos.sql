create table plataformas(
	id_plataforma int,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
	constraint ids_pk primary key(id_plataforma)
)

select * from videojuegos

alter table plataformas
add constraint cod_fk foreign key(codigo_videojuego)
references videojuegos(codigo)

insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values 
(147,'Epic',5),
(257,'Games',2),
(577,'WarZon',1),
(748,'Zome',8)