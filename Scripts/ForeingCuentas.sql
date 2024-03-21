create table usuario(
	cedula char(5) not null,
	nombre varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint cedula_pk primary key(cedula)
)

select * from usuario

select * from cuentas

delete from cuentas

alter table cuentas
add constraint cedula_fk foreign key(cedula_propietario)
references usuario(cedula)

insert into usuario(cedula, nombre, tipo_cuenta,limite_credito)
VALUES 
('08045','Juan','Corriente',1000.00),
('15946','María','Corriente',2000.00),
('20369','Pedro', 'Ahorros',3000.00),
('12345','Luis', 'Ahorros',4000.00)