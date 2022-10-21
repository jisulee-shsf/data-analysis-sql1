-- 0. Date fuctions
SELECT EXTRACT(YEAR FROM '2021-10-01');
SELECT DATE_ADD('2021-10-01', INTERVAL 10 DAY);
SELECT DATE_SUB('2021-10-01', INTERVAL 10 DAY);
SELECT DATE_FORMAT('2021-10-01', '%Y-%M-%D');
SELECT DATE_FORMAT('2021-10-01', '%y-%m-%d %p');
SELECT DATE_FORMAT(NOW(), '%Y-%m');

-- 1. DAU - 2021년 10월의 평균 DAU를 구하기
# interval 확인
SELECT visited_at 
     , DATE_FORMAT(visited_at, '%Y-%m-%d %r') AS date_at
FROM visit_list
WHERE visited_at >= '2021-10-01' 
  AND visited_at < '2021-11-01';

# interval 제외 후, DAU 출력
SELECT DATE_FORMAT(visited_at - INTERVAL 9 HOUR, '%Y-%m-%d') AS date_at
     , COUNT(DISTINCT customer_id) 
FROM visit_list
WHERE visited_at >= '2021-10-01' 
  AND visited_at < '2021-11-01'
GROUP BY 1;

# 평균 DAU 출력
SELECT AVG(active_users)
FROM (SELECT DATE_FORMAT(visited_at - INTERVAL 9 HOUR, '%Y-%m-%d') AS date_at
           , COUNT(DISTINCT customer_id) AS active_users
      FROM visit_list
      WHERE visited_at >= '2021-10-01'
        AND visited_at < '2021-11-01'
      GROUP BY 1) AS inline_view_subquery;

-- 2. WAU - 2021년 10월의 평균 WAU를 구하기
# 한 주가 완전한 7일인 경우의 WAU 출력
SELECT DATE_FORMAT(visited_at - INTERVAL 9 HOUR, '%Y-%m-%U') AS date_at
     , COUNT(DISTINCT customer_id) AS active_users
FROM visit_list
WHERE visited_at >= '2021-10-03'
  AND visited_at < '2021-10-31'
GROUP BY 1;

# 평균 WAU 출력
SELECT AVG(active_users)
FROM (SELECT DATE_FORMAT(visited_at - INTERVAL 9 HOUR, '%Y-%m-%U') AS date_at
           , COUNT(DISTINCT customer_id) AS active_users
      FROM visit_list
      WHERE visited_at >= '2021-10-03'
	AND visited_at < '2021-10-31'
      GROUP BY 1) AS inline_view_subquery;
