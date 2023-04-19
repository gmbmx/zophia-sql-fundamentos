--Valor Absoluto
SELECT
    ABS(-1),
    ABS(0),
    ABS(1),
    ABS(-1.2)
;

-- Relacionadas con Decimales
SELECT
    CEIL(2.2),
    CEIL(-2.7),
    CEIL(2)
;

SELECT
    FLOOR(2.3),
    FLOOR(-2.3),
    FLOOR(2)
;

SELECT
    ROUND(2.3),
    ROUND(2.5),
    ROUND(2.6),
    ROUND(-2.3),
    ROUND(-2.5),
    ROUND(-2.6),
    ROUND(4.5678, 2),
    ROUND(4.55555, 3)
;

SELECT
    TRUNC(2.3),
    TRUNC(-2.3),
    TRUNC(4.5678),
    TRUNC(4.5678, 3)
;

-- Relacionadas con la División
SELECT 
    DIV(9,2),
    MOD(9,2),
    9 % 2
;

-- Potencias y Raíces
SELECT 
    POWER(2,4),
    SQRT(4),
    CBRT(8),
    POWER(8,-3)
;

-- Generar números aleatorios
SELECT RANDOM();

-- Para generar dentro de un rango A-B : RANDOM() * (B - A) + A
SELECT RANDOM() * (10 - 1) + 1

-- Funciones matemáticas avanzadas
SELECT
    LOG(100),
    LOG10(100),
    LOG(2, 64)
    LN(2),
    EXP(2),
    FACTORIAL(5),
    PI()
;

-- Funciones trginométricas
SELECT
    SIN(1),
    SIND(30),
    COS(1),
    COSD(90),
    ATAN(1),
    ATAND(1),
    DEGREES(1),
    RADIANS(45)
;