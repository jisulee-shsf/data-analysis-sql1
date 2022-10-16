-- Q1. GROUP BY
# 컬럼 내에 동일한 값을 가진 행을 그룹화하는 GROUP BY 실습
SELECT category_id
FROM products
GROUP BY category_id;

-- Q2. Group fuctions(COUNT / SUM / AVG / MIN & MAX)
# 그룹값 수를 계산하는 COUNT / 총 합을 계산하는 SUM / 평균을 계산하는 AVG / 최소 & 최대의 값을 계산하는 MIN & MAX 실습
# 그룹 함수 내 집계 컬럼은 그룹의 기준이 되는 컬럼과 동일하거나 상이해도 무방
# COUNT / SUM / AVG / MIN & MAX는 SELECT와 HAVING 절에 모두 사용 가능
SELECT category_id, COUNT(*), COUNT(1), SUM(price), AVG(price), MIN(price), MAX(price)
FROM products
GROUP BY category_id;

-- Q3. HAVING
# 그룹화된 데이터에서 원하는 그룹만 선택해 통계내는 HAVING 실습
# WHERE는 조건에 맞는 데이터를 선택하는 방법이며, 그룹화된 데이터를 선택하는 방법은 HAVING을 사용
# HAVING은 GROUP BY의 WHERE 절로, 조건식에 그룹 함수를 사용
SELECT category_id, SUM(price)
FROM products
GROUP BY category_id
HAVING SUM(price) > 100;

-- Q4. Query execution order
/* Products 테이블에서 SupplierID가 10 이하인 데이터를 CategoryID 컬럼 기준으로 그룹화하고, 
그룹화된 데이터의 Price 최댓값이 30을 초과하는 CategoryID / AVG(Price) / MAX(Price)를 Price 평균값 내림차순으로 출력하기 */ 
SELECT CategoryID, AVG(Price), MAX(Price)
FROM Products
WHERE SupplierID <= 10
GROUP BY CategoryID
HAVING MAX(Price) > 30
ORDER BY 2 DESC;

# 1. FROM - Products 테이블에서
# 2. WHERE - SupplierID가 10 이하인 데이터를
# 3. GROUP BY - CategoryID 컬럼 기준으로 그룹화하고,
# 4. HAVING - 그룹화된 데이터의 Price 최댓값이 30을 초과하는
# 5. SELECT - CategoryID / AVG(Price) / MAX(Price)를
# 6. ORDER BY - Price 평균값 내림차순으로 출력하기

# 작성 순서: SELECT - FROM - WHERE - GROUP BY - HAVING - ORDER BY
# 실행 순서: FROM - WHERE - GROUP BY - HAVING - SELECT - ORDER BY