-- Q1-1. IF
-- SELECT 절 내에 단수의 조건을 생성해 결과값을 새로운 컬럼으로 반환하는 IF 실습
SELECT name
     , IF(score >= 70, 'level_a', 'level_b') AS score_if
FROM student;

-- Q1-2. IFNULL
-- SELECT 절 내에서 입력 데이터가 NULL인 경우, 결과값을 새로운 컬럼으로 반환하는 IFNULL 실습
SELECT id
     , IFNULL(remarks, '없음') AS score_ifnull
FROM student;

-- Q2. CASE
-- SELECT 절 내에 복수의 조건을 생성해 결과값을 새로운 컬럼으로 반환하는 CASE 실습
-- CASE의 경우, 복수의 조건을 만들지만 결과값 컬럼은 1개만 생성
-- ELSE 문장 생략 시, 조건식의 거짓에 해당하는 값에 NULL 값 반환
-- 'CASE WHEN + 조건식~ / CASE column_name WHEN 조건값~'의 2가지 형식 존재
SELECT price, 
CASE
     WHEN score >= 30 AND score <= 100 THEN 'score_a'
     WHEN score < 30 THEN 'score_b'
     ELSE 'out_of_range'
END AS score_case
FROM student;