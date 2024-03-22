--Punto 1
CREATE TABLE usuarios (
  id INT ,
  nombre VARCHAR(25) NOT NULL,
  apellido VARCHAR(25) NOT NULL,
  fecha_nacimiento DATE,
	constraint idu_pk primary key(id) 
);

CREATE TABLE grupo (
  id INT  ,
  nombre VARCHAR(25) NOT NULL,
  descripcion VARCHAR(75),
  fecha_creacion DATE,
	constraint idg_pk primary key(id)
);

CREATE TABLE usuario_grupo (
  us_id INT NOT NULL,
  gr_id INT NOT NULL,
	constraint uuid_fk foreign KEY (us_id)
	references usuarios(id),
	constraint ugid_fk foreign KEY (gr_id)
	references grupo(id),
  constraint ugid_pk PRIMARY KEY (us_id, gr_id)
);



--Punto 2
CREATE TABLE habitaciones (
  habitacion_numero INT,
  precio_por_noche DECIMAL NOT NULL,
  piso INT NOT NULL,
  max_personas INT,
	constraint hn_pk primary key(habitacion_numero)
);

CREATE TABLE huéspedes (
  id INT,
  nombres VARCHAR(45) NOT NULL,
  apellidos VARCHAR(45) NOT NULL,
  telefono CHAR(10),
  correo VARCHAR(45),
  direccion VARCHAR(45),
  ciudad VARCHAR(45),
  pais VARCHAR(45),
	constraint idh_pk primary key(id)
);

CREATE TABLE reservas (
  inicio_fecha DATE NOT NULL,
  fin_fecha DATE NOT NULL,
  habitacion_numero INT NOT NULL ,
  huesped_id INT NOT NULL ,
	constraint hnd_fk foreign KEY (habitacion_numero)
	REFERENCES habitaciones(habitacion_numero),
	constraint hid_fk foreign KEY (huesped_id)
	REFERENCES huéspedes(id),
  constraint hhids_pk PRIMARY KEY (habitacion_numero,huesped_id)
);



--Punto 3

CREATE TABLE ciudad (
  id INT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL
);
CREATE TABLE municipio (
  id INT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  ciudad_id INT NOT NULL,
  FOREIGN KEY (ciudad_id) REFERENCES ciudad(id)
);
CREATE TABLE proyecto (
  id INT PRIMARY KEY,
  proyecto VARCHAR(50) NOT NULL,
  monto MONEY NOT NULL,
  fecha_inicio DATE,
  fecha_entrega DATE
);
CREATE TABLE proyecto_municipio (
  municipio_id INT NOT NULL,
  proyecto_id INT NOT NULL,
  FOREIGN KEY (municipio_id) REFERENCES municipio(id),
  FOREIGN KEY (proyecto_id) REFERENCES proyecto(id),
  PRIMARY KEY (municipio_id, proyecto_id)
);


















