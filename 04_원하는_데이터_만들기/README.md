####  
## 04. 원하는 데이터 만들기  
#### ► [01_order_by_rank_221016]  
- 데이터를 조건에 맞추어 정렬하는 ORDER BY 실습  
- ORDER BY로 정렬된 데이터의 순위를 만드는 RANK / DENSE_RANK / ROW_RANK 실습  
####  
- ✔︎ RANK / DENSE_RANK / ROW_NUMBER - RANK는 해당 쿼리 내에 유효한 순위 컬럼을 만드는 함수이며, 실제 데이터에 영향을 미치지 않음  
- ✔︎ RANK() OVER(ORDER BY score DESC) AS rank_list - 공동 순위가 있을 경우, 다음 순서로 건너뜀  
- ✔︎ DENSE_RANK() OVER(ORDER BY score DESC) AS dense_rank_list - 공동 순위가 있을 경우, 다음 순서로 건너뛰지 않음  
- ✔︎ ROW_NUMBER() OVER(ORDER BY score DESC) AS row_number_list - 공동 순위를 고려하지 않음  
<img width="500" alt="image" src="https://user-images.githubusercontent.com/109773795/195994270-ce4c68be-1483-4939-8cc6-328cc050d27d.png">

####  
#### ► [02_locate_substring_right_left_upper_lower_length_concat_replace_221017]  
- 입력된 문자가 문자열에서 몇 번째에 해당하는지 위치를 반환하는 LOCATE 실습  
- 입력된 숫자 위치부터 문자를 반환하는 SUBSTRING 실습  
- 입력된 숫자의 오른쪽 / 왼쪽 위치부터 문자를 반환하는 RIGHT / LEFT 실습  
- 입력된 문자열을 대문자 / 소문자로 변경하여 반환하는 UPPER / LOWER 실습  
- 입력된 문자열의 글자 수를 반환하는 LENGTH 실습  
- 입력된 문자열들을 합쳐 반환하는 CONCAT 실습  
- 문자를 대체해 반환하는 REPLACE 실습  
####  
#### ► [03_abs_celing_floor_round_truncate_power_mod_221017]  
- 입력 숫자를 절댓값으로 반환하는 ABS 실습
- 입력 숫자를 정수로 올림해 반환하는 CELING / 내림해 반환하는 FLOOR 실습
- 입력 숫자의 소수점 자릿수까지 반올림해 반환하는 ROUND / 버림해 반환하는 TRUNCATE 실습
- 입력1 값을 입력2 숫자로 제곱한 값을 반환하는 POWER 실습
- 입력1 값을 입력2 숫자로 나눈 나머지를 반환하는 MOD 실습
####  
- ✔︎ ABS - FLOAT 타입에 ABS 적용 시, 입력 값의 근사치 출력
- ✔︎ MOD - MOD 함수를 통해, 짝수 / 홀수 여부 판단 가능
####  
#### ► [04_year_month_day_hour_minute_second_date_format_datediff_timediff_221017]  
- 현재 날짜 및 시간을 반환하는 NOW / 날짜를 반환하는 CURRENT_DATE / 시간을 반환하는 CURRENT_TIME 실습
- 날짜 일을 반환하는 DAY & DAYOFMONTH() / 영문 요일을 반환하는 DAYNAME / 숫자 요일을 반환하는 DAYOFWEEK 실습
- 숫자 연도를 반환하는 YEAR / 날짜 월을 반환하는 MONTH / 영문 월을 반환하는 MONTHNAME / 연도의 몇 번째 주인지 반환하는 WEEK 실습
- 시간을 반환하는 HOUR / 분을 반환하는 MINUTE / 초를 반환하는 SECOND 실습
- 날짜와 시간 형식을 조건에 맞게 변환하여 반환하는 DATE_FORMAT 실습
- 입력1에서 입력2의 날짜 차이 값을 반환하는 DATEDIFF / 입력1에서 입력 2의 시간 차이 값을 반환하는 TIMEDIFF 실습
#### 
- ✔︎ DATE_FORMAT - %Y(2022) & %y(22) / %M(October) & %m(10) / %D(17th) & %d(17)
- ✔︎ DATE_FORMAT - %H(00-23) & %h(01-12) & %I(01-12) & %l(1-12) / %i(00-59) / %S & %s(00-59)
<img width="600" alt="image" src="https://user-images.githubusercontent.com/109773795/196056465-a0b4b38f-3856-4870-8fe3-7dec49d296eb.png">

####  
##  
#### ORDER BY  
- 출력 컬럼 값 정렬 - SELECT column1, column2, ... FROM table_name ORDER BY column1, column2, ... ASC|DESC;  
#### RANK / DENSE_RANK / ROW_NUMBER
- 공동 순위 스킵 순위 - SELECT column_name(s) RANK() OVER(ORDER BY column_name DESC) AS alias_name FROM table_name;  
- 공동 순위 적용 순위 - SELECT column_name(s) DENSE_RANK() OVER(ORDER BY column_name DESC) AS alias_name FROM table_name;  
- 행 순위 우선 순위 - SELECT column_name(s) ROW_NUMBER() OVER(ORDER BY column_name DESC) AS alias_name FROM table_name;  
####  
#### LOCATE / SUBSTRING / RIGHT / LEFT / UPPER / LOWER / LENGTH / CONCAT / REPLACE
- 문자 위치 반환 - LOCATE(substring, string, start position)
- 입력 숫자 위치부터 문자 반환 - SUBSTRING(string, start, length) / SUBSTRING(string FROM start FOR length)
- 오른쪽 / 왼쪽 문자 반환 - RIGHT(string, number_of_chars) / LEFT(string, number_of_chars)
- 대문자 / 소문자 변경 문자열 반환 - UPPER(text) / LOWER(text)
- 문자열 수 반환 - LENGTH(string)
- 합친 문자열 반환 - CONCAT(expression1, expression2, expression3,...)
- 문자 대체한 문자열 반환 - REPLACE(string, from_string, new_string)
#### ABS / CELING / FLOOR / ROUND / TRUNCATE / POWER / MOD
- 절댓값 반환 - ABS(number)
- 정수 올림 반환 - CEILING(number)
- 정수 내림 반환 - FLOOR(number)
- 소수점 반올림 반환 - ROUND(number, decimals)
- 소수점 내림 반환 - TRUNCATE(number, decimals)
- 제곱 반환 - POWER(x, y)
- 나눈 나머지 반환 - MOD(x, y)
#### 
