####  
## 09. 조건에 조건 더하기  
#### ► [01_subquery_221019]  
- 메인 쿼리에 포함되는 쿼리를 생성하여 새로운 조건으로 데이터를 가져오는 서브쿼리 실습  
####  
- ✔︎ SubQuery 조건 -  
- 서브쿼리는 쿼리문 핵심 키워드 6개 중, SELECT / FROM / WHERE / HAVING / ORDER BY 절에 생성 가능하며 ORDER BY 절에는 생성 불가  
- 서브쿼리는 쿼리문 핵심 키워드 6가지 키워드를 사용해 작성 가능하며, 반드시 괄호 안에 작성 필요  
- 서브쿼리는 INSERT / UPDATE / DELETE 문에서도 사용 가능하며, ';'는 생략 가능  
####  
- ✔︎ SubQuery 종류 -  
- SELECT절 서브쿼리(Scala SubQuery) - 서브쿼리의 결괏값은 하나의 데이터 값으로 반환  
- FROM절 서브쿼리(Inline View SubQuery) - 서브쿼리의 결괏값은 alias를 가진 하나의 테이블로 반환  
- WHERE절 서브쿼리(Nested SubQuery) - EXSIST 외, 서브쿼리의 결괏값은 다수의 값이 존재할 수 있는 하나의 컬럼으로 반환  
####  
- ✔︎ WHERE절 서브쿼리(Nested SubQuery) -  
- WHERE절의 서브쿼리는 주로 비교 연산자(=, !=, >, >=, <, <=) / 주요 연산자(IN, ALL, ANY, EXISTS)와 함께 사용  
- 비교 연산자 사용 시, 좌변과 우변의 비교 연산을 위해 WHERE절 서브쿼리의 결괏값은 하나의 데이터 값으로 반환되어야 함  
- 주요 연산자 사용 시, '~가 서브쿼리 내에 있다 등'의 의미적 해석을 위해 WHERE절 서브쿼리의 결괏값은 하나의 컬럼으로 반환되어야 함  
- EXISTS & NOT EXISTS는, 의미상 True / False 값을 반환하기에 연산자 없이 단독 사용 가능하며 결괏값이 여러 컬럼이어도 무방함  
####  
- 'WHERE column_name <(작다) ALL(서브쿼리)' - 서브쿼리 결괏값이 60 & 90일 경우, 최솟값인 60보다 작은 지를 확인하는 연산자  
- 'WHERE column_name >(크다) ALL(서브쿼리)' - 서브쿼리 결괏값이 60 & 90일 경우, 최댓값인 90보다 큰 지를 확인하는 연산자  
- 'WHERE column_name <(작다) ANY(서브쿼리)' - 서브쿼리 결괏값이 60 & 90일 경우, 최댓값인 90보다 작은 지를 확인하는 연산자  
- 'WHERE column_name >(크다) ANY(서브쿼리)' - 서브쿼리 결괏값이 60 & 90일 경우, 최솟값인 60보다 큰 지를 확인하는 연산자  
##
#### Scala SubQuery
``` SQL
# SELECT 절 내에 구현
SELECT column_name(s)
       (SELECT column_names(s) FROM table_name WHERE condition)
FROM table_name
WHERE condition;
```
#### Inline View SubQuery
``` SQL
# FROM 절 내에 구현
SELECT column_name(s)
FROM (SELECT column_name(s) FROM table_name) AS alias_name
WHERE condition;
```
#### Nested SubQuery
``` SQL
# WHERE 절 내에 구현
SELECT column_name(s)
FROM table_name
WHERE column_name [Operator](SELECT column_name(s) FROM table_name WHERE condition);
```
####
