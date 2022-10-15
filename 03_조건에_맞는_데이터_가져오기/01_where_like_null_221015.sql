-- Q1-1. 비교 연산자 =) customers에서 country가 uk인 contact_name 출력하기
SELECT contact_name
FROM customers
WHERE country = 'uk';

-- Q1-2. 논리 연산자 OR) customers에서 city가 london 또는 paris contact_name 출력하기
SELECT contact_name
FROM customers 
WHERE city = 'london' OR city = 'paris';

-- Q1-3. 논리 연산자 NOT) customers에서 city가 london이나 contact_name이 simon crowther이 아닌 값 출력하기
SELECT contact_name
FROM customers 
WHERE city = 'london' AND NOT(contact_name = 'simon crowther');
#WHERE city = 'london' AND contact_name != 'simon crowther';

-- Q1-4. 기타 주요 연산자 IN) categories에서 description 내에 cheeses 또는 seaweed and fish가 포함된 category_name 출력하기
SELECT category_name
FROM categories
WHERE description IN ('cheeses', 'seaweed and fish');
#WHERE description = 'cheeses' OR description = 'seaweed and fish';

-- Q2-1. 와일드 카드 %) customers에서 contact_name이 s로 끝나는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '%s';

-- Q2-2. 와일드 카드 %) customers에서 contact_name이 s로 시작하는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE 's%';

-- Q2-3. 와일드 카드 %) customers에서 contact_name이 s가 포함된 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '%s%';

-- Q2-4. 와일드 카드 _) customers에서 contact_name이 1개의 문자와 s로 끝나는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '_s';

-- Q2-5. 와일드 카드 _) customers에서 contact_name이 1개 이상의 문자와 s로 끝나는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '%_s';

-- Q2-6. 와일드 카드 - _) customers에서 contact_name이 s를 포함하고 s 앞뒤로 각각 1개 이상의 문자가 있는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '%_s_%';

-- Q2-7. 와일드 카드 _) customers에서 contact_name이 s를 포함하고 s로 끝나지 않는 contact_name 추출하기
SELECT contact_name
FROM customers
WHERE contact_name LIKE '%s_%';

-- Q3-1. IS NULL) customers에서 contact_name의 NULL 값 출력하기
SELECT contact_name
FROM customers
WHERE contact_name IS NULL;

-- Q3-2. IS NOT NULL) customers에서 NULL이 아닌 contact_name 값 출력하기
SELECT contact_name
FROM customers
WHERE contact_name IS NOT NULL;
