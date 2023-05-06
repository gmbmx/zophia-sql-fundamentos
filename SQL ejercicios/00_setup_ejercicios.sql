--Creación de tablas

DROP TABLE IF EXISTS instructores;

CREATE TABLE IF NOT EXISTS instructores (
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

--Agregando datos
INSERT INTO instructores VALUES
	(16, 'Ray', 'Mendez', 'MX', 'ray.mendez@zophia.io', 15000, NULL, DATE '2023/01/01', 'Instructor', 'Descripcion', TRUE, TIMESTAMP '2022/03/01 19:02:17'),
	(17, 'Paola', 'Zapata', 'MX', 'paola.zapata@zophia.io', 15000, 0.10, DATE '2022/11/01', 'Instructor', 'Descripcion', TRUE, TIMESTAMP '2022/03/01 20:15:42'),
	(18, 'Iris', 'Ascencio', 'AR', 'iris.ascencio@zophia.io', 8000, NULL, DATE '2022/10/15', 'Instructor', 'Descripcion', TRUE, TIMESTAMP '2022/01/01 10:45:30'),
	(19, 'Bruno', 'Segovia', 'CO', 'bruno.segovia@zophia.io', 10000, 0.15, DATE '2023/03/01', 'Instructor', 'Descripcion', FALSE, TIMESTAMP '2022/02/01 14:54:17'),
	(20, 'Kevin', 'Jones', 'CH', 'kevin.jones@zophia.io', 10000, NULL, DATE '2022/09/01', 'Instructor', 'Descripcion', TRUE, TIMESTAMP '2022/02/22 22:17:09'),
	(21, 'Nadia', 'Cuevas', 'PE', 'nadia.cuevas@zophia.io', 20000, 0.20, DATE '2023/03/01', 'Instructor', 'Descripcion', TRUE, TIMESTAMP '2022/03/04 10:32:45')		
;

CREATE TABLE cursos (
	id_empleado int,
	id_curso varchar(6),
	nombre_curso varchar(255),
	area_curso varchar(255),
	fecha_inicio date,
	fecha_fin date,
	propiedad int
);

INSERT INTO cursos(id_empleado, id_curso, nombre_curso, fecha_inicio, fecha_fin, propiedad) VALUES
	(16, 'DE0001', 'ETL con Apache Spark', DATE '2023/01/10', DATE '2023/03/10', 70),
	(16, 'DA0001', 'Visualizacion con Tableau', DATE '2023/01/15', DATE '2023/04/01', 70),
	(17, 'DA0002', 'Estadistica Avanzada', DATE '2023/03/10', DATE '2023/06/10', 60),
	(18, 'DA0002', 'Estadistica Avanzada', DATE '2023/03/10', DATE '2023/06/10', 40),
	(19, 'DE0002', 'Arquitecturas de Datos', DATE '2023/04/01', DATE '2023/07/01', 100),
	(20, 'DE0001', 'ETL con Apache Spark', DATE '2023/01/10', DATE '2023/03/10', 30),
	(20, 'DA0001', 'Visualizacion con Tableau', DATE '2023/01/15', DATE '2023/04/01', 30),
	(20, 'DA0003', 'Analisis de Marketing Digital', DATE '2023/04/10', DATE '2023/06/15', 100),
	(22, 'DE0003', 'Streaming con Apache Kafka', DATE '2023/05/10', DATE '2023/07/15', 100),
	(17, 'DA0005', 'Fundamentos de SQL', DATE '2023/06/01', NULL, 100);