-- CASE nos permite hacer lógica condicional
SELECT
    nombre,
    apellido,
    CASE
        WHEN pais = 'MX' THEN 'Nacional'
        ELSE 'Extranjero'
    END AS tipo_empleado
FROM empleados;

-- Las condiciones pueden ser complejas y aplicar funciones
SELECT
    nombre,
    apellido,
    CASE
        WHEN LENGTH(nombre) <5 THEN 'Corto'
        WHEN LENGTH(nombre) BETWEEN 5 AND 8 THEN 'Mediano'
        ELSE 'Largo'
    END AS longitud_nombre
FROM empleados;

-- No podemos hacer referencia a las columnas creadas con CASE
SELECT
    nombre,
    apellido,
    CASE
        WHEN pais = 'MX' THEN 'Nacional'
        ELSE 'Extranjero'
    END AS tipo_empleado
FROM empleados
WHERE tipo_empleado = 'Nacional';

-- ELSE es opcional pero puede generar valores NULL si no se usa
SELECT
    nombre,
    apellido,
    CASE
        WHEN LENGTH(nombre) <5 THEN 'Corto'
        WHEN LENGTH(nombre) BETWEEN 5 AND 8 THEN 'Mediano'        
    END AS longitud_nombre
FROM empleados;

--CASE también se usa frecuentemente con agregaciones
SELECT
    SUM(CASE 
            WHEN salario <=30000 THEN 1
            ELSE 0
        END) AS "<=15000",
    SUM(CASE 
            WHEN salario >30000 THEN 1
            ELSE 0
        END) AS ">15000"
FROM empleados;

-- CASE también puede ser utilizado en agregaciones con GROUP
SELECT
    pais,
    SUM(CASE 
            WHEN salario <=30000 THEN 1
            ELSE 0
        END) AS "<=15000",
    SUM(CASE 
            WHEN salario >30000 THEN 1
            ELSE 0
        END) AS ">15000"
FROM empleados
GROUP BY pais;