-- Primero veamos más a fondo los tipos de dato relacionados con Fechas

-- DATE y TIMESTAMP
SELECT
    DATE '2010-01-01' AS english_date,
    DATE '01-01-2010' AS spanish_date,    
    DATE '12/30/2019' AS mm_dd_yyyy_date,
    TIMESTAMP '2010-01-01 14:15:36' AS english_timestamp,
    TIMESTAMP '01/04/2020 02:32:20' AS spanish_timestamp
;

-- Formatos que no puede determinar automáticamente
SELECT DATE '30-12-2010' AS dd_mm_yyyy_date;

-- Para lograr que lo reconozca PostgreSQL lo ideal es quitar la ambigüedad con el mes explícito
SELECT DATE '30-Dec-2010' AS dd_mm_yyyy_date;
SELECT DATE '01-January-2010' AS dd_mm_yyyy_date;

-- Recuerda que aunque hay opciones válidas, debes usar principalmente las que son legibles:
SELECT DATE '20100101';

-- TIME nos permite trabajar con HH:MM:SS
SELECT
    TIME '03:04:45' AS tiempo,
    TIME '23:12:30' AS tiempo_noche,
	TIME '03:04:45 AM' AS tiempo_am,
	TIME '11:12:23 PM' AS tiempo_pm,
	TIME '00:00:00.234' AS tiempo_ms
;

--Zonas Horarias
SELECT
   TIMESTAMP WITH TIME ZONE '1999-01-08 04:05:06 -8:00' AS timestamp_tz_iso8601,
   TIMESTAMP WITH TIME ZONE '1999-01-08 04:05:06 PST' AS timestamp_tz,
   TIMESTAMP WITH TIME ZONE '1999-01-08 04:05:06 America/New_York' AS timestamp_tz_textual  
;

-- Es necesario especificar WITH TIME ZONE
SELECT TIMESTAMP '1999-01-08 04:05:06 -8:00';

-- El tipo de dato INTERVAL nos sirve para hacer operaciones de tiempo
SELECT 
    INTERVAL '3 hours' AS intervalo_horas,
    INTERVAL '5 minutes' AS intervalo_minutos,
    INTERVAL '10 seconds' AS intervalo_segundos,
    INTERVAL '2 hours 10 minutes' AS intervalo_mixto
;

-- INTERVAL También se pueden representar de la siguiente manera
SELECT 
    INTERVAL '02:00:00' AS intervalo_horas,
    INTERVAL '3' AS intervalo_segundos,
    INTERVAL '00:00:03' AS intervalo_segundos_2,
    INTERVAL '02:10:00 ' AS intervalo_mixto
;

-- Aunque se pueden usar formatos ISO 8601 no lo recomiendo ya que son distintos a los que usan DATE Y TIMESTAMP
SELECT 
    INTERVAL '3H' AS intervalo_horas,
    INTERVAL '5M' AS intervalo_minutos,
    INTERVAL '10S' AS intervalo_segundos,
    INTERVAL '2H 10M' AS intervalo_mixto
;

-- KEYWORDS relacionadas para obtener fechas
SELECT
    CURRENT_TIME,
	CURRENT_DATE,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP(3),
	LOCALTIMESTAMP,
;

--Operaciones con Fechas

-- Operaciones comunes con INTERVAL. INTERVAL con DATE regresa TIMESTAMP
SELECT
    antiguedad + INTERVAL '1Y' AS antiguedad_date,
    antiguedad + INTERVAL '1 seconds' AS antiguedad_timestamp,
    antiguedad - INTERVAL '3 months' AS antiguedad_negativa_date
    INTERVAL '1 day' * 7 AS semana
    INTERVAL '1 day' / 2 AS doce_horas
FROM empleados;

--Operaciones comunes con DATE. Sólo se puede usar + o -
SELECT
    antiguedad,
    antiguedad + 7 AS antiguedad_suma, 
    antiguedad - 7 AS antiguedad_resta,
    antiguedad + CURRENT_TIME AS antiguedad_timestamp,
    CURRENT_DATE - antiguedad AS edad_interval,
    antiguedad - TIME '3:00:00'
FROM empleados;

--TIMESTAMP menos TIMESTAMP regresa INTERVAL
SELECT
    CURRENT_TIMESTAMP - antiguedad AS edad, 
    AGE(CURRENT_TIMESTAMP, antiguedad) AS edad_anios_ms,
    AGE(antiguedad) AS edad_anios -- Usa CURRENT_DATE
FROM empleados;

-- Funciones para obtener fechas
SELECT
	NOW(),
    TIMEOFDAY()
;

-- EXTRACT nos permite extraer partes de DATE o TIMESTAMP. Siempre regresa NUMERIC
SELECT
    EXTRACT(YEAR FROM antiguedad) AS year_antiguedad,
    EXTRACT(MONTH FROM antiguedad) AS month_antiguedad,
    EXTRACT(DAY FROM antiguedad) AS day_antiguedad,
    EXTRACT(QUARTER FROM antiguedad) AS quarter_antiguedad,
    EXTRACT(WEEK FROM antiguedad) AS week_antiguedad,
    EXTRACT(DOW FROM antiguedad) AS day_of_week_antiguedad,
    EXTRACT(DOY FROM antiguedad) AS day_of_year_antiguedad,
    EXTRACT(DECADE FROM antiguedad) AS decade_antiguedad,
    EXTRACT(CENTURY FROM antiguedad) AS century_antiguedad,
    EXTRACT(MILLENNIUM FROM antiguedad) AS millennium_antiguedad
FROM empleados;

--Ejemplos con TIMESTAMP
SELECT
    EXTRACT(HOUR FROM ultimo_ingreso) AS hour_ultimo_ingreso,
    EXTRACT(MINUTE FROM ultimo_ingreso) AS minute_ultimo_ingreso,
    EXTRACT(SECOND FROM ultimo_ingreso) AS second_ultimo_ingreso,
    NOW(),
    EXTRACT(MILLISECOND FROM NOW()) AS millisecond_example,
    EXTRACT(MICROSECOND FROM NOW()) AS microsecond_example
FROM empleados;
 
-- DATE_PART es usada como alternativa a EXTRACT pero no es ANSI SQL. Regresa DOUBLE por lo que puede perder algo de precisión.
SELECT
    DATE_PART('year', antiguedad) AS year_antiguedad,
    DATE_PART('month', antiguedad) AS month_antiguedad,
    DATE_PART('day', antiguedad) AS day_antiguedad,
    DATE_PART('quarter', antiguedad) AS quarter_antiguedad,
    DATE_PART('week', antiguedad) AS week_antiguedad,
    DATE_PART('dow', antiguedad) AS day_of_week_antiguedad,
    DATE_PART('doy', antiguedad) AS day_of_year_antiguedad
FROM empleados;

--Ejemplos con TIMESTAMP
SELECT 
    CURRENT_TIMESTAMP,
    DATE_PART('hour', CURRENT_TIMESTAMP) AS current_hour,
    DATE_PART('minute', CURRENT_TIMESTAMP) AS current_minute,
    DATE_PART('second', CURRENT_TIMESTAMP) AS current_second,
    DATE_PART('millisecond', CURRENT_TIMESTAMP) AS current_millisecond,
    DATE_PART('microsecond', CURRENT_TIMESTAMP) AS current_microsecond,
    EXTRACT(MICROSECOND FROM CURRENT_TIMESTAMP) AS current_microsecond_exact
;

-- DATE_TRUNC
SELECT
    DATE_TRUNC('year', ultimo_ingreso) AS trunc_year,
    DATE_TRUNC('month', ultimo_ingreso) AS trunc_month,
    DATE_TRUNC('day', ultimo_ingreso) AS trunc_day,
    DATE_TRUNC('hour', ultimo_ingreso) AS trunc_hour,
    DATE_TRUNC('minute', ultimo_ingreso) AS trunc_minute,
    DATE_TRUNC('second', ultimo_ingreso) AS trunc_second,
    DATE_TRUNC('quarter', ultimo_ingreso) AS trunc_quarter,
    DATE_TRUNC('decade', ultimo_ingreso) AS trunc_decade,
    DATE_TRUNC('century', ultimo_ingreso) AS trunc_century,
    DATE_TRUNC('millennium', ultimo_ingreso) AS trunc_millennium,
    DATE_TRUNC('milliseconds', NOW()) AS trunc_milliseconds,
    DATE_TRUNC('microseconds', NOW()) AS trunc_microseconds
FROM empleados;

-- MAKE Funciones para crear Fechas
SELECT
    MAKE_DATE(2023, 4, 15),
    MAKE_INTERVAL(years=> 1, months => 2),
    MAKE_TIME(8, 10, 20.3),
    MAKE_TIMESTAMP(2023, 4, 15, 8, 10, 20.3)
;

-- Formato de Fechas
SELECT
    TO_CHAR(ultimo_ingreso, 'HH12:MI:SS PM'),
    TO_CHAR(ultimo_ingreso, 'YYYY/MM/DD'),
    TO_CHAR(ultimo_ingreso, 'YY/MON/DY'),
	TO_CHAR(ultimo_ingreso, 'Day DD, Mon YYYY'),
    TO_CHAR(ultimo_ingreso, 'YYYY-Q'),
    TO_CHAR(INTERVAL '15h 2m 12s', 'HH24:MI:SS'),
FROM empleados;

-- Convertir Strings a DATE
SELECT
    TO_DATE('05 Dec 2020', 'DD Mon YYYY'),
    TO_DATE('30-12-2020', 'DD-MM-YYYY')
;

-- Convertir Strings a TIMESTAMP
SELECT
    TO_TIMESTAMP('05 Dec 2020', 'DD Mon YYYY'),
    TO_TIMESTAMP('30-12-2020 5:35:14 PM', 'DD-MM-YYYY HH:MI:SS PM')
;

--Errores Comunes

-- Usar mal los formatos de fechas
SELECT TO_CHAR(INTERVAL '15h 2m 12s', 'HH:MI:SS');

-- Confundir MM y MI
SELECT TO_CHAR(INTERVAL '15h 2m 12s', 'HH24:MM:SS');