-- Q1. 숫자형 데이터 함수 - ABS
# 숫자의 절댓값을 반환하는 ABS 실습
# FLOAT 타입에 ABS 적용 시, 입력 값의 근사치 출력
SELECT ABS(score_float)
FROM student;

-- Q2. 숫자형 데이터 함수 - CELING / FLOOR
# 숫자의 정수로 올림을 반환하는 CELING / 숫자의 정수로 내림을 반환하는 FLOOR 실습
SELECT CELING(score_float), FLOOR(score_float)
FROM student;

-- Q3. 숫자형 데이터 함수 - ROUND / TRUNCATE
# 입력 숫자의 소수점 자릿수까지 반올림해 반환하는 ROUND / 입력 숫자의 소수점 자릿수까지 버림해서 반환하는 TRUNCATE 실습
SELECT ROUND(score_float), TRUNCATE(score_float)
FROM student;

-- Q4. 숫자형 데이터 함수 - POWER
# 입력1 값을 입력2 숫자로 제곱한 값을 반환하는 POWER 실습
SELECT id, name, POWER(score, 3)
FROM student;

-- Q5. 숫자형 데이터 함수 - MOD
# 입력1 값을 숫자2 값으로 나눈 나머지를 반환하는 MOD 실습
# MOD 함수를 통해 짝수 / 홀수 여부 판단 가능
SELECT id, name, MOD(score, 10)
FROM student;