####  
## 06. 규칙 만들기
#### ► [01_if_ifnull_case_221018]  
- SELECT 절 내에 단수의 조건을 생성해 결과값을 새로운 컬럼으로 반환하는 IF 실습
- SELECT 절 내에서 입력 데이터가 NULL인 경우, 결과값을 새로운 컬럼으로 반환하는 IFNULL 실습
- SELECT 절 내에 복수의 조건을 생성해 결과값을 새로운 컬럼으로 반환하는 CASE 실습
####  
- ✔︎ CASE - CASE의 경우, 복수의 조건을 만들지만 결과값 컬럼은 1개만 생성
- ✔︎ CASE - CASE 내에 ELSE 문장 생략 시, 조건식의 거짓에 해당하는 값에 NULL 값 반환
- ✔︎ CASE - CASE는 'CASE WHEN + 조건식 ... / CASE column_name WHEN 조건값 ...'의 2가지 형식 존재
##  
#### IF / IFNULL / CASE
- 단수 조건 생성 - SELECT column_name, IF(condition, value_if_true, value_if_false) AS alias_name FROM table_name;
- 입력 데이터 NULL 여부 확인 조건 생성 - SELECT column_name, IFNULL(condition, value_if_true) AS alias_name FROM table_name;
- 복수 조건 생성 - SELECT column_name, CASE WHEN conditionN THEN resultN ELSE result END AS alias_name FROM table_name;
####  
