####  
## 09. 조건에 조건 더하기
#### ► [01_subquery_221009]  
- 메인 쿼리에 포함되는 쿼리를 생성하여 새로운 조건으로 데이터를 가져오는 서브쿼리 실습
####  
- ✔︎ SubQuery 조건 - 
- 서브쿼리는 쿼리문 핵심 키워드 6개 중, SELECT / FROM / WHERE / HAVING / ORDER BY 절에 생성 가능하며 ORDER BY 절에는 생성 불가
- 서브쿼리는 쿼리문 핵심 키워드 6가지 키워드를 사용해 작성 가능하며, 반드시 괄호 안에 작성되어야 함
- 서브쿼리는 INSERT / UPDATE / DELET 문에서도 사용 가능하며, ';'는 생략해도 무관함
####  
- ✔︎ SubQuery 종류 - 
- SELECT절 서브쿼리(Scala SubQuery) - 서브쿼리의 결괏값은 하나의 데이터 값으로 반환
- FROM절 서브쿼리(Inline View SubQuery) - 서브쿼리의 결괏값은 alias를 가진 하나의 테이블로 반환
- WHERE절 서브쿼리(Nested SubQuery) - EXSIST 외, 서브쿼리의 결괏값은 다수의 값이 존재할 수 있는 하나의 컬럼으로 반환
####
- ✔︎ WHERE절 서브쿼리(Nested SubQuery) 추가 설명 - 
- WHERE절의 서브쿼리는 주로 비교 연산자(=, !=, >, >=, <, <=) / 주요 연산자(IN, ALL, ANY, EXISTS)와 함께 사용
- 비교 연산자 사용 시, 좌변과 우변의 비교 연산을 위해 WHERE절 서브쿼리의 결괏값은 하나의 데이터 값으로 반환되어야 함
- 주요 연산자 사용 시, '~가 서브쿼리 내에 있다 등'의 의미적 해석을 위해 WHERE절 서브쿼리의 결괏값은 하나의 컬럼으로 반환되어야 함
- 주요 연산자 중 EXISTS & NOT EXISTS는, 의미상 True / False 값을 반환하기에 단독 사용이 가능하며 및 결괏값이 여러 컬럼이어도 무방함
##  
#### SELECT - Scala SubQuery
- SELECT column_name(s)
- (SELECT column_names(s) FROM table_name WHERE condition)
- FROM table_name
- WHERE condition;
#### FROM - Inline View SubQuery
- SELECT column_name(s)
- FROM (SELECT column_name(s) FROM table_name) AS alias_name
- WHERE condition;
#### WHERE - Nested SubQuery
- SELECT column_name(s)
- FROM table_name
- WHERE column_name [Operator](SELECT column_name(s) FROM table_name WHERE condition);
####  
