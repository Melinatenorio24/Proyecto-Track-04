
--DROP TABLE IF EXISTS libros_generos, libros_autores, resenas, libros, generos, autores, editoriales CASCADE;

--DROP TYPE IF EXISTS calificacion_estrellas, estado_libro CASCADE;
--DROP DOMAIN IF EXISTS anio_valido CASCADE;

CREATE DOMAIN anio_valido AS INT 
CHECK (VALUE >= 0 AND VALUE <= EXTRACT(YEAR FROM CURRENT_DATE));

CREATE TYPE calificacion_estrellas AS ENUM ('1', '2', '3', '4', '5');

CREATE TYPE estado_libro AS ENUM ('disponible', 'prestado', 'en_reparacion');

CREATE TABLE editoriales (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(50),
    anio_fundacion anio_valido
);

CREATE TABLE autores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50),
    biografia TEXT
);

CREATE TABLE generos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion TEXT
);

CREATE TABLE libros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    anio_publicacion anio_valido, 
    idiomas TEXT[],              
    metadatos JSONB,             
    busqueda_vector tsvector,    
    estado estado_libro DEFAULT 'disponible',
    editorial_id INT REFERENCES editoriales(id) ON DELETE SET NULL
);

CREATE TABLE resenas (
    id SERIAL PRIMARY KEY,
    libro_id INT REFERENCES libros(id) ON DELETE CASCADE,
    usuario VARCHAR(100) NOT NULL,
    calificacion calificacion_estrellas, 
    comentario TEXT,
    fecha DATE DEFAULT CURRENT_DATE
);

CREATE TABLE libros_autores (
    libro_id INT REFERENCES libros(id) ON DELETE CASCADE,
    autor_id INT REFERENCES autores(id) ON DELETE CASCADE,
    PRIMARY KEY (libro_id, autor_id)
);

CREATE TABLE libros_generos (
    libro_id INT REFERENCES libros(id) ON DELETE CASCADE,
    genero_id INT REFERENCES generos(id) ON DELETE CASCADE,
    PRIMARY KEY (libro_id, genero_id)
);

CREATE INDEX idx_libros_idiomas ON libros USING GIN (idiomas);
CREATE INDEX idx_libros_metadatos ON libros USING GIN (metadatos);
CREATE INDEX idx_libros_busqueda ON libros USING GIN (busqueda_vector);