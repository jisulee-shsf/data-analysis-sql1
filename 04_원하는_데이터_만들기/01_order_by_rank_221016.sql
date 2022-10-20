-- 1-1. ORDER BY
# products에서 product_name을 price 오름차순으로 출력하기
SELECT product_name
FROM products
ORDER BY price;

-- 1-2. ORDER BY
# products에서 product_name을 price 내림차순으로 출력하기
SELECT product_name
FROM products
ORDER BY price DESC;

-- 1-3. ORDER BY
# products에서 product_name을 price 내림차순 후, product_id 오름차순으로 출력하기
SELECT product_name
FROM products
ORDER BY price DESC, product_id;

-- 1-4. ORDER BY
# products에서 product_name / price / product_id를 price 내림차순 후 product_id 오름차순으로 출력하기
SELECT product_name
     , price
     , product_id
FROM products
ORDER BY 2 DESC, 3;

-- 2. RANK / DENSE_RANK / ROW_RANK
# student에서 id / name / score를 각 RANK 함수 조건에 맞추어 출력하기
SELECT id
     , name
     , score
     , RANK() OVER(ORDER BY score DESC) AS rank_list
     , DENSE_RANK() OVER(ORDER BY score DESC) AS dense_rank_list
     , ROW_NUMBER() OVER(ORDER BY score DESC) AS row_number_list
FROM student;
