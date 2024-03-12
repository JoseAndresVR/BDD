select numero_cuenta, saldo from cuentas where saldo between money(100) and money(1000);
select * from cuentas where fecha_creacion between current_date - interval '1 year' and current_date;
select * from cuentas where saldo = money(0) or cedula_propietario like '%2';
select * from cuentas