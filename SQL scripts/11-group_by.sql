-- GROUP BY  es una snetencia muy importante que nos permite realizar agregaciones por grupo
SELECT 
    COUNT(*) AS num_empleados,
    departamento
FROM empleados
GROUP BY departamento;

-- El orden del query cada vez es más complejo e importante
SELECT
    COUNT(*) AS num_empleados,
    departamento
FROM empleados
GROUP BY departamento
ORDER BY departamento;

SELECT
    COUNT(*) AS num_empleados,
    departamento
FROM empleados
GROUP BY departamento
ORDER BY departamento
LIMIT 2;

-- Podemos aplicar varias funciones de agregación por grupo:
SELECT 
    departamento,
    COUNT(*) AS num_empleados,
    MAX(salario) AS max_salario,
    SUM(salario) AS suma_salario
FROM empleados
GROUP BY departamento;

-- Los filtros se aplican antes que el GROUP BY
SELECT
    departamento,
    COUNT(*) AS num_empleados,
    MAX(salario) AS max_salario,
    SUM(salario) AS suma_salario
FROM empleados
WHERE salario < 15000
GROUP BY departamento;

--También el orden de ejecución adquiere mayor relevancia
SELECT
    COUNT(*) AS num_empleados,
    pais
FROM empleados
WHERE pais <> 'MX'
GROUP BY pais
ORDER BY pais
LIMIT 5;

-- También podemos usar GROUP BY con varias columnas
SELECT
    departamento,
    pais,
    COUNT(*) AS num_empleados,
    SUM(salario) AS suma_salario
FROM empleados
WHERE pais != 'MX'
GROUP BY departamento, pais;

-- Es posible usar columnas calculadas en el GROUP BY
SELECT
    LOWER(pais) AS pais_lower,
    COUNT(*) AS num_empleados
FROM empleados
WHERE pais != 'MX'
GROUP BY pais_lower;

-- No es posible usar columnas calculadas en WHERE
SELECT
    LOWER(pais) AS pais_lower,
    COUNT(*) AS num_empleados
FROM empleados
WHERE pais_lower != 'mx'
GROUP BY pais_lower;

-- Es posible usar columnas calculadas en ORDER BY
SELECT
    COUNT(*) AS num_empleados,
    pais
FROM empleados
WHERE pais <> 'MX'
GROUP BY pais
ORDER BY num_empleados DESC
LIMIT 5;

-- Si usamos GROUP BY debemos aprovechar su funcionalidad
SELECT
    departamento,
    salario
FROM empleados
GROUP BY departamento, salario;

-- Aunque es válido usar GROUP BY en lugar de DISTINCT para quitar duplicados, afecta la legibilidad
SELECT
    departamento
FROM empleados
GROUP BY departamento;