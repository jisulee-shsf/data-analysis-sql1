####  
## 02. 데이터 가져오기  
#### ► [01_select_from_use_alias_limit_distinct_221009]  
- 데이터베이스를 지정하는 USE 실습  
- 데이터가 포함된 컬럼을 선택하는 SELECT / 컬럼이 포함된 테이블을 선택하는 FROM 실습  
- 컬럼명을 변경하는 AS(alias) / ALTER TABLE 실습  
- 출력되는 데이터 수를 제한하는 LIMIT 실습  
- 중복 데이터를 제외하는 DISTINCT 실습  
####  
- ✔︎ FROM - 테이블이 어떤 데이터베이스 내에 있는지 명시되어야 하나, USE 키워드를 사용한 경우 전체 생략 가능  
- ✔︎ AS - 컬럼명 변경 시, 쿼리 내에서만 유효 / 실제 컬럼명을 변경하고 싶을 경우, ALTER TABLE 구문 사용  
- ✔︎ DISTINCT - 중복을 제거하는 특징을 활용해 컬럼에 어떤 데이터가 있는지 확인할 때 주로 사용  
##  
####  USE / SELECT & FROM
``` SQL
USE database_name;
```
``` SQL
SELECT column1, column2, ...
FROM table_name;
```
``` SQL
SELECT * FROM table_name;
```
#### AS(alias) / ALTER TABLE
``` SQL
SELECT column_name AS alias_name
FROM table_name;   # 실제 컬럼명 변경 없음
```
``` SQL
ALTER TABLE table_name
CHANGE COLUMN old_column_name new_column_name datatype;   # 실제 컬럼명 변경
```
#### LIMIT / DISTINCT
``` SQL
SELECT column_name
FROM table_name
LIMIT 3;
```
``` SQL
SELECT DISTINCT column1, column2, ...
FROM table_name;
```
####
