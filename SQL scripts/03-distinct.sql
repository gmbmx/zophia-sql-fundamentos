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

--Errores comunes

-- Hacer ORDER BY y no incluir la columna en SELECT DISTINCT
SELECT DISTINCT departamento
FROM empleados
ORDER BY nombre;

--Repetir DISTINCT para cada columna
SELECT DISTINCT departamento,
    DISTINCT nombre
FROM empleados;

--DISTINCT en Postgres puede usarse también de esta forma pero falla en otros motores
SELECT DISTINCT(departamento), nombre
    FROM empleados;
	
--Pensar que podemos aplicar DISTINCT sólo a una columna
SELECT departamento, DISTINCT nombre
    FROM empleados;

-- Orden equivocado genera resultado erróneo
SELECT departamento DISTINCT
FROM empleados;
