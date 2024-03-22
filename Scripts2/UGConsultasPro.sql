--CONSULTA 1
SELECT u.nombre, g.nombre
FROM usuarios u
INNER JOIN usuario_grupo ug ON u.id = ug.us_id
INNER JOIN grupo g ON g.id = ug.gr_id;

SELECT u.nombre
FROM usuarios u
INNER JOIN usuario_grupo ug ON u.id = ug.us_id
WHERE ug.gr_id IN (
  SELECT gr_id
  FROM usuario_grupo
  WHERE us_id = 1
);

SELECT u.nombre, COUNT(ug.gr_id) AS total_grupos
FROM usuarios u
INNER JOIN usuario_grupo ug ON u.id = ug.us_id
GROUP BY u.nombre;

--consulta 2
SELECT u.nombre, g.nombre
FROM usuarios u
INNER JOIN usuario_grupo ug ON u.id = ug.us_id
INNER JOIN grupo g ON g.id = ug.gr_id
WHERE g.nombre LIKE '%intensivo%';

SELECT u.nombre
FROM usuarios u
WHERE u.id IN (
  SELECT ug.us_id
  FROM usuario_grupo ug
  WHERE ug.gr_id = 2
);

SELECT g.nombre, MAX(ug.us_id) AS max_us_id
FROM grupo g
INNER JOIN usuario_grupo ug ON g.id = ug.gr_id
GROUP BY g.nombre;

--consulta 3

SELECT g.descripcion, COUNT(ug.us_id) AS total_usuarios
FROM grupo g
INNER JOIN usuario_grupo ug ON g.id = ug.gr_id
WHERE g.descripcion LIKE '%matutino%'
GROUP BY g.descripcion;

SELECT u.nombre
FROM usuarios u
WHERE u.id IN (
  SELECT ug.us_id
  FROM usuario_grupo ug
  WHERE ug.gr_id IN (
    SELECT g.id
    FROM grupo g
    WHERE g.descripcion LIKE '%matutino%'
  )
);

SELECT g.descripcion, COUNT(ug.us_id) AS total_usuarios
FROM grupo g
INNER JOIN usuario_grupo ug ON g.id = ug.gr_id
GROUP BY g.descripcion
ORDER BY total_usuarios DESC;
