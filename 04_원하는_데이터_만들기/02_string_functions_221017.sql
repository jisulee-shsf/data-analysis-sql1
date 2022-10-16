-- Q1. 문자형 데이터 함수 - LOCATE
SELECT major
     , LOCATE('e', major)
FROM student;

-- Q2. 문자형 데이터 함수 - SUBSTRING
SELECT major
     , SUBSTRING(major, 3)
FROM student;

-- Q3. 문자형 데이터 함수 - RIGHT / LEFT
SELECT major
     , RIGHT(major, 3)
FROM student;

SELECT major
     , LEFT(major, 3)
FROM student;

-- Q4. 문자형 데이터 함수 - UPPER / LOWER
SELECT major
     , UPPER(major)
FROM student;

SELECT major
     , LOWER(major)
FROM student;

-- Q5. 문자형 데이터 함수 - LENGTH
SELECT major
     , LENGTH(major)
FROM student;

-- Q6. 문자형 데이터 함수 - CONCAT
SELECT major
     , CONCAT(LEFT(major, 1), RIGHT(major, 1)) AS concat_text
FROM student;

-- Q7. 문자형 데이터 함수 - REPLACE
SELECT major
     , REPLACE(major, 'e', '_')
FROM student;
