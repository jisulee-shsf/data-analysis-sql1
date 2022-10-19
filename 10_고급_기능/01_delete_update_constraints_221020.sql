-- 1. DELETE  
-- Q. student_list2에서 score1이 60 이상일 때 삭제하기  
DELETE FROM student_list2  
WHERE score1 >= 60;  

-- 1-2. UPDATE  
-- Q. student_list2에서 id가 4인 score1을 30으로 변경하기  
UPDATE student_list2  
SET score1 = 30  
WHERE id = 4;  

-- 2. CONSTRAINTS - PRIMARY KEY / FOREIGN KEY / NOT NULL / UNIQUE / DEFAULT  
DROP TABLE IF EXISTS student_list1;  
DROP TABLE IF EXISTS student_list2;  

CREATE TABLE student_list1(  
             id INT PRIMARY KEY,  
             name VARCHAR(20) NOT NULL  
);  

CREATE TABLE student_list2(  
             id INT PRIMARY KEY,  
             major1 VARCHAR(20) NOT NULL,  
             major2 VARCHAR(20) UNIQUE,  
             score1 INT DEFAULT 0,  
             score2 INT DEFAULT 50,  
             FOREIGN KEY(id) REFERENCES student_list1(id)  
);
