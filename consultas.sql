-- 🔍 Consulta 1: Total de ventas por producto
SELECT p.nombre AS producto, SUM(v.monto_venta) AS total
FROM ventas v
JOIN productos p ON v.producto_id = p.id
GROUP BY p.nombre
ORDER BY total DESC;

-- 🔍 Consulta 2: Top 5 clientes con más compras
SELECT c.nombre AS cliente, COUNT(*) AS cantidad_compras
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id
GROUP BY c.nombre
ORDER BY cantidad_compras DESC
LIMIT 5;

-- 🔍 Consulta 3: Promedio de venta mensual
SELECT MONTH(fecha_venta) AS mes, AVG(monto_venta) AS promedio
FROM ventas
GROUP BY MONTH(fecha_venta);

-- 🔍 Consulta 4: Productos que no se han vendido
SELECT p.nombre
FROM productos p
LEFT JOIN ventas v ON p.id = v.producto_id
WHERE v.id IS NULL;

-- 🔍 Consulta 5: Ventas con monto mayor al promedio
SELECT *
FROM ventas
WHERE monto_venta > (
    SELECT AVG(monto_venta) FROM ventas
);
