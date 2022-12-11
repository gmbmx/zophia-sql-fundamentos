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

--Operador IN
SELECT nombre,
    apellido,
    departamento
FROM empleados
WHERE departamento
     IN ('', '', '');

--IN puede usarse con cualquier tipo de dato
SELECT nombre,
    apellido,
    departamento
FROM empleados
WHERE salario
     IN (10000, 15000, 20000);

--IN es equivalente a
SELECT nombre,
    apellido,
    departamento
FROM empleados
WHERE departamento = '' 
    OR departamento = '' 
    OR departamento = '';

-- Operador Between nos permite buscar por rangos
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario BETWEEN 10000 AND 15000;

--Operador Between con fechas
SELECT nombre,
    apellido,
    antiguedad
FROM empleados
WHERE antiguedad BETWEEN DATE '01/01/2021' AND DATE '01/01/2022';

--Between es equivalente a
SELECT nombre,
    apellido,
    salario
FROM empleados
WHERE salario >= 10000 AND salario <= 15000;

--Operador NOT
SELECT nombre,
    apellido,
    departamento
FROM empleados
WHERE departamento NOT IN ('','','');

SELECT nombre,
    apellido,
    antiguedad
FROM empleados
WHERE antiguedad NOT BETWEEN DATE '01/01/2021' AND DATE '01/01/2022';

--Operador LIKE
--Uso de %
SELECT nombre
FROM empleados
WHERE nombre LIKE 'M%';

SELECT nombre,
    apellido
FROM empleados
WHERE apellido LIKE 'Gom%';

SELECT nombre,
    apellido
FROM empleados
WHERE apellido LIKE '%ez';

SELECT nombre,
    apellido
FROM empleados
WHERE apellido LIKE '%me%';

--Uso de _
SELECT nombre
FROM empleados
WHERE nombre LIKE '_avid';

SELECT nombre
FROM empleados
WHERE nombre LIKE '_a_a';

SELECT nombre
FROM empleados
WHERE nombre LIKE '_a%';

--NOT LIKE
SELECT nombre
FROM empleados
WHERE nombre NOT LIKE 'M%';