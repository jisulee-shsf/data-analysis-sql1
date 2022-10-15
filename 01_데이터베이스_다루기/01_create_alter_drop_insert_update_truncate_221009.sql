-- Q1. 데이터베이스 & 테이블이 존재할 경우, 삭제하기
DROP DATABASE IF EXISTS school; 
DROP TABLE IF EXISTS student;

-- Q2. 데이터베이스 생성하기
CREATE DATABASE school;

-- Q3. 데이터베이스 사용 선언 및 테이블 생성하기
USE school;
CREATE TABLE test_student(
       ids INT,
       name VARCHAR(10),
       major VARCHAR(10)
);

-- Q4.테이블 이름 변경하기
ALTER TABLE test_student RENAME student;

-- Q5. 컬럼 추가 및 타입 변경하기
ALTER TABLE student ADD COLUMN score INT;
ALTER TABLE student MODIFY COLUMN score FLOAT;

-- Q6. 기존 컬럼 이름 변경 및 타입 변경하기
ALTER TABLE student CHANGE COLUMN ids id FLOAT;

-- 07. 기존 컬럼 타입만 변경하기
ALTER TABLE student MODIFY major varchar(30);

-- Q8. 컬럼 삭제하기
ALTER TABLE student DROP COLUMN score;

-- Q9. 테이블 내에 단수 데이터 삽입하기
INSERT INTO student(id, name, major)
VALUES(1, 'A', 'english');

-- Q10. 테이블 내에 복수 데이터 삽입하기
INSERT INTO student(id, name, major)
VALUES(2, 'B', 'math'),
      (3, 'C', 'music');
      
-- Q11. 테이블 내에 특정 데이터 수정하기
UPDATE student
SET major = 'mathematics'
WHERE id = 2;

-- Q12. 데이터베이스 & 테이블 정보 확인하기
SHOW DATABASES;
SHOW TABLES;

-- Q13. 테이블 값만 삭제하기
TRUNCATE TABLE student;

-- Q14. 데이터베이스 & 테이블 삭제하기
DROP DATABASE school; 
DROP TABLE student;
