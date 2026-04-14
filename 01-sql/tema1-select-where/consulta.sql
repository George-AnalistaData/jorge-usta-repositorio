-- Consulta 1: Ventas de Tecnología con cantidad >= 2
SELECT producto, cantidad, precio_unitario, ciudad
FROM ventas
WHERE categoria = 'Tecnología' AND cantidad >= 2
ORDER BY precio_unitario DESC;

-- Consulta 2: Ventas de Oficina con cantidad > 1
SELECT producto, cantidad, ciudad
FROM ventas
WHERE categoria = 'Oficina' AND cantidad > 1
ORDER BY cantidad DESC;

-- Consulta 3: Ventas de Tecnología después del 17-ene-2024
SELECT producto, cantidad, fecha
FROM ventas
WHERE categoria = 'Tecnología' AND fecha > '2024-01-17'
ORDER BY fecha DESC, producto ASC;

-- Consulta 4: Todas las ventas de Bogotá
SELECT * FROM ventas WHERE ciudad = 'Bogotá';

-- Consulta 5: Productos ordenados por precio del más caro al más barato
SELECT producto, precio_unitario FROM ventas ORDER BY precio_unitario DESC;
