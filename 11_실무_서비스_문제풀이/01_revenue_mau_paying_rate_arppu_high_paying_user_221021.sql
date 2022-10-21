-- 1. Revenue 
# 2021년 10월 Revenue를 'AS oct_revenue'명으로 출력하기
SELECT SUM(price) AS oct_revenue
FROM purchase_list
WHERE purchased_at LIKE '2021-10%';

SELECT SUM(price) AS oct_revenue
FROM purchase_list
WHERE purchased_at >= '2021-10-01' 
  AND purchased_at < '2021-11-01';
  
-- 2. MAU(Monthly Active Users)
# 2021년 10월 MAU 출력하기 / 1회라도 방문한 기록이 있을 경우 active user로 판단
SELECT COUNT(DISTINCT customer_id)
FROM visit_list
WHERE visited_at >= '2021-10-01'
  AND visited_at < '2021-11-01';
  
-- 3. Paying rate
# 2021년 10월 MAU의 Paying rate 출력하기
# Paying rate: 구매 고객 비율(실 구매 고객 수/ 전체 활성 고객 수)
SELECT COUNT(DISTINCT customer_id)
FROM purchase_list
WHERE purchased_at >= '2021-10-01'
  AND purchased_at < '2021-11-01';

SELECT COUNT(DISTINCT customer_id)
FROM visit_list
WHERE visited_at >= '2021-10-01'
  AND visited_at < '2021-11-01';

SELECT ROUND(11174 / 16414 * 100, 2) AS oct_paying_rate;

-- 4. ARPPU(Average Revenue Per Paying User)
# 2021년 10월 구매 고객의 월 평균 구매액 출력하기
SELECT AVG(revenue)
FROM (SELECT customer_id
	       , SUM(price) AS revenue
	  FROM purchase_list
      WHERE purchased_at >= '2021-10-01'
        AND purchased_at < '2021-11-01'
	  GROUP BY customer_id) AS inline_view_subquery;

-- 5. 고과금 고객
# 2021년 10월 가장 많이 구매한 고객 중, 상위 11번째부터 15번째 고객의 고객 id / 총 지출 비용 / 순위 출력하기
SELECT customer_id, revenue, RANK() OVER (ORDER BY revenue DESC) AS revenue_rank
FROM (SELECT customer_id
		   , SUM(price) AS revenue
	  FROM purchase_list
      WHERE purchased_at >= '2020-07-01'
        AND purchased_at < '2020-08-01'
	  GROUP BY customer_id) AS inline_view_subquery
LIMIT 5 OFFSET 10;