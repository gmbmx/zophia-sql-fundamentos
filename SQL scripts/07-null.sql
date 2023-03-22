-- NULL nos sirve para identificar valores ausentes
SELECT * FROM;

-- Esto no funciona
SELECT *
FROM
WHERE = NULL;

-- IS NULL es la manera correcta
SELECT *
FROM
WHERE IS NULL;

-- Podemos usar también IS NOT NULL
SELECT *
FROM
WHERE IS NOT NULL;

-- NULL tiene un efecto en ORDER BY
SELECT *
FROM
ORDER BY;

SELECT *
FROM empleados
ORDER BY nombre NULLS FIRST;

SELECT *
FROM empleados
ORDER BY nombre NULLS LAST;

-- El orden importa si se usa NULLS FIRST/LAST CON ASC/DESC
SELECT *
FROM empleados
ORDER BY nombre DESC NULLS LAST;

SELECT *
FROM empleados
ORDER BY nombre NULLS LAST DESC;

-- NULL y operadores
SELECT NULL + 5 AS suma_null;

SELECT 
FROM
WHERE suma > NULL;

SELECT 
FROM
WHERE suma > 500;

SELECT 
FROM
WHERE suma < 500;

SELECT 
FROM
WHERE IN (NULL, '');

SELECT
FROM
WHERE BETWEEN NULL AND 50;