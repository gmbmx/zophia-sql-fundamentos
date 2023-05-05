-- Primer intento
SELECT
    nombre,
    apellido,
    nombre_curso
FROM empleados
INNER JOIN cursos
ON id_empleado = id_empleado;

-- Segundo intento
SELECT
    nombre,
    apellido,
    nombre_curso
FROM instructores
INNER JOIN cursos
ON instructores.id_empleado = cursos.id_empleado;

-- Buena legibilidad de código
SELECT
    instructores.nombre,
    instructores.apellido,
    cursos.nombre_curso
FROM instructores
INNER JOIN cursos
ON instructores.id_empleado = cursos.id_empleado;

-- Esta es la sintaxis que usa la mayoría
SELECT 
    i.nombre,
    i.apellido,
    c.nombre_curso
FROM instructores i
JOIN cursos c
ON i.id_empleado = c.id_empleado;

-- El alias en las tablas puede ser explícito
SELECT 
    i.nombre,
    i.apellido,
    c.nombre_curso
FROM instructores AS i
JOIN cursos AS c
ON i.id_empleado = c.id_empleado;

-- Hace mucho tiempo así se hacían algunos INNER JOINS. Hoy en día es una mala práctica
SELECT 
    i.nombre,
    i.apellido,
    c.nombre_curso
FROM instructores i,
    cursos c
WHERE i.id_empleado = c.id_empleado;

--Orden de queries con join
SELECT
    instructores.nombre,
    instructores.apellido,
    instructores.pais,
    cursos.nombre_curso
FROM instructores
INNER JOIN cursos
ON instructores.id_empleado = cursos.id_empleado
WHERE instructores.pais != 'MX'
ORDER BY instructores.pais;

-- Podemos hacer GROUP BY en conjunto con JOIN
SELECT
    instructores.pais,
    COUNT(cursos.id_curso) AS num_cursos   
FROM instructores
INNER JOIN cursos
ON instructores.id_empleado = cursos.id_empleado
WHERE instructores.pais != 'MX'
GROUP BY instructores.pais
ORDER BY instructores.pais;

-- Orden completo
SELECT
    instructores.pais,
    COUNT(cursos.id_curso) AS num_cursos   
FROM instructores
INNER JOIN cursos
ON instructores.id_empleado = cursos.id_empleado
WHERE instructores.pais != 'MX'
GROUP BY instructores.pais
HAVING num_cursos > 1
ORDER BY instructores.pais
LIMIT 1;

-- Cardinalidad y cómo afecta
SELECT
    ventas.monto,
    cursos.nombre_curso,
    cursos.propiedad
FROM ventas
INNER JOIN cursos
ON ventas.id_curso = cursos.id_curso;

--Múltiples JOINS
SELECT
    instructores.nombre,
    instructores.apellido,
    ventas.monto,
    cursos.nombre_curso,
    cursos.propiedad
FROM ventas
INNER JOIN cursos
ON ventas.id_curso = cursos.id_curso
INNER JOIN instructores
ON instructores.id_empleado = cursos.id_empleado;