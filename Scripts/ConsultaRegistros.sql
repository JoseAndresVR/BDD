SELECT *
FROM registros_entrada
WHERE (fecha BETWEEN '2023-09-01' AND '2023-09-30')
OR (cedula_empleado LIKE '17%');

SELECT *
FROM registros_entrada
WHERE (fecha BETWEEN '2023-08-01' AND '2023-08-31')
AND (cedula_empleado LIKE '17%')
AND (hora BETWEEN '08:00' AND '12:00');

SELECT *
FROM registros_entrada
WHERE ((fecha BETWEEN '2023-08-01' AND '2023-08-31')
AND (cedula_empleado LIKE '17%')
AND (hora BETWEEN '08:00' AND '12:00'))
OR ((fecha BETWEEN '2023-09-01' AND '2023-09-30')
AND (cedula_empleado LIKE '08%')
AND (hora BETWEEN '09:00' AND '13:00'));
