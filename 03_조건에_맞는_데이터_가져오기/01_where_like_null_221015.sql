-- Q1. Comparison Operators(=) - customers에서 country가 uk인 contact_name 출력하기
SELECT contact_name
FROM customers
WHERE country = 'uk';

-- Q2-1. OR - customers에서 city가 london 또는 paris인 contact_name 출력하기
SELECT contact_name
FROM customers 
WHERE city = 'london' OR city = 'paris';

-- Q2-2. NOT - customers에서 city가 london이고 contact_name이 simon crowther이 아닌 값 출력하기
SELECT contact_name
FROM customers 
WHERE city = 'london' AND NOT(contact_name = 'simon crowther');
#WHERE city = 'london' AND contact_name != 'simon crowther';

-- Q3. IN - categories에서 description 내에 cheeses 또는 seaweed and fish가 포함된 category_name 출력하기
SELECT category_name
FROM categories
WHERE description IN ('cheeses', 'seaweed and fish');
#WHERE description = 'cheeses' OR description = 'seaweed and fish';

-- Q4-1. Wildcard(%) - customers에서 contact_name이 s로 끝나는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '%s';

-- Q4-2. Wildcard(%) - customers에서 contact_name이 s로 시작하는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE 's%';

-- Q4-3. Wildcard(%) - customers에서 contact_name이 s가 포함된 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '%s%';

-- Q4-4. Wildcard(_) - customers에서 contact_name이 1개의 문자와 s로 끝나는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '_s';

-- Q4-5. Wildcard(_) - customers에서 contact_name이 1개 이상의 문자와 s로 끝나는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '%_s';

-- Q4-6. Wildcard(_) - customers에서 contact_name이 s를 포함하고 s 앞뒤로 각각 1개 이상의 문자가 있는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '%_s_%';

-- Q4-7. Wildcard(_) - customers에서 contact_name이 s를 포함하고 s로 끝나지 않는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '%s_%';
#WHERE contact_name LIKE '%s%_';

-- Q5-1. IS NULL - customers에서 contact_name이 NULL인 contact_name 값 출력하기
SELECT contact_name
FROM customers
WHERE contact_name IS NULL;

-- Q5-2. IS NOT NULL - customers에서 contact_name이 NULL이 아닌 contact_name 값 출력하기
SELECT contact_name
FROM customers
WHERE contact_name IS NOT NULL;
