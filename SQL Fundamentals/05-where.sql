--WHERE nos permite filtrar bajo múltiples posibles condiciones mediante el uso de operadores
SELECT *
FROM empleados
WHERE nombre = '';

--Si el campo es de tipo string (VARCHAR, CHAR, TEXT) recuerda que compara case sensitive
SELECT *
FROM empleados
WHERE nombre = '';

--También podemos comparar con otros tipos de datos
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario = 10000;

--También podemos comparar lo que es diferente o no es igual con !=
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario != 10000;

-- <> es un alias de !=
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario <> 10000;

-- Operador Mayor que >
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario > 10000;

--Operador Menor que <
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario < 10000;

--Operador mayor o igual que >=
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario >= 10000;

--Operador menor o igual que <=
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario <= 10000;

--Ejemplos con fechas
SELECT nombre,
    apellido,
    antiguedad
FROM empleados
WHERE antiguedad >= DATE '01/01/2022';

--Operador AND
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario > 20000
     AND antiguedad >= DATE '01/01/2022';

--Operador OR
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario > 20000 
    OR antiguedad >= DATE '01/01/2022';