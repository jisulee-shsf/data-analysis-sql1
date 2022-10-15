-- Q1. SELECT / FROM) products_df의 products에서 product_name 출력하기
SELECT product_name
FROM products_df.products;

-- Q2. USE) USE를 사용해 products_df의 products에서 product_name 출력하기
USE products_df;
SELECT product_name
FROM products;

-- Q3-1. AS) products_df의 products에서 product_name을 'new_product_name'로 변경하여 출력하기
SELECT product_name AS new_product_name
FROM products_df.products;

-- Q3-2. ALTER TABLE) price를 'new_price'로 컬럼명 변경하기
ALTER TABLE products CHANGE COLUMN price new_price INT;

-- Q4. LIMIT) products_df의 products에서 product_name을 10개만 출력하기
SELECT product_name
FROM products_df.products
LIMIT 10;

-- Q5. DISTINCT) products_df의 products에서 product_name을 중복 없이 출력하기
SELECT DISTINCT product_name
FROM products_df.products;
