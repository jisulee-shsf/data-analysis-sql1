-- 1-1. Sum of sets - UNION
SELECT id, name, score1, score2, score3
FROM student_list1
UNION
SELECT id, name, score1, score2, score3
FROM student_list2;

-- 1-2. Sum of sets - UNION ALL
SELECT id, name, score1, score2, score3
FROM student_list1
UNION ALL
SELECT id, name, score1, score2, score3
FROM student_list2
ORDER BY id; 

-- 2-1. Intersection - INNER JOIN
SELECT A.name
FROM student_list1 A
INNER JOIN student_list2 B ON A.name = B.name;

-- 2-2. Intersection
SELECT A.name
FROM student_list1 A
INNER JOIN  student_list2 B ON A.id = B.id
						   AND A.name = B.name
						   AND A.major = B.major
                           AND A.score1 = B.score1
						   AND A.score2 = B.score2
						   AND A.score3 = B.score3;
                  
-- 3-1. Difference of sets
SELECT A.name
FROM student_list1 A
LEFT JOIN student_list2 B ON A.name = B.name
WHERE B.name IS NULL;

-- 3-2. Difference of sets
SELECT A.name
FROM student_list1 A
LEFT JOIN student_list2 B ON A.id = B.id
					     AND A.name = B.name
					     AND A.major = B.major
					     AND A.score1 = B.score1
					     AND A.score2 = B.score2
					     AND A.score3 = B.score3
WHERE B.name IS NULL;


/*
DROP TABLE IF EXISTS student_list1;
DROP TABLE IF EXISTS student_list2;

CREATE TABLE student_list1(
             id INT
		   , name VARCHAR(20)
		   , major VARCHAR(20)
		   , score1 INT
		   , score2 INT
		   , score3 FLOAT);

INSERT INTO student_list1(id, name, major, score1, score2, score3) 
VALUES(1, 'AAA', 'english', 60, 70, 3.5), 
      (2, 'BBB', 'mathematics', 60, 90, 4.5), 
      (3, 'CCC', 'music', 80, 50, 3.5), 
      (4, 'DDD', 'science', 30, 60, 8.5), 
      (5, 'EEE', 'history', 70, 60, 9.5);
      
CREATE TABLE student_list2(
             id INT
		   , name VARCHAR(20)
		   , major VARCHAR(20)
		   , score1 INT
		   , score2 INT
		   , score3 FLOAT);

INSERT INTO student_list2(id, name, major, score1, score2, score3) 
VALUES(1, 'AAA', 'english', 60, 70, 3.5), 
      (2, 'BBB', 'mathematics', 90, 90, 4.5), 
      (3, 'GGG', 'music', 60, 70, 3.5), 
      (4, 'HHH', 'science', 30, 60, 8.5), 
      (5, 'III', 'history', 80, 80, 9.5);
*/