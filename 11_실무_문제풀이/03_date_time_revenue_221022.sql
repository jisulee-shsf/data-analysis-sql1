-- 1. Daily & Weekly Revenue - 2021년 10월 평균 Daily & Weekly Revenue 출력하기
# daily revenue 출력
SELECT DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%Y-%m-%d') AS date_at
     , SUM(price) AS revenue
FROM purchase_list
WHERE purchased_at >= '2021-10-01'
  AND purchased_at < '2021-11-01'
GROUP BY 1;

# 평균 daily revenue 출력
SELECT AVG(revenue)
FROM(SELECT DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%Y-%m-%d') AS date_at
          , SUM(price) AS revenue
     FROM purchase_list
     WHERE purchased_at >= '2021-10-01'
       AND purchased_at < '2021-11-01'
     GROUP BY 1) AS inline_view_subquery;

# 평균 weekly revenue 출력
SELECT AVG(revenue)
FROM(SELECT DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%Y-%m-%U') AS date_at
          , SUM(price) AS revenue
     FROM purchase_list
     WHERE purchased_at >= '2021-10-03'
       AND purchased_at < '2021-10-31'
     GROUP BY 1) AS inline_view_subquery;

-- 2. 요일별 평균 Revenue - 2021년 10월 요일별 평균 revenue 출력하기
/*
# 각 요일별 결제 금액 평균이 아닌, 요일별 데이터를 먼저 구한 후 서브쿼리를 통해 평균 revenue 추출 필요
SELECT DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%w') AS day_order
     , DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%W') AS day_name
     , AVG(price)
FROM purchase_list
WHERE purchased_at >= '2021-10-01'
  AND purchased_at < '2021-11-01'
GROUP BY 1, 2 
ORDER BY 1; 
*/

# 요일별 평균 revenue 출력
SELECT DATE_FORMAT(date_at, '%w') AS day_order
     , DATE_FORMAT(date_at, '%W') AS day_name 
     , AVG(revenue)
FROM (SELECT DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%Y-%m-%d') AS date_at
           , SUM(price) AS revenue
      FROM purchase_list
      WHERE purchased_at >= '2021-10-01'
	AND purchased_at < '2021-11-01'
      GROUP BY 1) AS inline_view_subquery
GROUP BY 1, 2
ORDER BY 1;

-- 3. 시간대별 평균 Revenue - 2021년 10월 시간대별 평균 Revenue 출력하기
SELECT hour_at
     , AVG(revenue)
FROM (SELECT DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%Y-%m-%d') AS date_at
           , DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%H') AS hour_at
           , SUM(price) AS revenue
      FROM purchase_list
      WHERE purchased_at >= '2021-11-01'
        AND purchased_at < '2021-11-01'
      GROUP BY 1, 2) AS inline_view_subquery
GROUP BY 1;

-- 4. 요일별 & 시간대별 평균 Revenue - 2021년 10월의 요일별 & 시간대별 평균 Revenue 출력하기
SELECT week_at
     , hour_at
     , AVG(revenue)
FROM (SELECT DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%Y-%m-%d') AS date_at
           , DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%W') AS week_at
           , DATE_FORMAT(purchased_at - INTERVAL 9 HOUR, '%H') AS hour_at
           , SUM(price) AS revenue
      FROM purchase_list
      WHERE purchased_at >= '2021-10-01'
        AND purchased_at < '2021-11-01'
      GROUP BY 1, 2, 3) AS inline_view_subquery
GROUP BY 1, 2
ORDER BY 3 DESC;
