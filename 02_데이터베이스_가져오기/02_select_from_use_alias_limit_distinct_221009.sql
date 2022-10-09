-- Q1. SELECT / FROM 사용하기
SELECT column_name
FROM database_name.table_name;

-- Q2. USE 사용하기
USE database_name;
SELECT column_name
FROM table_name;

-- Q3. AS(ALIAS) 사용 및 ALTER TABLE 구문과 차이 비교하기
SELECT column_name AS alias_column_name
FROM database_name.table_name;
ALTER TABLE table_name CHANGE COLUMN column_name alias_column_name INT;

-- Q4. LIMIT 사용하기
SELECT column_name
FROM database_name.table_name
LIMIT 10;

-- Q5. DISTINCT 사용하기
SELECT DISTINCT column_name
FROM database_name.table_name;