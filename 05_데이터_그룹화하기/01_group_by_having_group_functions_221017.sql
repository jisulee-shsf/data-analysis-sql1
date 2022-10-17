-- Q1. GROUP BY
SELECT category_id
FROM products
GROUP BY category_id;

-- Q2. Group fuctions(COUNT / SUM / AVG / MIN & MAX)
SELECT category_id, COUNT(*), COUNT(1), SUM(price), AVG(price), MIN(price), MAX(price)
FROM products
GROUP BY category_id;

-- Q3. HAVING
SELECT category_id, SUM(price)
FROM products
GROUP BY category_id
HAVING SUM(price) > 100;

-- Q4. Query execution order
/* Products 테이블에서 SupplierID가 10 이하인 데이터를 CategoryID 컬럼 기준으로 그룹화하고, 
그룹화된 데이터의 Price 최댓값이 30을 초과하는 CategoryID / AVG(Price) / MAX(Price)를 Price 평균값 내림차순으로 출력하기 */ 
SELECT category_id, AVG(price), MAX(price)
FROM products
WHERE supplier_id <= 10
GROUP BY category_id
HAVING MAX(price) > 30
ORDER BY 2 DESC;
