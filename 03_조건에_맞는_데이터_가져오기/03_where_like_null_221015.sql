-- Q1-1. 비교 연산자 =) Customers에서 Country가 UK인 ContactName 출력하기
SELECT ContactName
FROM Customers
WHERE Country = 'UK';

-- Q1-2. 논리 연산자 OR) Customers에서 CITY가 London 또는 Paris ContactName 출력하기
SELECT ContactName
FROM Customers 
WHERE CITY = 'London' OR CITY = 'Paris';

-- Q1-3. 논리 연산자 NOT) Customers에서 CITY가 London이나 ContactName이 Simon Crowther이 아닌 값 출력하기
SELECT ContactName
FROM Customers 
WHERE CITY = 'London' AND NOT(ContactName = 'Simon Crowther');
#WHERE CITY = 'London' AND ContactName != 'Simon Crowther';

-- Q1-4. 기타 주요 연산자 IN) Categories에서 Description 내에 'Cheeses' 또는 'Seaweed and fish'가 포함된 CategoryName 출력하기
SELECT CategoryName
FROM Categories
WHERE Description IN ('Cheeses', 'Seaweed and fish');
#WHERE Description = 'Cheeses' OR Description = 'Seaweed and fish';

-- Q2-1. 와일드 카드 %) Customers에서 ContactName이 s로 끝나는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '%s';

-- Q2-2. 와일드 카드 %) Customers에서 ContactName이 s로 시작하는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE 's%';

-- Q2-3. 와일드 카드 %) Customers에서 ContactName이 s가 포함된 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '%s%';

-- Q2-4. 와일드 카드 _) Customers에서 ContactName이 1개의 문자와 s로 끝나는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '_s';

-- Q2-5. 와일드 카드 _) Customers에서 ContactName이 1개 이상의 문자와 s로 끝나는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '%_s';

-- Q2-6. 와일드 카드 - _) Customers에서 ContactName이 s를 포함하고 s 앞뒤로 각각 1개 이상의 문자가 있는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '%_s_%';

-- Q2-7. 와일드 카드 _) Customers에서 ContactName이 s를 포함하고 s로 끝나지 않는 ContactName 추출하기
SELECT ContactName
FROM Customers
WHERE ContactName LIKE '%s_%';

-- Q3-1. IS NULL) Customers에서 ContactName의 NULL 값 출력하기
SELECT ContactName
FROM Customers
WHERE ContactName IS NULL;

-- Q3-2. IS NOT NULL) Customers에서 ContactName의 NULL이 아닌 값 출력하기
SELECT ContactName
FROM Customers
WHERE ContactName IS NOT NULL;
