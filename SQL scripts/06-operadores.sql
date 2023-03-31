-- Recuerda que = > < >= <= AND y OR también son operadores

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

--Operadores matemáticos
SELECT 
    salario + 500,
    salario - 500,
    salario * 2,
    salario / 2,
    salario % 10 -- Módulo o cociente de la división
FROM empleados;

--Usamos alias para nombrar las nuevas columnas
SELECT 
    salario + 500 AS incremento_salario,
    salario - 500 AS decremento_salario,
    salario * 2 AS multiplica_salario,
    salario / 2 AS divide_salario,
    salario % 10 AS modulo_salario
FROM empleados;