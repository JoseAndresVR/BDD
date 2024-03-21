select * from productos
select * from ventas

select MAX(ct.precio) as precio_maximo
from productos ct, ventas us

select sum(us.cantidad) as cantidad_total_vendida
from productos ct, ventas us