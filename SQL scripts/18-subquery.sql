-- Los subqueries son esenciales para hacer lógica compleja en SQL
SELECT 
    FLOOR(AVG(salario)) as salario_promedio
FROM empleados;

SELECT 
    nombre,
    apellido,
    salario
FROM empleados
WHERE salario > 32133

-- Mediante el uso de subqueries hacemos más eficiente y evitamos código manual
SELECT 
    nombre,
    apellido,
    salario
FROM empleados
WHERE salario > (
    SELECT 
        FLOOR(AVG(salario)) as salario_promedio
    FROM empleados
);

-- Otro uso común de subqueries es con el operador IN:
SELECT
    id_curso,
    nombre_curso
FROM cursos
WHERE id_curso IN(
    SELECT id_curso
    FROM ventas
);

-- Para evitar duplicados debemos usar DISTINCT
SELECT DISTINCT
    id_curso,
    nombre_curso
FROM cursos
WHERE id_curso IN(
    SELECT id_curso
    FROM ventas
);

-- También nos permite agregar columnas
SELECT
    id_curso,
    nombre_curso,
    (
        SELECT count(id_pago) AS num_ventas
        FROM ventas;
        WHERE ventas.id_curso = cursos.id_curso
    )
FROM cursos
ORDER BY id_curso;

-- También se usa en JOINS complejos:
SELECT
    empleados.nombre,
	empleados.apellido,
	empleados.pais,
	ROUND(empleados.salario - salario.salario_promedio,2) AS diferencia_salario	
FROM empleados
INNER JOIN(
    SELECT 
        AVG(salario) AS salario_promedio,
		pais
    FROM empleados
	GROUP BY pais
) AS salario
ON empleados.pais = salario.pais;