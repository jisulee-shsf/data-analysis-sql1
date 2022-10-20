-- 1-1. IF
# student_list에서 score1이 80 이상인 경우 'level_a'를, 아닌 경우 'level_b'를 기입한 class_list 컬럼과 id 출력하기
SELECT id
     , IF(score1 >= 80, 'level_a', 'level_b') AS class_list
FROM student_list;

-- 1-2. IFNULL
# student_list에서 remarks가 공란인 경우 '없음'을 기입한 remarks_list 컬럼과 id 출력하기
SELECT id
     , IFNULL(remarks, '없음') AS remarks_list
FROM student_list;

-- 2. CASE
# student_list에서 score1이 80 이상인 경우 'class_a'를, 80 미만인 경우 'class_b'를, 이외 경우는 'class_c'를 기입한 class_list 컬럼과 id 출력하기
SELECT id,
CASE
    WHEN score1 >= 80 THEN 'class_a'
    WHEN score1 < 80 THEN 'class_b'
    ELSE 'class_c'
    END AS class_list
FROM student_list;
