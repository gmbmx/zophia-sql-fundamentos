-- Se usa para comentarios de una sola línea

/* Se usa
para comentarios
de varias líneas
*/

SELECT * FROM empleados;
-- '*' es un caracter especial que nos permite seleccionar todas las columnas de la tabla

select * from empleados;
-- Esto funciona ya que SQL no es Case Sensitive

seLEct * FroM empleados;
-- Sigue funcionando, SQL no es Case Sensitive

SELECT * empleados;
--Error, falta un FROM statement

SELECT * FROM empleado;
--Error, nombre de tabla erróneo

SELECT * FROM Empleados;
-- Esto funciona pero no se recomienda

SELECT nombre FROM empleados;
-- Podemos seleccionar sólo una columna

SELECT nombre, apellido FROM empleados;
-- Para seleccionar varias columnas hay que separarlas con comas

SELECT apellido, nombre FROM empleados;
-- El orden en el que solicitamos las columnas importa

SELECT apellido nombre FROM empleados;
--Error, hay que separar las columnas con comas

SELECT apllido, nombre FROM empleados;
--Error, hay que validar que el nombre de las columnas sea correcto

SELECT nombre
    ,apellido_paterno
    ,apellido_materno
FROM empleados;
-- Código limpio, leading comma

SELECT 
    nombre,
    apellido_paterno,
    apellido_materno
FROM empleados;
-- Código limpio, trailing comma

SELECT nombre
    --,apellido_paterno
    ,apellido_materno
FROM empleados;
-- Leading comma permite quitar columnas más fácil al modificar el query

SELECT 
    nombre,
    --apellido_paterno,
    apellido_materno
FROM empleados;
-- Trailing comma también

SELECT --nombre
    ,apellido_paterno
    ,apellido_materno
FROM empleados;
-- Si usas leading comma sólo tendrás que tener cuidado si comentas la primera columna

SELECT 
    nombre,
    apellido_paterno,
    --apellido_materno
FROM empleados;
-- Si usas trailing comma sólo tendrás que tener cuidado si comentas la última columna

SELECT nombre
    apellido_paterno
    ,apellido_materno
FROM empleados;

SELECT 
    nombre,
    apellido_paterno
    apellido_materno
FROM empleados;
--Para muchas personas es más sencillo ver que te falta una coma con trailing comma