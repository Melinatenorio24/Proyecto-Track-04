
CREATE OR REPLACE FUNCTION fn_validar_paginas_libro()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.paginas <= 0 THEN
        RAISE EXCEPTION 'Error: Un libro no puede tener 0 o menos páginas (Valor: %)', NEW.paginas;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tr_validar_paginas
BEFORE INSERT OR UPDATE ON libros
FOR EACH ROW
EXECUTE FUNCTION fn_validar_paginas_libro();

CREATE OR REPLACE FUNCTION fn_auditoria_libros()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE 'Libro actualizado: % (ID: %). Fecha: %', OLD.titulo, OLD.id, NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tr_auditoria_libros
AFTER UPDATE ON libros
FOR EACH ROW
EXECUTE FUNCTION fn_auditoria_libros();