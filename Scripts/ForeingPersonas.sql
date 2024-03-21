CREATE TABLE personas (
    cedula CHAR(10) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    estatura DECIMAL(5,2) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    hora_nacimiento TIME NOT NULL,
    cantidad_ahorrada DECIMAL(10,2) NOT NULL,
    numero_hijos INTEGER NOT NULL,
	constraint cedu_pk primary key(cedula)
);

create table prestamo(
	cedula_prestamo char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint cedup_pk primary key(cedula_prestamo)
)

alter table prestamo 
add constraint cd_fk foreign key(cedula_prestamo)
references personas(cedula)

INSERT INTO personas (cedula, nombre, apellido, 
    estatura, fecha_nacimiento, hora_nacimiento, 
    cantidad_ahorrada, numero_hijos)
VALUES 
    ('1234567890', 'Juan Pérez', 'López', 
        1.75, '1980-01-01', '00:00:00', 
        1000, 2),
    ('9876543210', 'María García', 'González', 
        1.60, '1985-05-05', '12:00:00', 
        500, 1),
    ('1112223334', 'Pedro González', 'Rodríguez', 
        1.80, '1990-10-10', '18:00:00', 
        2000, 3),
    ('4445556667', 'Ana López', 'Fernández', 
        1.65, '1995-12-12', '21:00:00', 
        1500, 0),
    ('5556667778', 'Miguel Martínez', 'Pérez', 
        1.70, '2000-02-02', '00:00:00', 
        1200, 1),
    ('6667778889', 'Sofía Rodríguez', 'Gómez', 
        1.55, '2005-04-04', '06:00:00', 
        800, 2),
    ('7778889990', 'David García', 'Díaz', 
        1.85, '2010-06-06', '12:00:00', 
        1400, 0),
    ('8889990001', 'Laura Pérez', 'Martínez', 
        1.70, '2015-08-08', '18:00:00', 
        1000, 1),
    ('9990001112', 'Alejandro López', 'Fernández', 
        1.90, '2020-10-10', '00:00:00', 
        1600, 2),
    ('1011121314', 'Camila González', 'Rodríguez', 
        1.60, '2025-12-12', '06:00:00', 
        900, 0);
		
INSERT INTO prestamo (cedula_prestamo, monto, fecha_prestamo, hora_prestamo, garante)
VALUES
    ('1234567890', 500, '2023-11-14', '10:00:00', 'Pedro González'),
    ('9876543210', 800, '2023-11-15', '11:00:00', 'Ana López'),
    ('1112223334', 100, '2023-11-16', '12:00:00', 'Miguel Martínez'),
    ('4445556667', 700, '2023-11-17', '13:00:00', 'Sofía Rodríguez'),
    ('5556667778', 900, '2023-11-18', '14:00:00', 'David García');
	
INSERT INTO personas (cedula, nombre, apellido, 
    estatura, fecha_nacimiento, hora_nacimiento, 
    cantidad_ahorrada, numero_hijos)
VALUES
    ('080514875', 'Sean', 'Rodríguez', 
        1.60, '2025-12-12', '06:00:00', 
        900, 0);
