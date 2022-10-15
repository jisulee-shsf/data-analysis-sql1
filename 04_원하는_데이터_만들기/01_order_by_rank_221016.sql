-- Q1-1. ORDER BY - ASC) products에서 product_name을 price 오름차순으로 출력하기
SELECT product_name
FROM products
ORDER BY price;

-- Q1-2. ORDER BY - DESC) products에서 product_name을 price 내림순으로 출력하기
SELECT product_name
FROM products
ORDER BY price DESC;

-- Q1-3. ORDER BY - 정렬 조건 나열) products에서 product_name과 Price을 price 내림차순으로 출력하기
SELECT product_name
FROM products
ORDER BY price DESC, product_id;

-- Q1-4. ORDER BY - 정렬 조건 번호 대체) products에서 product_name / price / product_id를 price 내림차순 및 product_id 오름차순 후 출력하기
SELECT product_name, price, product_id
FROM products
ORDER BY 2 DESC, 3;

-- Q2. RANK / DENSE_RANK / ROW_RANK) student에서 score의 내림차순 기준으로 각 함수 조건과 변경 이름으로 출력하기
SELECT id, name, score
     , RANK() OVER(ORDER BY score DESC) AS rank_list --> 공동 순위가 있을 경우, 다음 순서로 건너뜀
     , DENSE_RANK() OVER(ORDER BY score DESC) AS dense_rank_list --> 공동 순위가 있을 경우, 다음 순서로 건너뛰지 않음
     , ROW_NUMBER() OVER(ORDER BY score DESC) AS row_number_list --> 공동 순위를 고려하지 않음
FROM student;