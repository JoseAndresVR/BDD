select * from transacciones
select * from banco

select count(ct.codigo) as total_transacciones 
from transacciones ct, banco us
where ct.tipo = 'C'

select ct.numero_cuenta,round(AVG(cast(ct.monto as decimal)),2) as monto_promedio 
from transacciones ct, banco us
group by ct.numero_cuenta