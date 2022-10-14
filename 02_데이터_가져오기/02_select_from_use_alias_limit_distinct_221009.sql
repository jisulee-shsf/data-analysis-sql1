-- Q1. SELECT / FROM) Products_df 데이터베이스 내에 Products 테이블에서 ProductName 출력하기
SELECT ProductName
FROM Products_df.Products;

-- Q2. USE) USE를 사용해 Products_df 데이터베이스 내에 Products 테이블에서 ProductName 출력하기
USE Products_df;
SELECT ProductName
FROM Products;

-- Q3-1. AS) Products_df 데이터베이스 내에 Products 테이블에서 Products_df를 'New_Products_df'으로 출력하기
SELECT Products_df AS New_Products_df
FROM Products_df.Products;

-- Q3-2. ALTER TABLE) Price를 'New_Price'으로 컬럼명 변경하기
ALTER TABLE Products CHANGE COLUMN Price New_Price INT;

-- Q4. LIMIT) Products_df 데이터베이스 내에 Products 테이블에서 ProductName을 10개만 출력하기
SELECT ProductName
FROM Products_df.Products
LIMIT 10;

-- Q5. DISTINCT) Products_df 데이터베이스 내에 Products 테이블에서 ProductName을 중복 없이 출력하기
SELECT DISTINCT ProductName
FROM Products_df.Products;
