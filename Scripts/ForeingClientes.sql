CREATE TABLE clientes (
  cedula CHAR(10) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL
);

CREATE TABLE compras (
  id_compra INT PRIMARY KEY,
  cedula CHAR(10) ,
  fecha_compra DATE NOT NULL,
  total_compra DECIMAL(10,2) NOT NULL
);

alter table compras
add constraint cedula_fk foreign key(cedula)
	references clientes(cedula)

INSERT INTO clientes (cedula, nombre, apellido)
VALUES
('1234567890', 'Mónica', 'Pérez'),
('9876543210', 'Juan', 'Gómez'),
('1122334455', 'Pedro', 'Rodríguez'),
('4567890123', 'Ana', 'Fernández'),
('7654321098', 'Luis', 'Martínez'),
('7777777777', 'Carlos', 'Ramírez'),
('7070707070', 'María', 'Gutiérrez'),
('7171717171', 'David', 'López'),
('7272727272', 'Sandra', 'González'),
('7373737373', 'Daniel', 'Blanco');

INSERT INTO compras (id_compra,cedula, fecha_compra, total_compra)
VALUES
(1,'1234567890', '2024-03-20', 100.00),
(2,'9876543210', '2024-03-21', 200.00),
(3,'1122334455', '2024-03-22', 300.00),
(4,'4567890123', '2024-03-23', 400.00),
(5,'7654321098', '2024-03-24', 500.00),
(6,'7777777777', '2024-03-25', 600.00),
(7,'7070707070', '2024-03-26', 700.00),
(8,'7171717171', '2024-03-27', 800.00),
(9,'7272727272', '2024-03-28', 900.00),
(10,'7373737373', '2024-03-29', 1000.00);