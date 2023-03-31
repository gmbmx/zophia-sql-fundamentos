-- El ordenamiento default es de menor a mayor
SELECT *
FROM empleados
ORDER BY nombre;

-- El tipo de dato es importante para el ordenamiento
SELECT *
FROM empleados
ORDER BY antiguedad;

-- Usamos DESC para ordenar de mayor a menor
SELECT nombre
FROM empleados
ORDER BY nombre DESC;

-- Usamos ASC para ordenar explícitamente de menor a mayor
SELECT nombre
FROM empleados
ORDER BY nombre ASC;

-- Para ordenar por múltiples campos hay que separarlos con coma
SELECT nombre, 
    apellido,
    departamento
FROM empleados
ORDER BY departamento,
    nombre;

-- El orden de los campos en ORDER BY determina cómo lo hará
SELECT nombre, 
    apellido,
    departamento
FROM empleados
ORDER BY nombre,
    departamento;

--Podemos combinar el ordenamiento por columnas
SELECT nombre, 
    apellido,
    departamento
FROM empleados
ORDER BY departamento DESC,
    nombre; 

--Otro ejemplo que mezcla la manera de ordenar
SELECT nombre, 
    apellido,
    departamento
FROM empleados
ORDER BY departamento,
    nombre DESC;

--Errores comunes

--Orden de los clauses
SELECT *
ORDER BY nombre
FROM empleados;

--Orden en DESC
SELECT *
FROM empleados
ORDER BY DESC departamento;

--Falta de comas
SELECT *
FROM empleados
ORDER BY departamento 
    DESC nombre;
	
--No incluir el campo de ORDER BY en SELECT
SELECT nombre
FROM empleados
ORDER BY departamento;