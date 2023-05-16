-- Revisemos cómo creamos una de las tablas que hemos estado usando

DROP TABLE IF EXISTS empleados;

-- Si no usamos IF EXISTS y la tabla no existe tendremos ERROR
DROP TABLE empleados;

-- Creemos nuevamente la tabla
CREATE TABLE IF NOT EXISTS empleados (
	id_empleado int,
	nombre varchar(255),
	apellido varchar(255),
	pais varchar(255),
	email varchar(255),
	salario int,
	incremento decimal,
	antiguedad date,
	departamento varchar(255),
	descripcion_puesto text,
	contrato_permanente boolean,
	ultimo_ingreso timestamp
);

-- CREATE TABLE no genera datos, sólo la estructura
SELECT * FROM empleados;

-- Podemos crear tablas a partir de otras tablas
CREATE TABLE copia_instructores
AS
SELECT * 
FROM instructores
WHERE id_empleado < 20;

-- Siempre hay que usar IF NOT EXISTS para crear tablas
CREATE TABLE IF NOT EXISTS copia_instructores
AS
SELECT * 
FROM instructores
WHERE id_empleado < 20;

-- Truncate nos permite eliminar todos los datos de la tabla pero mantiene la estructura
TRUNCATE copia_instructores;
SELECT * FROM copia_instructores;

DROP TABLE IF EXISTS copia_instructores;