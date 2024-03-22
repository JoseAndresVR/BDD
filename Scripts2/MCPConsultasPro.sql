--Consulta 1
SELECT municipio.nombre, proyecto.proyecto
FROM municipio
INNER JOIN proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
INNER JOIN proyecto ON proyecto_municipio.proyecto_id = proyecto.id;

SELECT proyecto
FROM proyecto
WHERE id IN (
  SELECT proyecto_id
  FROM proyecto_municipio
  WHERE municipio_id = 1
);

select * from proyecto

SELECT municipio.nombre, COUNT(proyecto_municipio.proyecto_id) AS total_projects
FROM municipio
INNER JOIN proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;

--Consulta 2

SELECT municipio.nombre, proyecto.proyecto
FROM municipio
INNER JOIN proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
INNER JOIN proyecto ON proyecto_municipio.proyecto_id = proyecto.id
WHERE municipio.nombre LIKE 'GAD%';

SELECT municipio.nombre, MIN(proyecto_municipio.proyecto_id) AS min_project_id
FROM municipio
INNER JOIN proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;

--Consulta 3
SELECT ciudad.nombre, municipio.nombre, proyecto.proyecto
FROM ciudad
INNER JOIN municipio ON ciudad.id = municipio.ciudad_id
INNER JOIN proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
INNER JOIN proyecto ON proyecto_municipio.proyecto_id = proyecto.id;

SELECT proyecto_id
FROM proyecto_municipio
WHERE municipio_id = 3;

SELECT municipio.nombre, MAX(proyecto_municipio.proyecto_id) AS max_project_id
FROM municipio
INNER JOIN proyecto_municipio ON municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;


