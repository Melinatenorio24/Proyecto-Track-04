CREATE MATERIALIZED VIEW vista_resumen_inventario AS
SELECT 
    g.nombre AS genero,
    COUNT(l.id) AS total_libros
FROM generos g
LEFT JOIN libros_generos lg ON g.id = lg.genero_id
LEFT JOIN libros l ON lg.libro_id = l.id
GROUP BY g.nombre;