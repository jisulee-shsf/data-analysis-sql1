-- Q1. 날짜형 데이터 함수 - NOW / CURRENT_DATE / CURRENT_TIME 
# 현재 날짜 및 시간을 반환하는 NOW / 날짜를 반환하는 CURRENT_DATE / 시간을 반환하는 CURRENT_TIME 실습
SELECT NOW(), CURRENT_DATE(), CURRENT_TIME();

-- Q2. 날짜형 데이터 함수 - DAY & DAYOFMONTH() / DAYNAME / DAYOFWEEK / DAYOFMONTH
# 날짜 일을 반환하는 DAY & DAYOFMONTH() / 영문 요일을 반환하는 DAYNAME / 숫자 요일을 반환하는 DAYOFWEEK 실습
SELECT NOW(), DAY(NOW()), DAYOFMONTH(NOW()), DAYNAME(NOW()), DAYOFWEEK(NOW());

-- Q3. 날짜형 데이터 함수 - YEAR / MONTH / MONTHNAME / WEEK
# 숫자 연도를 반환하는 YEAR / 날짜 월을 반환하는 MONTH / 영문 월을 반환하는 MONTHNAME / 연도의 몇 번째 주인지 반환하는 WEEK 실습
SELECT NOW(), YEAR(NOW()), MONTH(NOW()), MONTHNAME(NOW()), WEEK(NOW());

-- Q4. 날짜형 데이터 함수 - HOUR / MINUTE / SECOND
# 시간을 반환하는 HOUR / 분을 반환하는 MINUTE / 초를 반환하는 SECOND 실습
SELECT NOW(), HOUR(NOW()), MINUTE(NOW()), SECOND(NOW());

-- Q5. 날짜형 데이터 함수 - DATE_FORMAT
# 날짜와 시간 형식을 조건에 맞게 변환하여 반환하는 DATE_FORMAT 실습
# %Y(2022) & %y(22) / %M(October) & %m(10) / %D(17th) & %d(17)
# %H(00-23) & %h(01-12) & %I(01-12) & %l(1-12) / %i(00-59) / %S & %s(00-59)
SELECT DATE_FORMAT(NOW(), '%Y년 %M월 %D일 %H시 %i분 %S초') AS upper_condition
	 , DATE_FORMAT(NOW(), '%y년 %m월 %d일 %l시 %i분 %s초') AS lower_condition;

-- Q6. 날짜형 데이터 함수 - DATEDIFF / TIMEDIFF
# 입력1에서 입력2의 날짜 차이 값을 반환하는 DATEDIFF / 입력1에서 입력 2의 시간 차이 값을 반환하는 TIMEDIFF 실습
SELECT DATEDIFF(NOW(), '2021-10-10 03:00:00') AS date_diff
	 , TIMEDIFF(NOW(), '2021-10-10 03:00:00') AS time_diff;