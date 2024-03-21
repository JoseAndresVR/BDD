select * from cuentas
select * from usuario

select AVG(cast(saldo as numeric))
from cuentas ct, usuario us
where us.cedula = '08045'

select us.tipo_cuenta,count(ct.numero_cuenta)
from cuentas ct, usuario us
group by us.tipo_cuenta