-- 1. Scala SubQuery
# id가 2인 'BBB'의 id / name / major 출력하기
SELECT id, name,
       (SELECT major FROM student_list2 WHERE id = 2)
FROM student_list1
WHERE name = 'BBB';

-- 2. Inline View SubQuery
# score1 점수가 2번째로 높은 학생의 id / rank 출력하기
SELECT id, score1_rank
FROM (SELECT id, RANK() OVER(ORDER BY score1 DESC) AS score1_rank FROM student_list2) AS from_table
WHERE score1_rank = 2;

-- 3-1. Nested SubQuery
# score1의 평균 점수보다 score1 점수가 낮은 학생의 id 출력하기
SELECT id
FROM student_list2
WHERE score1 < (SELECT AVG(score1) FROM student_list2);

-- 3-2. Nested SubQuery
# major가 english인 모든 학생의 score1 점수보다 score1 점수가 낮은 학생의 id 출력하기
SELECT id
FROM student_list2
WHERE score1 < ALL(SELECT score1 FROM student_list2 WHERE major = 'english');

-- 3-3. Nested SubQuery
# major가 english인 모든 학생의 score1 점수보다 score2 점수가 하나라도 높은 학생이 있다면 id 출력하기
SELECT id
FROM student_list2
WHERE score2 > ANY(SELECT score1 AS test_score FROM student_list2 WHERE major = 'english');

-- 3-4. Nested SubQuery
# major가 english인 학생이 있다면, 모든 정보 출력하기
SELECT *
FROM student_list2
WHERE EXISTS(SELECT * FROM student_list2 WHERE major = 'english');

/* 테스트 테이블 생성 및 데이터 삽입
DROP TABLE IF EXISTS student_list1;
DROP TABLE IF EXISTS student_list2;

CREATE TABLE student_list1(
             id INT,
             name VARCHAR(20));
             
INSERT INTO student_list1(id, name) 
VALUES(1, 'AAA'), 
      (2, 'BBB'), 
      (3, 'CCC'), 
      (4, 'DDD'), 
      (5, 'EEE');
      
CREATE TABLE student_list2(
             id INT,
             major VARCHAR(20),
             score1 INT,
             score2 INT,
             score3 FLOAT);
             
INSERT INTO student_list2(id, major, score1, score2, score3) 
VALUES(1, 'english', 60, 40, 3.5), 
      (2, 'english', 90, 50, 4.5), 
      (3, 'music', 60, 60, 3.5), 
      (4, 'science', 30, 95, 8.5), 
      (5, 'history', 80, 65, 9.5); */
