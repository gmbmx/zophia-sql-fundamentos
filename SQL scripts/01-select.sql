-- Se usa para comentarios de una sola línea

/* Se usa
para comentarios
de varias líneas
*/

-- '*' es un caracter especial que nos permite seleccionar todas las columnas de la tabla
SELECT * FROM empleados;

-- Esto funciona ya que SQL no es Case Sensitive
select * from empleados;

-- Sigue funcionando, SQL no es Case Sensitive
seLEct * FroM empleados;

--Error, falta un FROM clause
SELECT * empleados;

--Error, nombre de tabla erróneo
SELECT * FROM empleado;

-- Esto funciona pero no se recomienda
SELECT * FROM Empleados;

-- Podemos seleccionar sólo una columna
SELECT nombre FROM empleados;

-- Para seleccionar varias columnas hay que separarlas con comas
SELECT nombre, apellido FROM empleados;

-- El orden en el que solicitamos las columnas importa
SELECT apellido, nombre FROM empleados;

--Error, hay que separar las columnas con comas
SELECT apellido nombre FROM empleados;

--Error, hay que validar que el nombre de las columnas sea correcto
SELECT apllido, nombre FROM empleados;

-- Código limpio, leading comma
SELECT nombre
    ,apellido
    ,pais
    ,email
FROM empleados;

-- Código limpio, trailing comma
SELECT 
    nombre,
    apellido,
    pais,
    email
FROM empleados;

-- Leading comma permite quitar columnas más fácil al modificar el query
SELECT nombre
    --,apellido
    ,pais
    ,email
FROM empleados;

-- Trailing comma también
SELECT 
    nombre,
    --apellido,
    pais,
    email
FROM empleados;

-- Si usas leading comma sólo tendrás que tener cuidado si comentas la primera columna
SELECT --nombre
    ,apellido
    ,pais
    ,email
FROM empleados;

-- Si usas trailing comma sólo tendrás que tener cuidado si comentas la última columna
SELECT 
    nombre,
    apellido,
    pais,
    --email
FROM empleados;

--Para muchas personas es más sencillo ver que te falta una coma con trailing comma
SELECT nombre
    apellido
    ,pais
    ,email
FROM empleados;

SELECT 
    nombre,
    apellido
    pais,
    email
FROM empleados;

--Uso de AS para alias de columna
SELECT nombre, 
    apellido AS apellido_paterno
FROM empleados;

--Usar constantes para "nuevas" columnas. La columna NO se crea en la tabla
SELECT 
    nombre,
    apellido,
    5 AS numero, 
    'Zophia' AS empresa,
    DATE '2020-01-01' AS fecha_ingreso    
FROM empleados;
