####  
## 05. 데이터 그룹화하기  
#### ► [01_group_by_having_221017]  
- 컬럼 내에 동일한 데이터를 가진 행을 그룹화하는 GROUP BY 실습  
- 그룹화된 데이터에서 원하는 그룹만 선택해 통계 내는 HAVING 실습  
- Group functions(데이터 수를 계산하는 COUNT / 총합을 계산하는 SUM / 평균을 계산하는 AVG / 최소 & 최대의 값을 계산하는 MIN & MAX) 실습  
- Query execution order에 따른 문제풀이 진행  
####  
- ✔︎ HAVING - WHERE는 조건에 맞는 데이터를 선택하는 방법이며, 그룹화된 데이터를 선택하는 방법은 GROUP BY의 WHERE 절인 HAVING을 사용  
- ✔︎ Group functions - 그룹 함수 내 집계 컬럼은 그룹의 기준이 되는 컬럼과 동일하거나 상이해도 무방  
##  
#### Query execution order  
- 작성 순서 - SELECT - FROM - WHERE - GROUP BY - HAVING - ORDER BY  
- 실행 순서 - FROM - WHERE - GROUP BY - HAVING - SELECT - ORDER BY  
####  
- FROM - Products 테이블에서  
- WHERE - SupplierID가 10 이하인 데이터를  
- GROUP BY - CategoryID 컬럼 기준으로 그룹화하고,  
- HAVING - 그룹화된 데이터의 Price 최댓값이 30을 초과하는  
- SELECT - CategoryID / AVG(Price) / MAX(Price)를  
- ORDER BY - Price 평균값 내림차순으로 출력하기  
<img width="700" alt="image" src="https://user-images.githubusercontent.com/109773795/196062146-de51b8bd-a1fc-43d2-b84d-9387c2fd2999.png">

##  
#### GROUP BY  
- SELECT column_name(s)  
- FROM table_name  
- WHERE condition  
- GROUP BY column_name(s)  
- ORDER BY column_name(s);  
#### GROUP BY / HAVING  
- SELECT column_name(s)  
- FROM table_name  
- WHERE condition  
- GROUP BY column_name(s)  
- HAVING condition  
- ORDER BY column_name(s);  
#### Group functions  
- 수 반환 - SELECT COUNT(column_name) FROM table_name WHERE condition;  
- 총합 반환 - SELECT SUM(column_name) FROM table_name WHERE condition;  
- 평균 반환 - SELECT AVG(column_name) FROM table_name WHERE condition;  
- 최솟값 반환 - SELECT MIN(column_name) FROM table_name WHERE condition;  
- 최댓값 반환 - SELECT MAX(column_name) FROM table_name WHERE condition;  
####  
