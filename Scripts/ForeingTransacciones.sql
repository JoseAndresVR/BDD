create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	constraint cb_pk primary key(codigo_banco)

)

alter table banco
add constraint ct_fk foreign key(codigo_transaccion)
references transacciones(codigo)

select * from transacciones

insert into banco(codigo_banco,codigo_transaccion,detalle)
values
(001,3,'Transaccion muy grande'),
(002,5,'Transaccion muy pequeña'),
(003,7,'Transaccion rapida')