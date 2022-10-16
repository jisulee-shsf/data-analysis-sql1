-- Q1. 숫자형 데이터 함수 - ABS
SELECT ABS(score_float)
FROM student;

-- Q2. 숫자형 데이터 함수 - CELING / FLOOR
SELECT CELING(score_float), FLOOR(score_float)
FROM student;

-- Q3. 숫자형 데이터 함수 - ROUND / TRUNCATE
SELECT ROUND(score_float), TRUNCATE(score_float)
FROM student;

-- Q4. 숫자형 데이터 함수 - POWER
SELECT id, name, POWER(score, 3)
FROM student;

-- Q5. 숫자형 데이터 함수 - MOD
SELECT id, name, MOD(score, 2)
FROM student;
