-- Q1. DB / table이 존재할 경우, 삭제하기
DROP DATABASE IF EXISTS school; 
DROP TABLE IF EXISTS student;

-- Q2. DB 생성하기
CREATE DATABASE school;

-- Q3. DB 사용 선언 및 table 생성하기
USE school;
CREATE TABLE test_student(
       ids INT,
       name VARCHAR(10),
       major VARCHAR(10)
);

-- Q4.table 이름 변경하기
ALTER TABLE test_student RENAME student;

-- Q5. column 추가 및 타입 변경하기
ALTER TABLE student ADD COLUMN score INT;
ALTER TABLE student MODIFY COLUMN score FLOAT;

-- Q6. 기존 column 이름 변경 및 타입 변경하기
ALTER TABLE student CHANGE COLUMN ids id FLOAT;

-- Q7. column 삭제하기
ALTER TABLE student DROP COLUMN score;

-- Q8. table 내에 단수 데이터 삽입하기
INSERT INTO student(id, name, major)
VALUES(1, 'A', 'english');

-- Q9. table 내에 복수 데이터 삽입하기
INSERT INTO student(id, name, major)
VALUES(2, 'B', 'math'),
	  (3, 'C', 'music');
      
-- Q10. DB & table 정보 확인하기
SHOW DATABASES;
SHOW TABLES;

-- Q11. table 값만 삭제하기
TRUNCATE TABLE student;

-- Q12. DB & table 삭제하기 / table 값만 삭제하기
DROP DATABASE school; 
DROP TABLE student;