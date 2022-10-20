####  
## 06. 규칙 만들기  
#### ► [01_if_ifnull_case_221018]  
- SELECT 절 내에 단수의 조건을 생성해 결괏값을 새로운 컬럼으로 반환하는 IF 실습  
- SELECT 절 내에서 입력 데이터가 NULL인 경우, 결괏값을 새로운 컬럼으로 반환하는 IFNULL 실습  
- SELECT 절 내에 복수의 조건을 생성해 결괏값을 새로운 컬럼으로 반환하는 CASE 실습  
####  
- ✔︎ CASE - CASE의 경우, 복수의 조건을 만들지만 결괏값 컬럼은 1개만 생성  
- ✔︎ CASE - CASE 내에 ELSE 문장 생략 시, 조건식의 거짓에 해당하는 값에 NULL 값 반환  
- ✔︎ CASE - CASE는 'CASE WHEN + 조건식 ... / CASE column_name WHEN 조건값 ...'의 2가지 형식 존재  
#### ► [02_create_function_221018]  
- Step1. MySQL Workbench 사용 시, function create 권한 설정 실습  
- Step2. DELIMITER를 사용해 함수 시작 지정 실습  
- Step3. CREATE FUNCTION을 사용해 함수 생성 실습  
- Step4. DELIMITER를 사용해 함수 종료 지정 실습  
####  
- ✔︎ DELIMITER - 함수 종료 지정 시, 'DELIMITER'와 ';' 사이 띄어쓰기 필수  
##
#### IF / IFNULL / CASE
``` SQL
SELECT column_name, IF(condition, value_if_true, value_if_false) AS alias_name
FROM table_name;   # 단수 조건 생성
```
``` SQL
SELECT column_name, IFNULL(condition, value_if_true) AS alias_name
FROM table_name;   # 입력 데이터 NULL 여부 확인 조건 생성
```
``` SQL
SELECT column_name, CASE
                        WHEN conditionN THEN resultN ELSE result END AS alias_name
FROM table_name;   # 복수 조건 생성
```
#### CREATE FUNCTION
``` SQL
CREATE FUNCTION function_name(input_column_name1 input_datatype1, input_column_name2 input_datatype2)
               RETURNS output_datatype
BEGIN
     DECLARE temporary_variable1 input_datatype1;
     DECLARE temporary_variable2 input_datatype2;
     DECLARE function_name output_datatype;
     SET temporary_variable1 = input_column_name1;
     SET temporary_variable2 = input_column_name2;
     SELECT condition INTO function_name;
     RETURN function_name;
END
```
####
