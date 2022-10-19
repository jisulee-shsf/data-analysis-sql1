-- 1. SELECT & FROM / USE
-- Q. products_df의 products_table에서 product_name 출력하기
USE products_df;
SELECT product_name
FROM products_table;

-- 2. AS(alias)
-- Q. products_df의 products_table에서 product_name 컬럼명을 new_product_name로 임시 변경하여 출력하기
SELECT product_name AS new_product_name
FROM products_df.products_table;

-- 3. ALTER TABLE
-- Q. products_table 내에 price 컬럼명을 new_price로 변경하기
ALTER TABLE products_table CHANGE COLUMN price new_price INT;

-- 4. LIMIT / DISTINCT
-- Q. products_df의 products_table에서 중복을 제외한 product_name을 10개 출력하기
SELECT DISTINCT product_name
FROM products_df.products_table
LIMIT 10;
