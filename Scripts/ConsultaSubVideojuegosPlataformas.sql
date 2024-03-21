select * from videojuegos
select * from plataformas

select us.nombre,us.descripcion,us.valoracion,ct.nombre_plataforma,ct.codigo_videojuego from
videojuegos us, plataformas ct
where us.descripcion like 'Team%' and us.valoracion > 70 or us.nombre like 'C%' and us.valoracion >80 
and us.nombre = 'God of War'