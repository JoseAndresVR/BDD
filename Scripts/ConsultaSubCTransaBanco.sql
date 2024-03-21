select * from transacciones
select * from banco

select * from
transacciones us, banco ct
where us.tipo = 'C' and us.numero_cuenta between '12345' and '2500'
and ct.codigo_banco = 1