-- Para aprovechar todo el conocimiento de SQL debemos conocer cómo cargar desde CSV o XLS
COPY visitantes
FROM '/data/visitantes.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM visitantes;

-- También tendremos en ocasiones que exportar nuestras tablas
COPY empleados
TO '/data/empleados.csv'
DELIMITER ','
CSV HEADER;

-- También podemos especificar queries
COPY (SELECT id_empleado, pais FROM empleados)
TO '/data/pais_empleados.csv'
DELIMITER ','
CSV HEADER;