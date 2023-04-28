-- Having nos permite filtrar los resultados de un GROUP BY
SELECT 
    COUNT(*) AS num_empleados,
    departamento
FROM empleados
GROUP BY departamento
HAVING COUNT(*) > 3;

-- Es posible filtrar sobre varias agregaciones
SELECT 
    departamento,
    COUNT(*) AS num_empleados,
    MAX(salario) AS max_salario,
    SUM(salario) AS suma_salario
FROM empleados
GROUP BY departamento
HAVING COUNT(*) > 3 AND SUM(salario) > 30000;

-- Podemos aplicar HAVING  en una agregación no incluida en SELECT
SELECT 
    COUNT(*) AS num_empleados,
    departamento
FROM empleados
GROUP BY departamento
HAVING SUM(salario) > 90000;

-- No debemos confundir HAVING con WHERE. Su uso requiere GROUP BY
SELECT
    departamento,
    salario
FROM empleados
HAVING salario > 10000;

-- No debemos usar GROUP BY y HAVING en lugar de WHERE
SELECT
    departamento,
    salario
FROM empleados
GROUP BY departamento, salario
HAVING salario > 10000;

-- WHERE se puede usar en conjunto con HAVING. Considera el orden de ejecución
SELECT
    departamento,
    AVG(salario) as salario_promedio
FROM empleados
WHERE salario > 20000
GROUP BY departamento
HAVING  AVG(salario) >= 25000

-- El orden correcto es
SELECT
    departamento,
    AVG(salario) as salario_promedio
FROM empleados
WHERE salario > 20000
GROUP BY departamento
HAVING  AVG(salario) >= 25000
ORDER BY departamento DESC
LIMIT 1;