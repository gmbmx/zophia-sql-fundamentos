--Presencia de duplicados
SELECT departamento
FROM empleados;

--DISTINCT nos permite quitar duplicados, se usa en conjunto con SELECT
SELECT DISTINCT departamento
FROM empleados;

--Se puede usar en conjunto con otros campos
SELECT DISTINCT departamento, nombre
FROM empleados;

--Comparemos
SELECT departamento, nombre
FROM empleados;

--Usemos ORDER BY
SELECT DISTINCT departamento
FROM empleados
ORDER BY departamento;

SELECT DISTINCT departamento
FROM empleados
ORDER BY nombre;

--Errores comunes

--Repetir DISTINCT para cada columna
SELECT DISTINCT departamento,
    DISTINCT nombre
FROM empleados;

--Pensar que DISTINCT es una función
SELECT DISTINCT(departamento), nombre
    FROM empleados;

--Orden equivocado
SELECT departamento DISTINCT
FROM empleados;