# Sistema de Gestión de Inventario - Biblioteca Técnica

Este proyecto es una solución integral de base de datos relacional desarrollada en *PostgreSQL* para la administración de libros técnicos, autores y categorías. Implementa lógica avanzada de servidor, optimización de consultas y validación de integridad de datos.

## 🚀 Características del Proyecto
- *Base de Datos Relacional:* Estructura normalizada con relaciones Muchos a Muchos (M:M).
- *Automatización (Triggers):* Validación automática de integridad de datos (ej. prevención de registros con páginas negativas).
- *Lógica de Negocio (Functions):* Funciones para reportes estadísticos y búsquedas avanzadas.
- *Optimización:* Uso de Vistas Materializadas para mejorar el rendimiento de consultas frecuentes.
- *Búsqueda Avanzada:* Implementación de Full-Text Search para localización rápida de títulos.
- *Soporte NoSQL:* Consultas con salida en formato JSONB.

## 🚀 Cómo levantar el proyecto

Para asegurar que todas las relaciones y restricciones se creen correctamente, sigue este orden de ejecución de scripts en tu cliente SQL (pgAdmin 4 o psql):

1.  *01_schema.sql*: Ejecuta este primero para crear las tablas base y las llaves primarias/foráneas.
2.  *02_seed.sql*: Carga los datos iniciales (autores, géneros y los 30 libros técnicos).
3.  *03_functions.sql*: Define las funciones de búsqueda y conteo de inventario.
4.  *04_triggers.sql*: Activa los disparadores de validación de datos (evita registros de páginas <= 0).
5.  *05_materialized_views.sql*: Crea la vista de rendimiento para reportes rápidos de stock.
6.  *06_queries.sql*: Contiene consultas de prueba para verificar Full-Text Search y JSONB.

## 🛠️ Tecnologías Utilizadas
* *Motor de BD:* PostgreSQL 12+
* *Lenguaje:* PL/pgSQL
* *Técnicas:* Full-Text Search, JSONB Casting, Materialized Views, Triggers de validación.

## 📂 Estructura de Carpetas
* /sql: Scripts de creación y población de la base de datos.
* /docs: Diccionario de datos detallado y manual técnico.
* /evidencias: Capturas de pantalla de la ejecución y resultados esperados.
