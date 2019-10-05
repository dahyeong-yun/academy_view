-- -------------------------------------------------------------------
-- ����� ���̺�
-- -------------------------------------------------------------------
CREATE TABLE users(
    user_id VARCHAR2(11) NOT NULL, -- 2019 01 00(10,11,12 / 20,21 ���� ��) 11�ڸ� ����
    user_password VARCHAR2(20) NULL, -- ���� ���� ������ �ؼ� null ����
    user_type CHAR(1) NOT NULL, -- 0 : ������ / 1 : ���� / 2 : �л� / 3 : �����
    user_suspended CHAR(1) DEFAULT 0 NOT NULL, -- 0 : Ȱ�� / 1 : ����
	user_name VARCHAR2(20) NOT NULL,
	user_phone VARCHAR2(11) NOT NULL, -- �ִ� 11�ڸ� ���� 3+4+4
	user_email VARCHAR2(50) NOT NULL, -- 
	user_address VARCHAR2(200)	NULL,
	user_gender CHAR(1)	NOT NULL,  -- 0 : �� / 1 : ��'
	user_join DATE NOT NULL
);
DROP TABLE users;
SELECT * FROM users;
DESC users;

-- �⺻Ű ����
ALTER TABLE users
ADD CONSTRAINT pk_users
PRIMARY KEY(user_id);

ALTER TABLE users DROP CONSTRAINT pk_users;

COMMIT;

-- -------------------------------------------------------------------
-- �л� ���̺�
-- -------------------------------------------------------------------
CREATE TABLE student (
	stu_id VARCHAR2(11)NOT NULL,
    stu_type CHAR(1) NOT NULL
);
DROP TABLE student;
SELECT * FROM student;
DESC student;

-- �⺻Ű ����
ALTER TABLE student
ADD CONSTRAINT pk_student
PRIMARY KEY(stu_id);

ALTER TABLE student DROP CONSTRAINT pk_student;

/* �ܷ�Ű ���� �߰�
alter table student
add constraint fk_student_stu_id
foreign key(stu_id) references users(user_id);

alter table student
drop constraint fk_student_stu_id;
*/

COMMIT;

-- -------------------------------------------------------------------
-- ���� ���̺�
-- -------------------------------------------------------------------
CREATE TABLE employee (
	emp_id VARCHAR2(11) NOT NULL,
    emp_rank CHAR(1) NOT NULL,
    emp_salary NUMBER(9) NOT NULL,
    emp_type CHAR(1) NOT NULL
);
DROP TABLE employee;
SELECT * FROM employee;
DESC employee;

-- �⺻Ű ����
ALTER TABLE employee
ADD CONSTRAINT pk_employee
PRIMARY KEY(emp_id);

ALTER TABLE employee DROP CONSTRAINT pk_employee;

COMMIT;

-- -------------------------------------------------------------------
-- ���ǽ� ���̺�
-- -------------------------------------------------------------------
CREATE TABLE classroom (
    clr_id VARCHAR2(10) NOT NULL,
    clr_name VARCHAR2(20) NOT NULL,
    clr_capa NUMBER(3) NOT NULL
);
DROP TABLE classroom;
SELECT * FROM classroom;
DESC classroom;

-- �⺻Ű ����
ALTER TABLE classroom
ADD CONSTRAINT pk_classroom
PRIMARY KEY(clr_id);

ALTER TABLE classroom DROP CONSTRAINT pk_classroom;

COMMIT;

-- -------------------------------------------------------------------
-- ���� ���� ���̺�
-- -------------------------------------------------------------------
CREATE TABLE lecture (
    lec_id  VARCHAR2(11) NOT NULL,
    lec_name VARCHAR2(20) NOT NULL,
    clr_id VARCHAR2(10) NOT NULL,
    lec_dis VARCHAR2(200) NOT NULL
);
DROP TABLE lecture;
SELECT * FROM lecture;
DESC lecture;

-- �⺻Ű ����
ALTER TABLE lecture
ADD CONSTRAINT pk_lecture
PRIMARY KEY(lec_id);

ALTER TABLE lecture DROP CONSTRAINT pk_lecture;
/*
-- �ܷ�Ű ���� �߰�
ALTER TABLE lecture
ADD CONSTRAINT fk_lecture_clr_id
FOREIGN KEY(clr_id) REFERENCES classroom(clr_id);

alter table lecture
drop constraint fk_lecture_clr_id;
*/

COMMIT;

-- -------------------------------------------------------------------
-- ���� ���̺� ; ������ ���� ����
-- -------------------------------------------------------------------
CREATE TABLE teach_lecture (
    tel_id  VARCHAR2(10) NOT NULL,
    emp_id  VARCHAR2(11) NOT NULL,
    lec_id  VARCHAR2(10) NOT NULL,
    tel_enroll_date DATE NOT NULL,
    tel_begin_date DATE NOT NULL,
    tel_end_date DATE NOT NULL,
    tel_curr VARCHAR2(3000) NOT NULL
);
DROP TABLE teach_lecture;
SELECT * FROM teach_lecture;
DESC teach_lecture;

-- �⺻Ű ����
ALTER TABLE teach_lecture
ADD CONSTRAINT pk_teach_lecture
PRIMARY KEY(tel_id);

ALTER TABLE teach_lecture DROP CONSTRAINT pk_teach_lecture;
/*
-- �ܷ�Ű ����
*/
COMMIT;

-- -------------------------------------------------------------------
-- ���� �Խù�
-- -------------------------------------------------------------------
CREATE TABLE lecture_qna(
    qna_id VARCHAR2(10) NOT NULL,
    tel_id VARCHAR2(10) NOT NULL,
    user_id VARCHAR2(11) NOT NULL,
    qna_title VARCHAR2(50) NOT NULL,
    qna_content VARCHAR2(3000) NOT NULL,
    qna_created DATE NOT NULL,
    qna_updated DATE NOT NULL
);
DROP TABLE lecture_qna;
SELECT * FROM lecture_qna;
DESC lecture_qna;

-- �⺻Ű ����
ALTER TABLE lecture_qna
ADD CONSTRAINT pk_lecture_qna
PRIMARY KEY(tel_id, qna_id);

ALTER TABLE lecture_qna DROP CONSTRAINT pk_lecture_qna;
/*
-- �ܷ�Ű ����
*/
COMMIT;

-- -------------------------------------------------------------------
-- ��� ���
-- -------------------------------------------------------------------
CREATE TABLE lecture_qna_reply (
    rep_id VARCHAR2(10) NOT NULL,
    qna_id VARCHAR2(10) NOT NULL,
    tel_id VARCHAR2(11) NOT NULL,
    user_id VARCHAR2(11) NOT NULL,
    rep_content VARCHAR2(500) NOT NULL,
    rep_created DATE NOT NULL,
    rep_updated DATE NOT NULL
);
DROP TABLE lecture_qna_reply;
SELECT * FROM lecture_qna_reply;
DESC lecture_qna_reply;

-- �⺻Ű ����
ALTER TABLE lecture_qna_reply
ADD CONSTRAINT pk_lecture_qna_reply
PRIMARY KEY(tel_id, qna_id, rep_id);

ALTER TABLE lecture_qna_reply DROP CONSTRAINT pk_lecture_qna_reply;

COMMIT;

-- -------------------------------------------------------------------
-- ���� ���̺� ; �л��� ���� ����
-- -------------------------------------------------------------------
CREATE TABLE attend_lecture(
    atc_id VARCHAR2(10) NOT NULL,
    stu_id VARCHAR2(11) NOT NULL,
    tel_id VARCHAR2(10) NOT NULL,
    atc_join DATE NOT NULL,
    atc_complete CHAR(1) NOT NULL
);
DROP TABLE attend_lecture;
SELECT * FROM attend_lecture;
DESC attend_lecture;

-- �⺻Ű ����
ALTER TABLE attend_lecture
ADD CONSTRAINT pk_attend_lecture
PRIMARY KEY(atc_id);

ALTER TABLE attend_lecture DROP CONSTRAINT pk_attend_lecture;
/*
-- �ܷ�Ű ���� �߰�
alter table attend_lecture
add constraint fk_attend_lecture_stu_id
foreign key(stu_id) references student(stu_id);

alter table attend_lecture
drop constraint attend_lecture_stu_id_fk;
*/
COMMIT;