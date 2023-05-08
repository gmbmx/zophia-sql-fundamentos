-- UNION nos entrega la combinación de filas de dos tablas o queries
SELECT 
    nombre,
    apellido,
    pais
FROM empleados

UNION

SELECT
    nombre,
    apellido,
    pais
FROM instructores;

-- UNION es posible siempre y cuando la estructura de las tablas sea la misma
SELECT * FROM empleados
UNION
SELECT * FROM instructores;

-- Si la estructura no es la misma no es posible hacer UNION
SELECT 
    nombre,
    apellido,
    pais
FROM empleados

UNION

SELECT
    nombre,
    apellido
FROM instructores;

-- Mientras la cantidad de columnas sea la misma y del mismo tipo, el UNION es posible
SELECT 
    nombre,
    apellido,
    pais AS country
FROM empleados

UNION

SELECT 
    nombre,
    apellido,
    pais
FROM empleados;


-- Si el tipo de dato no coincide el UNION falla
SELECT
    'A',
    apellido,
    pais
FROM instructores

UNION

SELECT
    3,
    apellido,
    pais AS country
FROM empleados;

-- UNION elimina los duplicados del dataset combinado
SELECT 
    nombre,
    apellido,
    pais
FROM instructores

UNION

SELECT
    nombre,
    apellido,
    pais
FROM instructores;

-- UNION ALL deja los duplicados del dataset combinado
SELECT 
    nombre,
    apellido,
    pais
FROM instructores

UNION ALL

SELECT
    nombre,
    apellido,
    pais
FROM instructores;

-- El uso en conjunto con ORDER BY es en el segundo query
SELECT 
    nombre,
    apellido,
    pais
FROM empleados

UNION

SELECT
    nombre,
    apellido,
    pais
FROM instructores
ORDER BY pais;

-- Queries más complejos requieren el uso de paréntesis
(SELECT 
    nombre,
    apellido,
    pais
FROM empleado
ORDER BY pais)

UNION

SELECT
    nombre,
    apellido,
    pais
FROM instructores;