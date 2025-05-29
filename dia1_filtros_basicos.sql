-- Día 1: Filtros, operadores y tipos de datos

-- Productos con precio mayor a 1000
SELECT nombre, precio
FROM productos
WHERE precio > 1000;

-- Clientes cuyo correo comienza con "j"
SELECT nombre, correo
FROM clientes
WHERE correo LIKE 'j%';

-- Ventas entre $100 y $500
SELECT *
FROM ventas
WHERE monto_venta BETWEEN 100 AND 500;

-- Clientes sin correo electrónico
SELECT *
FROM clientes
WHERE correo IS NULL;
