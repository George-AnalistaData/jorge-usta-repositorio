[README.md.txt](https://github.com/user-attachments/files/26693634/README.md.txt)
# Tema 1: SELECT, WHERE, ORDER BY

## ¿Qué voy a aprender?
- **SELECT**: Seleccionar columnas de una tabla
- **WHERE**: Filtrar filas que cumplen condiciones
- **ORDER BY**: Ordenar resultados (ASC = menor a mayor, DESC = mayor a menor)

## ¿Qué aprendí?

| Comando | Qué hace | Ejemplo |
|---------|----------|---------|
| `SELECT` | Elige qué columnas mostrar | `SELECT nombre, edad FROM clientes` |
| `WHERE` | Filtra filas con condiciones | `WHERE ciudad = 'Bogotá'` |
| `ORDER BY` | Ordena los resultados | `ORDER BY precio DESC` |

## Consultas incluidas en `consulta.sql`

| # | Consulta | Qué hace |
|---|----------|----------|
| 1 | `consulta.sql` | Ventas de Tecnología con cantidad >= 2 |
| 2 | `consulta.sql` | Ventas de Oficina con cantidad > 1 |
| 3 | `consulta.sql` | Ventas después del 17-ene-2024 |
| 4 | `consulta.sql` | Todas las ventas de Bogotá |
| 5 | `consulta.sql` | Productos ordenados por precio |

## Tabla usada: `ventas`

| Columna | Tipo de dato | Ejemplo |
|---------|--------------|---------|
| id_venta | número | 1 |
| producto | texto | 'Laptop' |
| categoria | texto | 'Tecnología' |
| cantidad | número | 3 |
| precio_unitario | número | 800 |
| ciudad | texto | 'Bogotá' |
| fecha | fecha | '2024-01-15' |

## Ejemplo de consulta

```sql
SELECT producto, cantidad, ciudad
FROM ventas
WHERE categoria = 'Oficina' AND cantidad > 1
ORDER BY cantidad DESC;
