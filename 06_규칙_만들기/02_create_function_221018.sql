-- STEP1. MySQL Workbench 사용자 계정에 function create 권한 설정
SET GLOBAL log_bin_trust_function_creators = 1;

-- STEP2. 함수 시작 지정 
DELIMITER //

-- STEP3. 함수 생성
CREATE FUNCTION totalScore(score1 INT, score2 INT)
               RETURNS VARCHAR(20)
BEGIN 
      DECLARE a INT;
      DECLARE b INT;
      DECLARE totalScore VARCHAR(20);
      SET a = score1;
      SET b = score2;
      SELECT CASE
		 WHEN a + b > 150 THEN 'class_a'
		 WHEN a + b > 100 THEN 'class_b'
		 ELSE 'class_c'
		 END INTO totalScore;
      RETURN totalScore;
END

-- STEP4. 함수 종료 지정 
// 
DELIMITER ;

-- STEP5. 함수 실행 쿼리 작성
SELECT id, name, score1, score2, totalScore(score1, score2) AS class_list
FROM student_list;

/* 테스트 테이블 생성 및 데이터 삽입
CREATE TABLE student_list(
             id INT,
	     name VARCHAR(20),
	     major VARCHAR(20),
	     score1 INT,
	     score2 INT,
	     score3 FLOAT);

INSERT INTO student_list(id, name, major, score1, score2, score3)
VALUES(1, 'AAA', 'english', 90, 70, 3.5), 
      (2, 'BBB', 'mathematics', 60, 90, 4.5), 
      (3, 'CCC', 'music', 80, 50, 3.5), 
      (4, 'DDD', 'science', 30, 60, 8.5), 
      (5, 'EEE', 'history', 70, 60, 9.5); */
