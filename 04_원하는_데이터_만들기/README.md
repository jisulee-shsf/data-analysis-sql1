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
####  
<img width="500" alt="image" src="https://user-images.githubusercontent.com/109773795/195994270-ce4c68be-1483-4939-8cc6-328cc050d27d.png">

##  
#### ► [02_locate_substring_right_left_upper_lower_length_concat_replace_221017]  
- 입력된 문자가 문자열에서 몇 번째에 해당하는지 위치를 반환하는 LOCATE 실습  
- 입력된 숫자 위치부터 문자를 반환하는 SUBSTRING 실습  
- 입력된 숫자의 오른쪽 / 왼쪽 위치부터 문자를 반환하는 RIGHT / LEFT 실습  
- 입력된 문자열을 대문자 / 소문자로 변경하여 반환하는 UPPER / LOWER 실습  
- 입력된 문자열의 글자 수를 반환하는 LENGTH 실습  
- 입력된 문자열들을 합쳐 반환하는 CONCAT 실습  
- 문자를 대체해 반환하는 REPLACE 실습  
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
- 대체 문자 반환 - REPLACE(string, from_string, new_string)
####  
