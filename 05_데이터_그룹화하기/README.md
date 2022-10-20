####  
## 05. 데이터 그룹화하기  
#### ► [01_group_by_having_group_functions_221017]  
- 컬럼 내에 동일한 데이터를 가진 행을 그룹화하는 GROUP BY 실습  
- 그룹화된 데이터에서 원하는 그룹만 선택해 통계 내는 HAVING 실습  
- Group functions인 데이터 수 계산 COUNT / 총합 계산 SUM / 평균 계산 AVG / 최솟값 & 최댓값 계산 MIN & MAX 실습  
- Query execution order에 따른 문제풀이 진행  
####  
- ✔︎ HAVING - 그룹화된 데이터를 선택하는 방법은 GROUP BY의 WHERE 절인 HAVING을 사용  
- ✔︎ Group functions - 그룹 함수 내 집계 컬럼은 그룹화의 기준이 되는 컬럼과 동일하거나 상이해도 무방  
- ✔︎ Query execution order 작성 순서 - SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY
- ✔︎ Query execution order 실행 순서 - FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY
##
#### GROUP BY
``` SQL
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
```
#### HAVING
``` SQL
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
```
#### Group functions - COUNT / SUM / AVG / MIN & MAX
``` SQL
SELECT COUNT(column_name) FROM table_name WHERE condition;   # 데이터 수 반환
SELECT SUM(column_name) FROM table_name WHERE condition;     # 총합 반환
SELECT AVG(column_name) FROM table_name WHERE condition;     # 평균 반환
SELECT MIN(column_name) FROM table_name WHERE condition;     # 최솟값 반환
SELECT MAX(column_name) FROM table_name WHERE condition;     # 최댓값 반환
```
##
#### Query execution order
``` SQL
FROM products                                # products에서
WHERE supplier_id <= 10                      # supplier_id가 10 이하인 데이터를
GROUP BY category_id                         # category_id 기준으로 그룹화하고,
HAVING MAX(price) > 30                       # 그룹화된 데이터의 price 최댓값이 30을 초과하는
SELECT category_id, AVG(price), MAX(price)   # category_id / price 평균값 / price 최댓값을
ORDER BY 2 DESC;                             # price 평균값 내림차순으로 출력하기
```
####
