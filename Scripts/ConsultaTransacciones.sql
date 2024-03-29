SELECT *
FROM transacciones
WHERE tipo = 'C'
AND numero_cuenta BETWEEN '22001' AND '22004';

SELECT *
FROM transacciones
WHERE tipo = 'D'
AND fecha = '2011-05-12'
AND numero_cuenta BETWEEN '22007' AND '22010';

SELECT *
FROM transacciones
WHERE codigo BETWEEN 1 AND 5
AND numero_cuenta BETWEEN '22002' AND '22004'
AND (fecha = '2011-05-26' OR fecha = '2011-05-29');
