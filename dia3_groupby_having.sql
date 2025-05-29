-- Día 3: Agrupaciones y funciones agregadas

-- Total gastado por cada cliente
SELECT c.nombre, SUM(v.monto_venta) AS total_gastado
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id
GROUP BY c.nombre;

-- Número de ventas por producto
SELECT p.nombre, COUNT(*) AS cantidad_ventas
FROM ventas v
JOIN productos p ON v.producto_id = p.id
GROUP BY p.nombre;

-- Promedio de venta por producto
SELECT p.nombre, AVG(v.monto_venta) AS promedio
FROM ventas v
JOIN productos p ON v.producto_id = p.id
GROUP BY p.nombre;

-- Clientes que gastaron más de $500
SELECT c.nombre, SUM(v.monto_venta) AS total_gastado
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id
GROUP BY c.nombre
HAVING SUM(v.monto_venta) > 500;

-- Productos vendidos más de 1 vez
SELECT p.nombre, COUNT(*) AS veces_vendido
FROM ventas v
JOIN productos p ON v.producto_id = p.id
GROUP BY p.nombre
HAVING COUNT(*) > 1;
