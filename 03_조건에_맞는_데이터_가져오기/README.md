####  
## 03. 조건에 맞는 데이터 가져오기  
#### ► [01_where_like_null_221015]  
- 비교(=, !=, >, >=, <, <=) / 논리(AND, OR, NOT) / 기타 주요(BETWEEN, IN 등) 연산자를 사용해 true 데이터를 가져오는 WHERE 실습  
- 와일드 카드(%, _)를 사용해 특정 문자가 포함된 데이터를 가져오는 LIKE 실습  
- NULL 데이터를 다루는 IS NULL / NOT NULL 실습  
####  
- ✔ Wildcards - %(The percent sign) zero or more characters  / _(The underscore sign) / a single character  
- ✔ Wildcards - '%s_%'에서 %의 위치가 '%s%_'로 변경해도 의미 동일  
- ✔ NULL - 0또는 공백이 아닌, 데이터 값이 존재하지 않는 알 수 없는 값을 의미  
- ✔ IS NULL / IS NOT NULL - 'WHERE 컬럼 = NULL' / 'WHERE 컬럼 != NULL' 표현 없음  
##
#### WHERE
``` SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
#### AND / OR / NOT

``` SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
```
``` SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
```
``` SQL
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
```
#### BETWEEN / NOT BETWEEN

``` SQL
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```
``` SQL
SELECT column_name(s)
FROM table_name
WHERE column_name NOT BETWEEN value1 AND value2;
```
#### IN / NOT IN
``` SQL
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
```
``` SQL
SELECT column_name(s)
FROM table_name
WHERE column_name NOT IN (value1, value2, ...);
```
#### LIKE & Wildcards
``` SQL
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
```
#### IS NULL / IS NOT NULL
``` SQL
SELECT column_names
ROM table_name
WHERE column_name IS NULL;
```
``` SQL
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
```
####
