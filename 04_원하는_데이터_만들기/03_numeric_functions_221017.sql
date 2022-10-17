-- 1. Numeric functions - ABS
SELECT ABS(score_float)
FROM student;

-- 2. Numeric functions - CELING / FLOOR
SELECT CELING(score_float)
     , FLOOR(score_float)
FROM student;

-- 3. Numeric functions - ROUND / TRUNCATE
SELECT ROUND(score_float)
     , TRUNCATE(score_float)
FROM student;

-- 4. Numeric functions - POWER
SELECT id
     , name
     , POWER(score, 3)
FROM student;

-- 5. Numeric functions - MOD
SELECT id
     , name
     , MOD(score, 2)
FROM student;
