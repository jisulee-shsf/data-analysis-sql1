-- 1. 데이터베이스 / 테이블이 존재할 경우, 삭제하기  
DROP DATABASE IF EXISTS school;  
DROP TABLE IF EXISTS student_list;  

-- 2. 데이터베이스 생성하기    
CREATE DATABASE school;  

-- 3. 데이터베이스 사용 선언 / 테이블 생성하기  
USE school;  
CREATE TABLE student_list (
    ids INT,
    name VARCHAR(30),
    major VARCHAR(30)
);  

-- 4. 테이블명 변경하기
ALTER TABLE student_list RENAME student;  

-- 5. 컬럼 추가 및 데이터 타입 변경하기  
ALTER TABLE student_list ADD COLUMN score INT;  
ALTER TABLE student_list MODIFY COLUMN score FLOAT;  

-- 6. 컬럼명 변경하기  
ALTER TABLE student_list CHANGE COLUMN ids id FLOAT;  

-- 7. 컬럼 삭제하기  
ALTER TABLE student_list DROP COLUMN score;  

-- 8. 단수 데이터 삽입하기  
INSERT INTO student_list (id, name, major)  
VALUES (1, 'A', 'english');  

-- 9. 복수 데이터 삽입하기  
INSERT INTO student_list (id, name, major)  
VALUES (2, 'B', 'math'),  
       (3, 'C', 'music');  
      
-- 10. 기존 테이블 내에 특정 데이터 변경하기  
UPDATE student_list  
SET major = 'mathematics'  
WHERE id = 2;  

-- 11. 데이터베이스 / 테이블 정보 확인하기  
SHOW DATABASES;  
SHOW TABLES;  

-- 12. 테이블 내에 데이터 값만 삭제하기  
TRUNCATE TABLE student_list;  

-- 13. 데이터베이스 / 테이블 삭제하기  
DROP DATABASE school;  
DROP TABLE student_list;  
