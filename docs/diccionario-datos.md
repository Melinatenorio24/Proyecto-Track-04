# Diccionario de Datos - Sistema de Inventario de Libros

Este documento describe la estructura técnica de la base de datos para la gestión de la biblioteca.

## 1. Entidades Principales

### Tabla: autores
| Columna | Tipo | Descripción |
| :--- | :--- | :--- |
| id | SERIAL (PK) | Identificador único del autor |
| nombre | VARCHAR(100) | Nombre completo del escritor |

### Tabla: generos
| Columna | Tipo | Descripción |
| :--- | :--- | :--- |
| id | SERIAL (PK) | Identificador único del género |
| nombre | VARCHAR(50) | Nombre de la categoría (Ej. Sistemas Operativos) |

### Tabla: libros
| Columna | Tipo | Descripción |
| :--- | :--- | :--- |
| id | SERIAL (PK) | Identificador único del libro |
| titulo | VARCHAR(150) | Título de la obra |
| paginas | INT | Número de páginas (Validado por Trigger) |

## 2. Relaciones (Tablas Intermedias)

### Tabla: libros_autores
Relación Muchos a Muchos entre Libros y Autores.
* *libro_id*: FK referenciando a libros(id).
* *autor_id*: FK referenciando a autores(id).

### Tabla: libros_generos
Relación Muchos a Muchos entre Libros y Géneros.
* *libro_id*: FK referenciando a libros(id).
* *genero_id*: FK referenciando a generos(id).

## 3. Componentes Avanzados Implementados

* *Funciones*: total_libros_por_genero y buscar_libros_por_autor.
* *Triggers*: tr_validar_paginas para asegurar que ningún libro tenga 0 o menos páginas.
* *Vistas Materializadas*: vista_resumen_inventario para optimizar la velocidad de los reportes.
* *Búsqueda Avanzada*: Implementación de Full-Text Search (to_tsvector) en títulos.
