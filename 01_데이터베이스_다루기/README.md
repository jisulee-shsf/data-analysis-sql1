####  
## 01. 데이터베이스 다루기  
#### ► [01_create_alter_drop_insert_update_truncate_221009]  
- 데이터베이스 및 테이블의 생성 ・ 변경 ・ 삭제하는 CREATE / ALTER TABLE / DROP 실습  
- 테이블 내에 데이터 삽입 ・ 변경 ・ 삭제하는 INSERT INTO / UPDATE / TRUNCATE TABLE 실습  
####  
- ✔︎ 테이블 생성 시, 어떤 데이터베이스 내에 테이블을 생성할 것인지 'USE [데이터베이스명]' 쿼리 기재 필요  
- ✔︎ 쿼리 작성 시 기능적으로 대소문자 구분은 없으나, 가독성을 위해 키워드와 함수명은 대문자 & 사용자가 정의한 이름은 소문자 사용  
- ✔︎ 쿼리가 끝날 경우, 명령을 마친다는 의미로 ;(세미콜론) 기재 필요  
##  
#### CREATE statement  
- 데이터베이스 생성 - CREATE DATABASE database_name;  
- 테이블 생성 - CREATE TABLE table_name(column1 datatype, column2 datatype, column3 datatype, ...);  
#### ALTER TABLE statement  
- 컬럼 추가 - ALTER TABLE table_name ADD column_name datatype;  
- 컬럼 삭제 - ALTER TABLE table_name DROP COLUMN column_name;  
- 테이블명 변경 - ALTER TABLE old_table_name RENAME new_table_name;  
- 기존 컬럼명 변경 - ALTER TABLE table_name CHANGE COLUMN old_column_name new_column_name datatype;
- 기존 컬럼 타입 변경 - ALTER TABLE table_name MODIFY COLUMN column_name datatype;  
#### DROP statement  
- 데이터베이스 삭제 - DROP DATABASE database_name;  
- 테이블 삭제 - DROP TABLE table_name;  
#### INSERT INTO statement  
- 데이터 삽입1 - INSERT INTO table_name(column1, column2, column3, ...) VALUES(value1, value2, value3, ...);  
- 데이터 삽입2 - INSERT INTO table_name VALUES (value1, value2, value3, ...);  
#### UPDATE statement  
- 기존 전체 데이터 변경 - UPDATE table_name SET column1 = value1, column2 = value2, ...;  
- 기존 특정 데이터 변경 - UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;  
#### TRUNCATE TABLE statement  
- 데이터 값 삭제 - TRUNCATE TABLE table_name;  
##  
#### Database(DB)  
- 여러 사람이 공유하여 사용할 목적으로 체계화해 통합 및 관리하는 데이터의 집합  
- 폴더에 파일을 보관하는 것처럼, 테이블을 저장하는 저장소 / 열과 행으로 이루어진 데이터 표  
####  
#### DBMS(Database Management System)  
- 다수의 사용자들이 데이터베이스 내의 테이터를 접근할 수 있도록 해주는 소프트웨어 도구 집합  
####  
#### RDBMS(Relational Database Management System)  
- IBM 산호세 연구소의 에드거 F. 커드가 도입한 관계형 모델을 기반으로 하는 데이터베이스 관리 시스템(DBMS)  
- 카테고리별로 테이블을 분리해 중복 데이터 등의 문제를 최소화하고, 각 테이블의 고유한 값을 관계 맺어 데이터를 추출할 수 있는 기능 제공  
- 비관계형 데이터베이스인 NoSQL(not only SQL, non SQL, non-relational) 참고  
####  
#### SQL(Structured Query Language / Sequel)  
- 관계형 데이터베이스 관리 시스템(RDBMS)의 데이터를 관리하기 위해 설계된 특수 목적 언어  
- Python 등과 같이 다양한 분야에서 활용 가능한 범용 프로그래밍 언어라기보다, HTML처럼 특정 사용처에서 사용되는 도메인 언어로 구분  
####  
