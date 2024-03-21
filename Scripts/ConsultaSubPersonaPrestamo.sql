select * from personas
select * from prestamo

select us.cantidad_ahorrada,ct.monto,ct.garante from
personas us, prestamo ct
where ct.monto between money(100) and money(1000)
and us.cedula = '080514875'
