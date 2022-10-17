-- 1-1. IF
SELECT name
     , IF(score >= 70, 'level_a', 'level_b') AS score_if
FROM student;

-- 1-2. IFNULL
SELECT id
     , IFNULL(remarks, '없음') AS score_ifnull
FROM student;

-- 2. CASE
SELECT id, 
CASE
     WHEN score >= 30 AND score <= 100 THEN 'class_a'
     WHEN score < 30 THEN 'class_b'
     ELSE 'class_c'
END AS class_list
FROM student_list;
