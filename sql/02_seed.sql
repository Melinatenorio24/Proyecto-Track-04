INSERT INTO editoriales (nombre, pais, anio_fundacion) VALUES
('McGraw-Hill Interamericana', 'México', 1986),
('Alfaomega Grupo Editor', 'México', 1988),
('Pearson Educación', 'México', 1944),
('O''Reilly Media', 'EE. UU.', 1978),
('Marcombo', 'España', 1945);

INSERT INTO autores (nombre, apellido, nacionalidad, biografia) VALUES
('Abraham', 'Silberschatz', 'Israelí', 'Referencia básica en Sistemas Operativos.'),
('Roger', 'Pressman', 'Estadounidense', 'El estándar de Ingeniería de Software en México.'),
('Luis', 'Joyanes Aguilar', 'Española', 'Autor fundamental de programación y estructuras de datos en español.'),
('José', 'Luján Castillo', 'Mexicana', 'Especialista en desarrollo Android y Java.'),
('Andrew', 'Tanenbaum', 'Estadounidense', 'Autor de Redes de Computadoras.'),
('Francisco', 'Javier Ceballos', 'Española', 'Autor de la famosa guía de Java y C++ para estudiantes.'),
('Robert C.', 'Martin', 'Estadounidense', 'Creador de Clean Code.'),
('Ian', 'Sommerville', 'Británica', 'Clásico de Ingeniería de Software.'),
('Harvey', 'Deitel', 'Estadounidense', 'Sus libros "Cómo programar" son base en TI.'),
('Gisela', 'Baez', 'Mexicana', 'Autora técnica en temas de administración de TI.'),
('Xavier', 'Laborda', 'Española', 'Experto en tecnologías de la información.'),
('Enrique', 'Cuadra', 'Mexicana', 'Ingeniero especializado en arquitectura de sistemas.'),
('Martha', 'Gomez', 'Mexicana', 'Investigadora en computación y algoritmos.'),
('Guillermo', 'Levine', 'Mexicana', 'Autor de Introducción a la Computación.'),
('Adolfo', 'Guzmán Arenas', 'Mexicana', 'Pionero de la computación en México y experto en IA.');

INSERT INTO generos (nombre, descripcion) VALUES
('Sistemas Operativos', 'Gestión de recursos y kernel.'),
('Ingeniería de Software', 'Ciclo de vida y calidad.'),
('Programación en Java', 'Desarrollo orientado a objetos.'),
('Bases de Datos', 'Diseño y SQL.'),
('Estructuras de Datos', 'Organización lógica de información.'),
('Redes de Computadoras', 'Protocolos y conectividad.'),
('Seguridad Informática', 'Criptografía y protección.'),
('Desarrollo Móvil', 'Android e iOS.');

INSERT INTO libros (titulo, isbn, anio_publicacion, idiomas, metadatos, editorial_id) VALUES
('Sistemas Operativos', '978-6071506153', 2012, ARRAY['español'], '{"paginas": 944}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana')),
('Ingeniería de Software', '978-6071503146', 2010, ARRAY['español'], '{"paginas": 800}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana')),
('Fundamentos de Programación', '978-8448136543', 2008, ARRAY['español'], '{"paginas": 700}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana')),
('Java 2: Curso de Programación', '978-8478977444', 2007, ARRAY['español'], '{"paginas": 800}', (SELECT id FROM editoriales WHERE nombre = 'Alfaomega Grupo Editor')),
('Redes de Computadoras', '978-6073213387', 2012, ARRAY['español'], '{"paginas": 800}', (SELECT id FROM editoriales WHERE nombre = 'Pearson Educación')),
('Cómo programar en C++', '978-6073206037', 2012, ARRAY['español'], '{"paginas": 1000}', (SELECT id FROM editoriales WHERE nombre = 'Pearson Educación')),
('Clean Code', '978-0132350884', 2008, ARRAY['inglés'], '{"paginas": 464}', (SELECT id FROM editoriales WHERE nombre = 'Pearson Educación')),
('Sistemas Operativos Modernos', '978-6073226035', 2009, ARRAY['español'], '{"paginas": 1104}', (SELECT id FROM editoriales WHERE nombre = 'Pearson Educación')),
('Android: Programación de dispositivos móviles', '978-6077074458', 2012, ARRAY['español'], '{"paginas": 450}', (SELECT id FROM editoriales WHERE nombre = 'Alfaomega Grupo Editor')),
('Introducción a la Computación', '978-9701041536', 2006, ARRAY['español'], '{"paginas": 500}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana')),
('Seguridad en Informática', '978-6077070107', 2011, ARRAY['español'], '{"paginas": 400}', (SELECT id FROM editoriales WHERE nombre = 'Alfaomega Grupo Editor')),
('Análisis y Diseño de Sistemas', '978-6073205771', 2011, ARRAY['español'], '{"paginas": 600}', (SELECT id FROM editoriales WHERE nombre = 'Pearson Educación')),
('Estructuras de Datos con Java', '978-8448156312', 2007, ARRAY['español'], '{"paginas": 550}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana')),
('Base de Datos', '978-8448146443', 2006, ARRAY['español'], '{"paginas": 850}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana')),
('SQL Server 2019', '978-8426727282', 2020, ARRAY['español'], '{"paginas": 400}', (SELECT id FROM editoriales WHERE nombre = 'Marcombo')),
('Python para todos', '978-1530051120', 2016, ARRAY['español'], '{"paginas": 300}', (SELECT id FROM editoriales WHERE nombre = 'Marcombo')),
('Metodología de la Programación', '978-9701046425', 2005, ARRAY['español'], '{"paginas": 450}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana')),
('Redes Locales', '978-8426727183', 2019, ARRAY['español'], '{"paginas": 350}', (SELECT id FROM editoriales WHERE nombre = 'Marcombo')),
('Ingeniería de Software: Un enfoque práctico', '978-6071503145', 2010, ARRAY['español'], '{"paginas": 800}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana')),
('Sistemas Digitales', '978-6074420395', 2011, ARRAY['español'], '{"paginas": 900}', (SELECT id FROM editoriales WHERE nombre = 'Pearson Educación')),
('Administración de TI', '978-6077070108', 2014, ARRAY['español'], '{"paginas": 300}', (SELECT id FROM editoriales WHERE nombre = 'Alfaomega Grupo Editor')),
('Compiladores', '978-9702611332', 2008, ARRAY['español'], '{"paginas": 1000}', (SELECT id FROM editoriales WHERE nombre = 'Pearson Educación')),
('Arquitectura de Computadoras', '978-6073206068', 2011, ARRAY['español'], '{"paginas": 700}', (SELECT id FROM editoriales WHERE nombre = 'Pearson Educación')),
('Cloud Computing', '978-8426727213', 2019, ARRAY['español'], '{"paginas": 250}', (SELECT id FROM editoriales WHERE nombre = 'Marcombo')),
('Minería de Datos', '978-8448156367', 2007, ARRAY['español'], '{"paginas": 400}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana')),
('Desarrollo Web con PHP', '978-8426727220', 2019, ARRAY['español'], '{"paginas": 380}', (SELECT id FROM editoriales WHERE nombre = 'Marcombo')),
('Criptografía Moderna', '978-8448156374', 2007, ARRAY['español'], '{"paginas": 320}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana')),
('Big Data', '978-8426727237', 2019, ARRAY['español'], '{"paginas": 300}', (SELECT id FROM editoriales WHERE nombre = 'Marcombo')),
('Linux: Guía del Administrador', '978-6077070109', 2015, ARRAY['español'], '{"paginas": 600}', (SELECT id FROM editoriales WHERE nombre = 'Alfaomega Grupo Editor')),
('Diseño de Algoritmos', '978-8448156381', 2007, ARRAY['español'], '{"paginas": 500}', (SELECT id FROM editoriales WHERE nombre = 'McGraw-Hill Interamericana'));

DO $$
DECLARE i INT;
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO resenas (libro_id, usuario, calificacion, comentario)
        VALUES (
            (floor(random() * 30) + 1)::INT, 
            'estudiante_' || i, 
            (floor(random() * 5) + 1)::text::calificacion_estrellas, 
            'Excelente libro técnico, muy útil para mis proyectos de TI.'
        );
    END LOOP;
END $$;

TRUNCATE TABLE libros_autores CASCADE;
TRUNCATE TABLE libros_generos CASCADE;

INSERT INTO libros_autores (libro_id, autor_id)
SELECT 
    l.id,
    COALESCE(
        CASE 
            WHEN l.titulo ILIKE '%Sistemas Operativos%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%Abraham%' LIMIT 1)
            WHEN l.titulo ILIKE '%Ingeniería de Software%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%Roger%' LIMIT 1)
            WHEN l.titulo ILIKE '%Fundamentos de programación%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%Joyanes%' LIMIT 1)
            WHEN l.titulo ILIKE '%Java 2%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%Cevallos%' LIMIT 1)
            WHEN l.titulo ILIKE '%Redes de computadoras%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%Andrew%' LIMIT 1)
            WHEN l.titulo ILIKE '%Cómo programar en C++%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%Harvey%' LIMIT 1)
            WHEN l.titulo ILIKE '%Clean Code%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%Robert%' LIMIT 1)
            WHEN l.titulo ILIKE '%Android%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%José%' LIMIT 1)
            WHEN l.titulo ILIKE '%Introducción a la computación%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%Guillermo%' LIMIT 1)
            WHEN l.titulo ILIKE '%Metodología de la programación%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%Joyanes%' LIMIT 1)
            WHEN l.titulo ILIKE '%Diseño de algoritmos%' THEN (SELECT id FROM autores WHERE nombre ILIKE '%Adolfo%' LIMIT 1)
            ELSE (SELECT id FROM autores ORDER BY id DESC LIMIT 1 OFFSET (l.id % 5))
        END,
        (SELECT id FROM autores LIMIT 1) 
    )
FROM libros l;

INSERT INTO libros_generos (libro_id, genero_id)
SELECT id,
    CASE 
        WHEN titulo ILIKE '%Sistemas Operativos%' THEN 1
        WHEN titulo ILIKE '%Ingeniería de Software%' THEN 2
        WHEN titulo ILIKE '%Programación%' OR titulo ILIKE '%Java%' OR titulo ILIKE '%C++%' OR titulo ILIKE '%Clean Code%' THEN 3
        WHEN titulo ILIKE '%Bases de datos%' THEN 4
        WHEN titulo ILIKE '%Estructura de datos%' OR titulo ILIKE '%SQL%' THEN 5
        WHEN titulo ILIKE '%Redes de computadoras%' THEN 6
        WHEN titulo ILIKE '%Seguridad%' OR titulo ILIKE '%HTML%' THEN 7
        WHEN titulo ILIKE '%Desarrollo movil%' OR titulo ILIKE '%IA%' THEN 8
        ELSE 3 
    END
FROM libros;