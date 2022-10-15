-- Q1. 비교 연산자 =) Customers에서 Country가 UK인 ContactName 출력하기
SELECT ContactName
FROM Customers
WHERE Country = 'UK';

-- Q2-1. 논리 연산자 OR) Customers에서 CITY가 London 또는 Paris ContactName 출력하기
-- WHERE 절에 동일한 컬럼의 정보를 추출한다고 하더라도 'CITY ='의 반복 빼면 안됨
SELECT ContactName
FROM Customers 
WHERE CITY = 'London' OR CITY = 'Paris';

-- Q2-2. 논리 연산자 NOT) Customers에서 CITY가 London이나 ContactName이 Simon Crowther이 아닌 값 출력하기
-- NOT(ContactName = 'Simon Crowther')은 ContactName != 'Simon Crowther'로 쿼리 작성될 수 있음 / 동일 요청도 쿼리 작성 방법이 다양함
-- BETWEEN A AND B = A <= column_name AND column_name<= B와 동일
SELECT ContactName
FROM Customers 
WHERE CITY = 'London' AND NOT(ContactName = 'Simon Crowther');

-- Q3. 기타 주요 연산자 IN) Categories에서 Description 내에 'Cheeses' 또는 'Seaweed and fish'가 포함된 CategoryName 출력하기
-- Description IN ('Cheeses', 'Seaweed and fish') == Description = 'Cheeses' OR Description = 'Seaweed and fish'
-- 해당 컬럼의 값이 '()' 내의 값에 포함되는 값을 가진 로우를 출력하는 in의 경우, 목록을 여러개 넣을 때 or 보다 적절
SELECT CategoryName
FROM Categories
WHERE Description IN ('Cheeses', 'Seaweed and fish');

-- Q4-1. 와일드 카드 %) Customers에서 ContactName이 s로 끝나는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '%s';

-- Q4-2. 와일드 카드 %) Customers에서 ContactName이 s로 시작하는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE 's%';

-- Q4-3. 와일드 카드 %) Customers에서 ContactName이 s가 포함된 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '%s%';

-- Q4-4. 와일드 카드 _) Customers에서 ContactName이 1개의 문자와 s로 끝나는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '_s';

-- Q4-5. 와일드 카드 _) Customers에서 ContactName이 1개 이상의 문자와 s로 끝나는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '%_s';

-- Q4-6. 와일드 카드 - _) Customers에서 ContactName이 s를 포함하고 s 앞뒤로 각각 1개 이상의 문자가 있는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '%_s_%';

-- Q4-6. 와일드 카드 _) Customers에서 ContactName이 s를 포함하고 s로 끝나지 않는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '%s_%';

-- Q5-1. IS NULL) Customers에서 ContactName NULL 값 출력하기
SELECT ContactName
FROM Customers
WHERE ContactName IS NULL;

-- Q5-2. IS NOT NULL) Customers에서 ContactName NULL 값이 아닌 값 출력하기
SELECT ContactName
FROM Customers
WHERE ContactName IS NOT NULL;