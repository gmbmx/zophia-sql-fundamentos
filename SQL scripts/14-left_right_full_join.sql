-- Left Join
SELECT
    cursos.id_curso,
    cursos.nombre_curso,
    instructores.nombre
FROM instructores
LEFT JOIN cursos
ON cursos.id_empleado = instructores.id_empleado;

-- Right Join
SELECT
    cursos.id_curso,
    cursos.nombre_curso,
    instructores.nombre
FROM instructores
RIGHT JOIN cursos
ON cursos.id_empleado = instructores.id_empleado;

-- Veamos que suecede si cambiamos el orden de las tablas
SELECT
    cursos.id_curso,
    cursos.nombre_curso,
    instructores.nombre
FROM cursos
LEFT JOIN instructores
ON cursos.id_empleado = instructores.id_empleado;

-- Full Outer Join
SELECT
    cursos.id_curso,
    cursos.nombre_curso,
    instructores.nombre
FROM cursos
FULL JOIN instructores
ON cursos.id_empleado = instructores.id_empleado;

SELECT
    cursos.id_curso,
    cursos.nombre_curso,
    instructores.nombre
FROM cursos
FULL OUTER JOIN instructores
ON cursos.id_empleado = instructores.id_empleado;

-- Detectemos los valores no presentes en las tablas a hacer Join
SELECT
    cursos.id_curso,
    cursos.nombre_curso,
    instructores.nombre
FROM instructores
LEFT JOIN cursos
ON cursos.id_empleado = instructores.id_empleado
WHERE instructores.id_empleado IS NULL;

SELECT
    cursos.id_curso,
    cursos.nombre_curso,
    instructores.nombre
FROM cursos
FULL OUTER JOIN instructores
ON cursos.id_empleado = instructores.id_empleado
WHERE cursos.id_empleado IS NULL OR instructores.id_empleado IS NULL;

-- ¿Cuándo usamos entonces el Right join?
SELECT
    cursos.id_curso,
    cursos.nombre_curso,
    cursos.fecha_inicio,
    cursos.fecha_fin,
    ventas.id_pago,
    ventas.fecha_pago
FROM ventas
RIGHT JOIN cursos
ON ventas.id_curso = cursos.id_curso
WHERE cursos.id_curso IS NULL;

SELECT
    cursos.id_curso,
    cursos.nombre_curso,
    cursos.fecha_inicio,
    cursos.fecha_fin,
    ventas.id_pago,
    ventas.fecha_pago
FROM cursos
LEFT JOIN ventas
ON ventas.id_curso = cursos.id_curso
WHERE cursos.id_curso IS NULL;