-- Uso general de INTERSECT
SELECT pais
FROM empleados

INTERSECT

SELECT pais
FROM instructores;

-- Uso en conjunto con ORDER BY
SELECT pais
FROM empleados

INTERSECT

SELECT pais
FROM instructores
ORDER BY pais;

-- Uso general de EXCEPT
SELECT pais
FROM empleados

EXCEPT

SELECT pais
FROM instructores;

-- Uso de EXCEPT con ORDER BY
SELECT nombre
FROM empleados

EXCEPT

SELECT nombre
FROM instructores
ORDER BY nombre;