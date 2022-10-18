####  
## 09. 조건에 조건 더하기
#### ► [01_subquery_221009]  
- 메인 쿼리 내에 쿼리를 생성하여 데이터를 가져오는 새로운 조건을 만드는 서브쿼리 실습
####  
- ✔︎ SubQuery - 
- 서브쿼리는 쿼리문 핵심 키워드 6개 중, SELECT / FROM / WHERE / HAVING / ORDER BY 절에 생성 가능하며 ORDER BY 절에는 생성 불가
- 서브쿼리는 쿼리문 핵심 키워드 6가지 키워드를 사용해 작성 가능하며, 반드시 괄호 안에 작성되어야 함
- 서브쿼리는 INSERT / UPDATE / DELET 문에서도 사용 가능하며, ';'는 생략해도 무관함
####  
- SELECT절 서브쿼리(Scala SubQuery) - 서브쿼리의 결괏값은 반드시 하나의 데이터 값으로 반환되어야 함
- FROM절 서브쿼리(Inline View SubQuery) - 서브쿼리의 결괏값은 반드시 하나의 테이블로 반환되어야 하며, 반환된 테이블은 alias를 가져야 함
- WHERE절 서브쿼리(Nested SubQuery) - 
##  
#### SubQuery - SELECT
-
####  
