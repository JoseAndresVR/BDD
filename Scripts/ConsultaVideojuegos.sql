SELECT *
FROM videojuegos
WHERE nombre LIKE '%C%'
OR valoracion = 70;

SELECT *
FROM videojuegos
WHERE (codigo BETWEEN 3 AND 7)
OR valoracion = 70;

SELECT *
FROM videojuegos
WHERE (descripcion = 'Guerra' AND valoracion > 70 AND nombre LIKE 'C%')
OR (valoracion > 80 AND nombre LIKE 'D%');

