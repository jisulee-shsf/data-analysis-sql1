-- 1. 데이터베이스 & 테이블이 존재할 경우, 삭제하기
DROP DATABASE IF EXISTS school; 
DROP TABLE IF EXISTS student;

-- 2. 데이터베이스 생성하기
CREATE DATABASE school;

-- 3. 데이터베이스 사용 선언 및 테이블 생성하기
USE school;
CREATE TABLE test_student(
       ids INT,
       name VARCHAR(10),
       major VARCHAR(10)
);

-- 4. 테이블명 변경
ALTER TABLE test_student RENAME student;

-- 5. 컬럼 추가
ALTER TABLE student ADD COLUMN score INT;
ALTER TABLE student MODIFY COLUMN score FLOAT;

-- 6. 기존 컬럼명 변경하기
ALTER TABLE student CHANGE COLUMN ids id FLOAT;

-- 7. 컬럼 삭제하기
ALTER TABLE student DROP COLUMN score;

-- 8. 단수 데이터 삽입하기
INSERT INTO student(id, name, major)
VALUES(1, 'A', 'english');

-- 9. 복수 데이터 삽입하기
INSERT INTO student(id, name, major)
VALUES(2, 'B', 'math'),
      (3, 'C', 'music');
      
-- 10. 기존 특정 데이터 변경하기
UPDATE student
SET major = 'mathematics'
WHERE id = 2;

-- 11. 데이터베이스 & 테이블 정보 확인하기
SHOW DATABASES;
SHOW TABLES;

-- 12. 데이터 값 삭제하기
TRUNCATE TABLE student;

-- 13. 데이터베이스 / 테이블 삭제하기
DROP DATABASE school; 
DROP TABLE student;
