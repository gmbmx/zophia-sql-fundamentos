-- Concatenar valores de columnas
SELECT nombre || apellido AS nombre_completo
FROM empleados;

SELECT CONCAT(nombre, apellido) AS nombre_completo
FROM empleados;

--Agregamos un espacio a la concatenación
SELECT nombre || ' ' || apellido AS nombre_completo
FROM empleados;

SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo
FROM empleados;

-- CONCAT_WS nos permite usar un separador
SELECT CONCAT_WS(' ',nombre, apellido) AS nombre_completo
FROM empleados;

SELECT CONCAT_WS(',', nombre, apellido) AS nombre_completo
FROM empleados;

SELECT CONCAT_WS(' ', 'Nombre:', nombre, apellido) AS nombre_reporte
FROM empleados;

-- Cambiar mayúsculas y minúsculas
SELECT nombre,
    LOWER(nombre) AS nombre_minusc,
    UPPER(nombre) AS nombre_mayusc,
FROM empleados;

/*Capitalizar como si fuera oración. Cualquier caracter no alfanumérico lo cuenta
como palabra separada*/
SELECT email,
	INITCAP(email) AS email_oracion
FROM empleados;

-- Extraer partes de la cadena. El índice comienza desde 1
SELECT nombre,
    SUBSTRING(nombre, 2) AS segunda_letra_nombre,
    SUBSTRING(nombre, 1, 1) AS primera_letra_nombre,
    SUBSTRING(nombre, 2, 2) AS letras_nombre,
	SUBSTRING(nombre, 10, 2) AS letras_nombre_fuera
FROM empleados;

SELECT nombre,
	LEFT(nombre, 2) AS primeras_2_letras,
	LEFT(nombre, -2) AS ultimas_2_letras,
FROM empleados;

SELECT nombre,
	RIGHT(nombre, 2) AS ultimas_2_letras,
	RIGHT(nombre, -2) AS primeras_2_letras,
FROM empleados;

-- Extraer partes a partir de un separador
SELECT email,
	SPLIT_PART(email, '@', 1) AS email_Solo_nombre,
	SPLIT_PART(email, '.', 1) AS email_nombre,
	SPLIT_PART(email, '.', 2) AS email_apellido
FROM empleados;

--Obtener índice de cadenas
SELECT email,
	STRPOS(email, '@') AS posicion_at,
	STRPOS(email, '.io') AS posicion_dominio,
	STRPOS(email, '.com') AS posicion_inexistente
FROM empleados;

-- Obtener longitud de la cadena
SELECT nombre,
    LENGTH(nombre) AS longitud_nombre
FROM empleados;

--Invertir el orden de la cadena
SELECT nombre,
    REVERSE(nombre) AS nombre_reversa
FROM empleados;

-- Reemplazar valores en cadena. El match debe ser exacto
SELECT apellido,
    REPLACE(apellido, 'ez', 'EZ') AS cambio_apellido,
    REPLACE(apellido, 'eZ', 'EZ') AS no_cambio_apellido
FROM empleados;

-- Obtener booleano si la cadena comienza con un prefijo
SELECT nombre,
    STARTS_WITH(nombre, 'M') AS nombre_empieza_M,
	STARTS_WITH(nombre, 'Ma') AS nombre_empieza_Ma
FROM empleados;

-- Quitar caracteres
SELECT 
	LTRIM('    cadena', ' ') AS cadena,
	RTRIM('cadena   p', ' ') AS cadena_rtrim,
	RTRIM('cadena.  p', ' p') AS cadena_rtrim_punto,
	BTRIM('   cadena  ', ' ') AS cadena_btrim,
	TRIM(LEADING '  cadena  '),
	TRIM(TRAILING '  cadena  '),
	TRIM(BOTH '  cadena  '),
	TRIM('  cadena  ')
FROM empleados;

-- Anidar funciones
SELECT
	BTRIM('   cadena  ', ' ') || 'prueba' AS cadena_btrim,
	CONCAT(
			BTRIM('   cadena  ', ' '), 
			'prueba'
		 ) AS cadena_concat_btrim
FROM empleados;