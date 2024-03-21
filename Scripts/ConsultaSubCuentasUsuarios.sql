select * from usuario
select * from cuentas

select us.nombre,ct.numero_cuenta from
usuario us, cuentas ct
where ct.saldo between money(100) and money(1000)
and fecha_creacion = '2022/03/03'
