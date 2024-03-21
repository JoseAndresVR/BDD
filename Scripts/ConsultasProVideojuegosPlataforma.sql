select * from videojuegos
select * from plataformas

select us.codigo_videojuego,count(us.nombre_plataforma)
from videojuegos ct, plataformas us
group by us.codigo_videojuego

select round(AVG(ct.valoracion),2)as valoracion_promedio
from videojuegos ct, plataformas us
