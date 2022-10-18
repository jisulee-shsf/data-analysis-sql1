####  
## 08. 여러 테이블 한 번에 다루기
#### ► [01_union_unionall_set_join_221018]  
- 쿼리의 동일 값은 제외하고 데이터를 합하는 UNION / 동일 값도 포함해 데이터를 합하는 UNION ALL로 두 테이블의 합집합 실습
- 테이블 A / B를 INNER JOIN한 후, 동일한 데이터를 가졌는지 확인이 필요한 컬럼을 ON에 선택적으로 연결해 교집합 구현 및 실습
- 테이블 A / B를 LEFT JOIN한 후, IS NULL로 B의 NULL을 제외해 A에는 있지만 B에는 없는 데이터를 가져와 차집합 구현 및 실습
####  
- ✔︎ UNION / UNION ALL - 두 쿼리 결괏값 수가 동일해야 하며, 데이터 중 일부라도 상이할 경우 서로 다른 데이터로 구분함에 유의
- ✔︎ UNION / UNION ALL - ORDER BY 사용 시 첫 번째 쿼리 SELECT 절 컬럼에서 선택해야 하며, 쿼리 가장 마지막에 작성 필요
- ✔︎ MySQL은 INTERSECT / MINUS 표현이 존재하지 않음 > JOIN을 사용해 교집합 / 차집합 구현 가능
- ✔︎ JOIN을 사용해 교집합 / 차집합 구현 시, SELECT 절에 컬럼 위치 기재 필요하며 확인 필요 컬럼은 선택적으로 연결 필요
##  
#### Sum of sets > UNION / UNION ALL
- SELECT column_name(s) FROM table1 UNION SELECT column_name(s) FROM table2;
- SELECT column_name(s) FROM table1 UNION ALL SELECT column_name(s) FROM table2;
#### Intersection > INNER JOIN
#### Difference of sets > LEFT JOIN
