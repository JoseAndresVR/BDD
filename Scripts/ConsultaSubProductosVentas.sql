select * from productos
select * from ventas

select us.nombre,us.stock,ct.cantidad from
productos us, ventas ct
where us.nombre like '%M%'
and ct.codigo_producto = 5