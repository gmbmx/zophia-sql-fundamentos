-- NULL nos sirve para identificar valores ausentes
SELECT * FROM instructores;

-- Esto no funciona
SELECT *
FROM instructores
WHERE = NULL;

-- IS NULL es la manera correcta
SELECT *
FROM instructores
WHERE incremento IS NULL;

-- Podemos usar también IS NOT NULL
SELECT *
FROM instructores
WHERE incremento IS NOT NULL;

-- NULL tiene un efecto en ORDER BY
SELECT *
FROM instructores
ORDER BY incremento;

SELECT *
FROM instructores
ORDER BY incremento NULLS FIRST;

SELECT *
FROM instructores
ORDER BY nombre, incremento NULLS LAST;

-- El orden importa si se usa NULLS FIRST/LAST CON ASC/DESC
SELECT *
FROM instructores
ORDER BY incremento DESC NULLS LAST;

--Orden incorrecto
SELECT *
FROM instructores
ORDER BY incremento NULLS LAST DESC;

-- NULL y operadores
SELECT NULL + 5 AS suma_null;

-- Esto no funciona
SELECT *
FROM instructores
WHERE incremento > NULL;

SELECT nombre,
    incremento
FROM instructores
WHERE incremento > 0.10;

SELECT nombre,
    incremento
FROM instructores
WHERE incremento < 0.15;

-- Esto no funciona
SELECT *
FROM instructores
WHERE incremento IN (NULL, 0.10);

SELECT *
FROM instructores
WHERE incremento IS NULL 
	OR incremento = 0.10;

-- Tampoco funciona esto
SELECT *
FROM instructores
WHERE incremento BETWEEN NULL AND 0.15;