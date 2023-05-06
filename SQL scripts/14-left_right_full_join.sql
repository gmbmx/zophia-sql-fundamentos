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

-- Right join
SELECT
    cursos.id_curso,
    cursos.nombre_curso,
    cursos.fecha_inicio,
    cursos.fecha_fin,
    pagos.id_pago,
    pagos.fecha_pago
FROM pagos
RIGHT JOIN cursos
ON pagos.id_curso = pagos.id_curso;