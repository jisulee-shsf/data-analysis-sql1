####  
## 07. 테이블 합치기  
#### ► [01_select_from_use_alias_limit_distinct_221009]  
- 두 테이블에 공통 값만 합치는 INNER JOIN 실습  
- 왼쪽 또는 오른쪽 테이블에만 존재하는 값을 합치는 LEFT JOIN / RIGHT JOIN 실습  
- 중복 결과를 제외하고 합쳐주는 집합 연산자 UNION을 사용해 LEFT + RIGHT JOIN으로 OUTER JOIN 구현 실습  
- 별도 기준 컬럼 없이, 두 테이블의 모든 값을 각각 합치는 CROSS JOIN 실습  
- 동일한 테이블의 INNER JOIN인 SELF JOIN 실습  
####  
- ✔︎ JOIN으로 동일한 컬럼을 가질 경우, SELECT 절에 값을 가져온 테이블 위치 기재 필요   
- ✔︎ LEFT JOIN / RIGHT JOIN - JOIN 기준에 따라, 누락되는 값은 자동으로 NULL 반환  
- ✔︎ SELF JOIN - SELF JOIN 시, 기준 컬럼의 위치를 명시하기 위해 alias 설정 필요  
##  
#### INNER JOIN / LEFT & RIGHT JOIN / OUTER JOIN / CROSS JOIN / SELF JOIN
- 공통 값 합치기 - SELECT column_name(s) FROM table1 INNER JOIN table2 ON table1.column_name = table2.column_name;   
- 왼쪽 기준 합치기 - SELECT column_name(s) FROM table1 LEFT JOIN table2 ON table1.column_name = table2.column_name;  
- 오른쪽 기준 합치기 - SELECT column_name(s) FROM table1 RIGHT JOIN table2 ON table1.column_name = table2.column_name;  
- 중복 제외, 전체 합치기 - LEFT JOIN UNION RIGHT JOIN;  
- 모든 값 각각 합치기 - SELECT column_name(s) FROM table1 CROSS JOIN table2;  
- 동일 테이블 합치기 - SELECT column_name(s) FROM table1 T1, table1 T2 WHERE condition;  
####  
