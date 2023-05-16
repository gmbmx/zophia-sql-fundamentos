-- ALTER TABLE nos permite agregar columnas

ALTER TABLE empleados
ADD COLUMN mi_columna TEXT;

ALTER TABLE empleados
ADD COLUMN mi_fecha DATE,
ADD COLUMN mi_numero INT;

SELECT * FROM empleados;

--También podemos eliminar columnas

ALTER TABLE empleados
DROP COLUMN mi_columna;

ALTER TABLE empleados
DROP COLUMN mi_fecha,
DROP COLUMN mi_numero;

SELECT * FROM empleados;

-- Podemos renombrar la tabla y/o columnas
ALTER TABLE IF EXISTS empleados
RENAME TO empleado;

ALTER TABLE empleado;
RENAME antiguedad TO fecha_ingreso;

ALTER TABLE IF EXISTS empleado
RENAME TO empleados;

-- RENAME no permite cambiar el nombre a varias columnas en una misma sentencia
ALTER TABLE empleado;
RENAME nombre TO nombre_empleado,
RENAME apellido TO apellido_empleado;
