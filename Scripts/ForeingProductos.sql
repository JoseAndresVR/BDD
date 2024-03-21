delete from productos

CREATE TABLE ventas (
  id_venta INT PRIMARY KEY,
  codigo_producto INT,
  fecha_venta DATE NOT NULL,
  cantidad INT NOT NULL
);

alter table ventas
add constraint codigo_fk foreign key (codigo_producto)
references productos(codigo)

INSERT INTO productos (codigo,nombre, descripcion, precio, stock)
VALUES
(1,'Producto 1', 'Descripción del producto 1', 100.00, 10),
(2,'Producto 2', 'Descripción del producto 2', 200.00, 20),
(4,'Producto 3', 'Descripción del producto 3', 300.00, 30),
(5,'Producto 4', 'Descripción del producto 4', 400.00, 40),
(6,'Producto 5', 'Descripción del producto 5', 500.00, 50),
(7,'Producto M1', 'Descripción del producto M1', 600.00, 60),
(8,'Producto M2', 'Descripción del producto M2', 700.00, 70),
(9,'Producto M3', 'Descripción del producto M3', 800.00, 80),
(10,'Producto M4', 'Descripción del producto M4', 900.00, 90),
(11,'Producto M5', 'Descripción del producto M5', 1000.00, 100);

INSERT INTO ventas (id_venta,codigo_producto, fecha_venta, cantidad)
VALUES
(142,1, '2024-03-20', 1),
(741,2, '2024-03-21', 2),
(875,11, '2024-03-22', 3),
(963,4, '2024-03-23', 4),
(258,5, '2024-03-24', 5),
(369,6, '2024-03-25', 6),
(852,7, '2024-03-26', 7),
(159,8, '2024-03-27', 8),
(951,9, '2024-03-28', 9),
(744,10, '2024-03-29', 10),
(946,7, '2024-03-29', 5);