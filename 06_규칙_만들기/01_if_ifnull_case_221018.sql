-- 1-1. IF
SELECT id
     , IF(score1 >= 80, 'level_a', 'level_b') AS class_list
FROM student_list;

-- 1-2. IFNULL
SELECT id
     , IFNULL(remarks, '없음') AS remarks_list
FROM student_list;

-- 2. CASE
SELECT id, 
CASE
     WHEN score1 >= 80 THEN 'class_a'
     WHEN score1 < 80 THEN 'class_b'
     ELSE 'class_c'
     END AS class_list
FROM student_list;
