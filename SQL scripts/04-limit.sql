-- LIMIT nos permite determinar la cantidad de filas que nos regresará el query

--Esta es la forma correcta de usar SELECT * de manera segura para explorar tablas
SELECT * 
FROM empleados
LIMIT 5;

SELECT departamento
FROM empleados
LIMIT 2;

SELECT DISTINCT departamento
FROM empleados
LIMIT 2;

--Otro uso común es para obtener "tops" o "bottoms" al usarlo en conjunto con ORDER BY
--TOP
SELECT nombre, 
    salario
FROM empleados
ORDER BY salario DESC
LIMIT 5;

--BOTTOM
SELECT nombre,
    salario
FROM empleados
ORDER BY salario
LIMIT 5;

--OFFSET en conjunto con LIMIT nos permite controlar a partir de qué fila limita el query
SELECT nombre
FROM empleados
ORDER BY salario DESC
LIMIT 5 OFFSET 3;

-- LIMIT no es ANSI-SQL, FECTH sí
SELECT * 
FROM empleados
FETCH NEXT 5 ROWS ONLY;

SELECT * 
FROM empleados
FETCH FIRST 5 ROWS ONLY;

SELECT *
FROM empleados
OFFSET 5 ROWS
FETCH NEXT 3 ROWS ONLY;