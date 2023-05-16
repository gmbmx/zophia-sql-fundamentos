-- Un UPDATE sin condiciones afectará a todas las filas
UPDATE empleados
SET descripcion_puesto = 'SIN DESCRIPCION';

-- Para actualizar sólo algunas filas debemos usar condiciones
UPDATE empleados
SET descripcion_puesto = 'RECLUTAMIENTO Y SELECCION'
WHERE departamento = 'Recursos Humanos'
RETURNING *;

-- Para lógica más compleja podemos usar CASE
UPDATE empleados
SET descripcion_puesto = CASE 
    WHEN departamento = 'Finanzas' THEN 'IMPUESTOS Y NOMINA',
    WHEN departamento = 'Comercial' THEN 'EJECUTIVO DE VENTAS',
    ELSE departamento;

SELECT * FROM empleados;

-- Podemos hacer lógica compleja tomando datos de otra tabla
UPDATE instructores
SET incremento = calculo_incremento.aumento
FROM (
        SELECT pais,
            min(incremento) as aumento
        FROM empleados
        GROUP BY pais
    ) AS calculo_incremento
WHERE pais = calculo_incremento.pais;