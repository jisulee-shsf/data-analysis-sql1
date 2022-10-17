-- 1. SELECT & FROM / USE - USE를 사용해 products_df의 products에서 product_name 출력하기
USE products_df;
SELECT product_name
FROM products;

-- 2-1. AS(Alias) - products_df의 products에서 product_name을 new_product_name으로 컬럼명 임시 변경하여 출력하기
SELECT product_name AS new_product_name
FROM products_df.products;

-- 2-2. ALTER TABLE - price를 new_price로 실제 컬럼명 변경하여 출력하기
ALTER TABLE products CHANGE COLUMN price new_price INT;

-- 3. LIMIT / DISTINCT - products_df의 products에서 중복을 제외한 product_name을 10개 출력하기
SELECT DISTINCT product_name
FROM products_df.products
LIMIT 10;
