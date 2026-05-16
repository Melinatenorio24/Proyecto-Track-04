SELECT l.titulo, a.nombre AS autor, g.nombre AS genero
FROM libros l
JOIN libros_autores la ON l.id = la.libro_id
JOIN autores a ON la.autor_id = a.id
JOIN libros_generos lg ON l.id = lg.libro_id
JOIN generos g ON lg.genero_id = g.id
ORDER BY l.id ASC;

SELECT titulo, to_tsvector('spanish', titulo) as vector
FROM libros 
WHERE to_tsvector('spanish', titulo) @@ to_tsquery('spanish', 'sistemas');

SELECT row_to_json(l)::jsonb AS libro_json
FROM libros l
LIMIT 9;