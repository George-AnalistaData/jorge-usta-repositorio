-- Consulta 1: Resumen general de ventas
SELECT 
    COUNT(*) AS total_ventas,
    SUM(cantidad) AS unidades_vendidas,
    AVG(precio_unitario) AS precio_promedio,
    MIN(precio_unitario) AS producto_mas_barato,
    MAX(precio_unitario) AS producto_mas_caro,
    SUM(cantidad * precio_unitario) AS ingreso_total
FROM ventas;

-- Consulta 2: Resumen solo de Tecnología
SELECT 
    COUNT(*) AS total_ventas,
    SUM(cantidad) AS unidades_vendidas,
    AVG(precio_unitario) AS precio_promedio,
    MIN(precio_unitario) AS producto_mas_barato,
    MAX(precio_unitario) AS producto_mas_caro,
    SUM(cantidad * precio_unitario) AS ingreso_total
FROM ventas
WHERE categoria = 'Tecnología';

-- Consulta 3: Resumen solo de Oficina
SELECT 
    COUNT(*) AS total_ventas,
    SUM(cantidad) AS unidades_vendidas,
    AVG(precio_unitario) AS precio_promedio,
    MIN(precio_unitario) AS producto_mas_barato,
    MAX(precio_unitario) AS producto_mas_caro,
    SUM(cantidad * precio_unitario) AS ingreso_total
FROM ventas
WHERE categoria = 'Oficina';

-- Consulta 4: Resumen solo de Bogotá
SELECT 
    COUNT(*) AS total_ventas,
    SUM(cantidad) AS unidades_vendidas,
    SUM(cantidad * precio_unitario) AS ingreso_total
FROM ventas
WHERE ciudad = 'Bogotá';
