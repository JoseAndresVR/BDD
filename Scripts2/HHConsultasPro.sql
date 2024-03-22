--Consulta 1
SELECT
  habitaciones.habitacion_numero,
  huéspedes.nombres,
  huéspedes.apellidos
FROM habitaciones
INNER JOIN reservas ON habitaciones.habitacion_numero = reservas.habitacion_numero
INNER JOIN huéspedes ON reservas.huesped_id = huéspedes.id;

SELECT
  huéspedes.nombres,
  huéspedes.apellidos
FROM habitaciones
INNER JOIN reservas ON habitaciones.habitacion_numero = reservas.habitacion_numero
INNER JOIN huéspedes ON reservas.huesped_id = huéspedes.id
WHERE habitaciones.habitacion_numero = 2;

SELECT
  habitaciones.habitacion_numero,
  COUNT(reservas.huesped_id) AS numero_de_huespedes
FROM habitaciones
INNER JOIN reservas ON habitaciones.habitacion_numero = reservas.habitacion_numero
GROUP BY habitaciones.habitacion_numero;

--consulta 2
SELECT
  habitaciones.habitacion_numero,
  AVG(reservas.huesped_id) AS promedio_de_huespedes
FROM habitaciones
INNER JOIN reservas ON habitaciones.habitacion_numero = reservas.habitacion_numero
GROUP BY habitaciones.habitacion_numero;

SELECT
  huéspedes.nombres,
  huéspedes.apellidos
FROM huéspedes
WHERE huéspedes.id IN (
  SELECT huesped_id
  FROM reservas
  WHERE habitacion_numero = 3
	
	
);

SELECT COUNT(DISTINCT huesped_id) AS numero_total_de_huespedes
FROM reservas
WHERE habitacion_numero = 3;

--consulta 3

SELECT
  habitaciones.habitacion_numero,
  SUM(habitaciones.precio_por_noche) AS precio_total_por_noche
FROM habitaciones
INNER JOIN reservas ON habitaciones.habitacion_numero = reservas.habitacion_numero
GROUP BY habitaciones.habitacion_numero;

SELECT
  huéspedes.nombres,
  huéspedes.apellidos
FROM huéspedes
WHERE huéspedes.id IN (
  SELECT huesped_id
  FROM reservas
  WHERE habitacion_numero = 4
);

SELECT COUNT(*) AS numero_total_de_habitaciones
FROM habitaciones
WHERE habitaciones.precio_por_noche > 200;








