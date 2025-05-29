-- Insertar clientes
INSERT INTO clientes (id, nombre, correo) VALUES
(1, 'Juan Pérez', 'juanperez@gmail.com'),
(2, 'María López', 'marialopez@yahoo.com'),
(3, 'Carlos Soto', 'csoto@hotmail.com'),
(4, 'Ana Torres', NULL),
(5, 'Lucía Ramírez', 'luciaram@gmail.com');

-- Insertar productos
INSERT INTO productos (id, nombre, precio) VALUES
(1, 'Laptop Lenovo', 850.00),
(2, 'Teclado Mecánico', 150.00),
(3, 'Monitor 24 pulgadas', 230.00),
(4, 'Mouse Inalámbrico', 60.00),
(5, 'Disco SSD 512GB', 120.00);

-- Insertar ventas
INSERT INTO ventas (id, producto_id, cliente_id, fecha_venta, monto_venta) VALUES
(1, 1, 1, '2024-12-01', 850.00),
(2, 2, 1, '2024-12-03', 150.00),
(3, 3, 2, '2024-12-10', 230.00),
(4, 1, 3, '2024-12-15', 850.00),
(5, 5, 4, '2024-12-20', 120.00),
(6, 3, 2, '2025-01-05', 230.00),
(7, 5, 5, '2025-01-07', 120.00),
(8, 2, 3, '2025-01-09', 150.00),
(9, 4, 1, '2025-01-12', 60.00),
(10, 4, 5, '2025-01-15', 60.00);
