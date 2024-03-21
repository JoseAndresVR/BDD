select * from clientes
select * from compras

select * from
clientes us, compras ct
where ct.cedula like '%7%'
and us.nombre = 'Mónica'