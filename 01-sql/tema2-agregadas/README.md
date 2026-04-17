# Tema 2: Funciones Agregadas (COUNT, SUM, AVG, MIN, MAX)

## ¿Qué aprendí?

| Función | Qué hace | Ejemplo |
|---------|----------|---------|
| `COUNT(*)` | Cuenta filas | ¿Cuántas ventas hay? |
| `SUM(columna)` | Suma valores | ¿Total de unidades vendidas? |
| `AVG(columna)` | Promedio | ¿Precio promedio? |
| `MIN(columna)` | Valor mínimo | ¿Producto más barato? |
| `MAX(columna)` | Valor máximo | ¿Producto más caro? |

## Consultas incluidas en `agregadas.sql`

| # | Consulta | Qué hace |
|---|----------|----------|
| 1 | `agregadas.sql` | Resumen general de todas las ventas |
| 2 | `agregadas.sql` | Resumen solo de Tecnología |
| 3 | `agregadas.sql` | Resumen solo de Oficina |
| 4 | `agregadas.sql` | Resumen solo de Bogotá |

## Ejemplo de consulta

```sql
SELECT 
    COUNT(*) AS total_ventas,
    SUM(cantidad) AS unidades_vendidas,
    AVG(precio_unitario) AS precio_promedio
FROM ventas
WHERE ciudad = 'Bogotá';
