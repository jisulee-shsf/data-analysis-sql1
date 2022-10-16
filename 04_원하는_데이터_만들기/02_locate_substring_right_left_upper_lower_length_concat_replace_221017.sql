-- Q1. 문자형 데이터 함수 - LOCATE
#문자열에서 입력 문자가 몇 번째에 해당하는지 위치를 반환하는 LOCATE
#문자가 중복되는 경우, 먼저 위치한 문자 위치를 반환
#문자가 없는 경우, 0을 반환 
SELECT major
     , LOCATE('e', major)
FROM student;

-- Q2. 문자형 데이터 함수 - SUBSTRING
#문자열에서 입력된 숫자 위치부터 문자를 반환하는 SUBSTRING
SELECT major
     , SUBSTRING(major, 3)
FROM student;

-- Q3. 문자형 데이터 함수 - RIGHT / LEFT
#문자열에서 입력된 숫자의 오른쪽 / 왼쪽 위치부터 문자를 반환하는 RIGHT / LEFT
SELECT major
     , RIGHT(major, 3)
FROM student;

SELECT major
     , LEFT(major, 3)
FROM student;

-- Q4. 문자형 데이터 함수 - UPPER / LOWER
#입력된 문자열을 대문자 / 소문자로 반환하는 UPPER / LOWER
SELECT major
     , UPPER(major)
FROM student;

SELECT major
     , LOWER(major)
FROM student;

-- Q5. 문자형 데이터 함수 - LENGTH
#입력된 문자열의 글자 수를 반환하는 LENGTH
SELECT major
     , LENGTH(major)
FROM student;

-- Q6. 문자형 데이터 함수 - CONCAT
#문자열의 문자를 합쳐서 반환하는 CONCAT
SELECT major
     , CONCAT(LEFT(major, 1), RIGHT(major, 1)) AS concat_test
FROM student;

-- Q7. 문자형 데이터 함수 - REPLACE
#문자열의 문자를 대체하여 반환하는 REPLACE
SELECT major
     , REPLACE(major, 'e', '_')
FROM student;