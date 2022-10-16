-- Q1. 날짜형 데이터 함수 - NOW / CURRENT_DATE / CURRENT_TIME 
SELECT NOW(), CURRENT_DATE(), CURRENT_TIME();

-- Q2. 날짜형 데이터 함수 - DAY & DAYOFMONTH() / DAYNAME / DAYOFWEEK / DAYOFMONTH
SELECT NOW(), DAY(NOW()), DAYOFMONTH(NOW()), DAYNAME(NOW()), DAYOFWEEK(NOW());

-- Q3. 날짜형 데이터 함수 - YEAR / MONTH / MONTHNAME / WEEK
SELECT NOW(), YEAR(NOW()), MONTH(NOW()), MONTHNAME(NOW()), WEEK(NOW());

-- Q4. 날짜형 데이터 함수 - HOUR / MINUTE / SECOND
SELECT NOW(), HOUR(NOW()), MINUTE(NOW()), SECOND(NOW());

-- Q5. 날짜형 데이터 함수 - DATE_FORMAT
SELECT DATE_FORMAT(NOW(), '%Y년 %M월 %D일 %H시 %i분 %S초') AS upper_condition
     , DATE_FORMAT(NOW(), '%y년 %m월 %d일 %l시 %i분 %s초') AS lower_condition;

-- Q6. 날짜형 데이터 함수 - DATEDIFF / TIMEDIFF
SELECT DATEDIFF(NOW(), '2021-10-10 03:00:00') AS date_diff
     , TIMEDIFF(NOW(), '2021-10-10 03:00:00') AS time_diff;
