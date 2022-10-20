####  
## 10. 고급 기능  
#### ► [01_delete_update_constraints_221020]  
- 데이터를 삭제 또는 수정하는 DELETE / UPDATE 실습  
- 테이블을 만들거나 변경할 때, 데이터 입력 규칙을 정의하는 다양한 제약 조건 활용 실습  
####  
- ✔︎ Constraints -  
- NOT NULL - NULL값을 저장할 수 없음 → INSERT INTO를 통한 데이터 삽입 필요  
- UNIQUE - 컬럼 내에 값이 서로 고유함  
- DEFAULT - 컬럼 내에 입력값이 없을 시, 대체할 기본값 설정  
- PRIMARY KEY - 테이블의 기본키 / NOT NULL & UNIQUE의 특징을 가짐  
- FOREIGN KEY - 테이블의 외래키 / 다른 테이블의 특정 컬럼(PRIMARY KEY) 참조  
#### ► [02_dcl_tcl_221020]  
- root 사용자가 사용자별로 데이터 접근 권한과 상세 접근 범위를 지정하는 DCL 사용 실습  
- 데이터베이스 내에 데이터 상태를 바꾸는 명령 작업 묶음인 트랜잭션을 실행하는 TCL 사용 실습  
####  
- ✔︎ SQL 분류 -  
- DDL(Data Definition Language) - CREATE / ALTER / DROP / RENAME / TRUNCATE  
- DML(Data Manipulation Language) - SELECT / INSERT / UPDATE / DELETE  
- DCL(Data Control Language) - GRANT / REVOKE  
- TCL(Transaction Control Language) - COMMIT / ROLLBACK / SAVEPOINT  
##
#### DELETE / UPDATE
``` SQL
DELETE FROM table_name WHERE condition;
```
``` SQL
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```
#### Constraints
``` SQL
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);
```
####
