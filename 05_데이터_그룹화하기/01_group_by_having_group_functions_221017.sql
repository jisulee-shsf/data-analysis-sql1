-- 1. GROUP BY
# products에서 category_id 기준으로 그룹화해 category_id 출력하기
SELECT category_id
FROM products
GROUP BY category_id;

-- 2. HAVING
# products에서 category_id 기준으로 그룹화 된 데이터 중, price 총합이 100 초과인 category_id와 price 총합 출력하기
SELECT category_id, SUM(price)
FROM products
GROUP BY category_id
HAVING SUM(price) > 100;

-- 3. Group fuctions - COUNT / SUM / AVG / MIN & MAX
# products에서 category_id 기준으로 그룹화해 category_id의 데이터 수 / price 총합 / price 평균 / price 최솟값 & 최댓값 출력하기
SELECT category_id, COUNT(*), COUNT(1), SUM(price), AVG(price), MIN(price), MAX(price)
FROM products
GROUP BY category_id;

-- 4. Query execution order
/* products에서 supplier_id가 10 이하인 데이터를 category_id 기준으로 그룹화하고, 
그룹화된 데이터의 price 최댓값이 30을 초과하는 category_id / price 평균값 / price 최댓값을 price 평균값 내림차순으로 출력하기 */
SELECT category_id, AVG(price), MAX(price)
FROM products
WHERE supplier_id <= 10
GROUP BY category_id
HAVING MAX(price) > 30
ORDER BY 2 DESC;
