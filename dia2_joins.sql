-- Día 2: INNER JOIN y LEFT JOIN

-- Mostrar cliente, producto y monto por cada venta
SELECT c.nombre, p.nombre AS producto, v.monto_venta
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id
JOIN productos p ON v.producto_id = p.id;

-- Mostrar todos los clientes y sus compras (si tienen)
SELECT c.nombre, v.monto_venta
FROM clientes c
LEFT JOIN ventas v ON c.id = v.cliente_id;

-- Mostrar productos no vendidos
SELECT p.nombre
FROM productos p
LEFT JOIN ventas v ON p.id = v.producto_id
WHERE v.id IS NULL;
