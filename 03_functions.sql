
CREATE OR REPLACE FUNCTION total_libros_por_genero(p_genero_id INT)
RETURNS INT AS $$
DECLARE
    v_total INT;
BEGIN
    SELECT COUNT(*) INTO v_total
    FROM libros_generos
    WHERE genero_id = p_genero_id;
    
    RETURN v_total;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION buscar_libros_por_autor(p_nombre_autor TEXT)
RETURNS TABLE (libro_titulo VARCHAR, autor_nombre VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT l.titulo, a.nombre
    FROM libros l
    JOIN libros_autores la ON l.id = la.libro_id
    JOIN autores a ON la.autor_id = a.id
    WHERE a.nombre ILIKE '%' || p_nombre_autor || '%';
END;
$$ LANGUAGE plpgsql;
