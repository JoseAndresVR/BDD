select * from clientes
select * from compras

select ct.cedula,SUM(us.total_compra)
from clientes ct, compras us
group by ct.cedula

select fecha_compra,count(total_compra) 
from compras
where fecha_compra = '2024/03/20'
group by fecha_compra
