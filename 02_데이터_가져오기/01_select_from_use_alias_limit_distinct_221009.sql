-- 1. SELECT & FROM / USE
-- Q. products_db의 products에서 product_name 출력하기
USE products_db;
SELECT product_name
FROM products;

-- 2-1. AS(alias)
-- Q. products_db의 products에서 product_name 컬럼명을 new_product_name로 임시 변경하여 출력하기
SELECT product_name AS new_product_name
FROM products_db.products;

-- 2-2. ALTER TABLE
-- Q. products 내에 price 컬럼명을 new_price로 변경하기
ALTER TABLE products CHANGE COLUMN price new_price INT;

-- 3. LIMIT / DISTINCT
-- Q. products_db의 products에서 중복을 제외한 product_name을 10개 출력하기
SELECT DISTINCT product_name
FROM products_db.products
LIMIT 10;
