-- Q1. String functions - LOCATE
SELECT major
     , LOCATE('e', major)
FROM student;

-- Q2. String functions - SUBSTRING
SELECT major
     , SUBSTRING(major, 3)
FROM student;

-- Q3. String functions - RIGHT / LEFT
SELECT major
     , RIGHT(major, 3)
FROM student;

SELECT major
     , LEFT(major, 3)
FROM student;

-- Q4. String functions - UPPER / LOWER
SELECT major
     , UPPER(major)
FROM student;

SELECT major
     , LOWER(major)
FROM student;

-- Q5. String functions - LENGTH
SELECT major
     , LENGTH(major)
FROM student;

-- Q6. String functions - CONCAT
SELECT major
     , CONCAT(LEFT(major, 1), RIGHT(major, 1)) AS concat_text
FROM student;

-- Q7. String functions - REPLACE
SELECT major
     , REPLACE(major, 'e', '_')
FROM student;
