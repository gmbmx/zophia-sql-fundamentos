-- Normalmente buscamos insertar múltiples filas
INSERT INTO empleados VALUES
	(1, 'Raul', 'Martinez', 'MX', 'raul.martinez@zophia.io', 25000, 0.15, DATE '2022/01/01', 'Recursos Humanos', 'Descripcion', TRUE, TIMESTAMP '2023/03/01 9:00:15'),
	(2, 'Ana', 'Sosa', 'MX', 'ana.sosa@zophia.io', 35000, 0.10, DATE '2021/11/01', 'Recursos Humanos', 'Descripcion', TRUE, TIMESTAMP '2023/03/01 9:05:22'),
	(3, 'Fernanda', 'Gomez', 'AR', 'fernanda.gomez@zophia.io', 28000, 0.12, DATE '2021/10/15', 'Recursos Humanos', 'Descripcion', TRUE, TIMESTAMP '2023/03/01 8:45:22'),
	(4, 'Omar', 'Diaz', 'PE', 'omar.diaz@zophia.io', 20000, 0.10, DATE '2022/03/01', 'Recursos Humanos', 'Descripcion', FALSE, TIMESTAMP '2023/03/01 8:34:15'),
	(5, 'Sara', 'Klein', 'CR', 'sara.klein@zophia.io', 40000, 0.15, DATE '2021/09/01', 'Recursos Humanos', 'Descripcion', TRUE, TIMESTAMP '2023/03/01 10:23:58'),
	(6, 'Karla', 'Maxwell', 'CO', 'karla.maxwell@zophia.io', 38000, 0.12, DATE '2021/09/15', 'Recursos Humanos', 'Descripcion', TRUE, TIMESTAMP '2023/03/01 8:57:34'),
	(7, 'Rodolfo', 'Sanchez', 'MX', 'ana.sosa@zophia.io', 45000, 0.10, DATE '2021/11/01', 'Finanzas', 'Descripcion', TRUE, TIMESTAMP '2023/02/01 9:05:22'),
	(8, 'Maria Luisa', 'Dominguez', 'CH', 'ana.sosa@zophia.io', 29000, 0.08, DATE '2021/11/01', 'Finanzas', 'Descripcion', TRUE, TIMESTAMP '2023/02/01 9:02:29'),
	(9, 'Carlos', 'Ruiz', 'CO', 'carlos.ruiz@zophia.io', 35000, 0.10, DATE '2021/10/15', 'Comercial', 'Descripcion', TRUE, TIMESTAMP '2023/02/01 11:12:20'),
	(10, 'Ana Maria', 'Castro', 'PE', 'ana.castro@zophia.io', 60000, 0.20, DATE '2021/11/01', 'Comercial', 'Descripcion', TRUE, TIMESTAMP '2023/02/22 9:14:22')	
;

-- También es posible insertar valores en sólo algunas columnas
INSERT INTO empleados (id_empleado, nombre, apellido, pais, email, salario, antiguedad)
VALUES
    (11, 'Eduardo', 'Martinez', 'AR', 'eduardo.martinez@zophia.io', 15000, DATE '2022/02/01'),
	(12, 'Veronica', 'Beristain', 'CO', 'veronica.beristain@zophia.io', 22000, DATE '2022/02/01'),
	(13, 'Tracy', 'Powell', 'MX', 'tracy.powell@zophia.io', 30000, DATE '2021/11/15'),
	(14, 'Carlos', 'Chavez', 'CH', 'carlos.chavez@zophia.io', 35000, DATE '2021/11/15'),
	(15, 'Miguel', 'Barbosa', 'AR', 'miguel.barbosa@zophia.io', 25000, DATE '2022/03/01');


-- Podemos insertar una sóla fila
INSERT INTO empleados(id_empleado, nombre, apellido, pais, email, salario, antiguedad)
VALUES (29, 'Oscar', 'Mendoza', 'CO', 'oscar.mendoza@zophia.io', 40000, DATE '2023/03/01');

-- RETURNING es una cláusula opcional que nos regresa la información de las filas insertadas
INSERT INTO empleados(id_empleado, nombre, apellido, pais, email, salario, antiguedad)
VALUES (30, 'Brenda', 'Venegas', 'AR', 'brenda.venegas@zophia.io', 50000, DATE '2023/04/01')
RETURNING *;

-- Podemos usar RETURNING con columnas y alias y múltiples filas
INSERT INTO empleados(id_empleado, nombre, apellido, pais, email, salario, antiguedad)
VALUES 
    (31, 'Carolina', 'Cardenas', 'MX', 'carolina.cardenas@zophia.io', 30000, DATE '2023/05/01'),
    (32, 'Lorena', 'Aguilar', 'PE', 'lorena.aguilar@zophia.io', 25000, DATE '2023/05/01'),
RETURNING id_empleado AS num_empleado;

-- Es posible insertar filas desde otra tabla
SELECT *  
INTO empleados
FROM instructores
WHERE id_empleado > 17;

-- Y también podemos seleccionar e insertar otros campos
SELECT id_empleado, nombre, apellido, pais, email, salario, antiguedad 
INTO empleados
FROM instructores
WHERE id_empleado = 17;