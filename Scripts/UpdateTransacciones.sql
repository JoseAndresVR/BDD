select * from transacciones;
update transacciones set tipo='T' where monto between money(100) and money(500) and fecha between '2024/03/01' and '2024/03/30' and hora between '14:00' and '20:00'