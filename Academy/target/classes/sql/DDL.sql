/*
 # ����� �� �̿� ���̺� �� ���� ����
    - ������
        - ����� ������ ���� ���̺� (�л�, ����, ������ => ����� ��ƼƼ) : �����ڸ��� ����� ���̵� ���� ����
            - �л� ��� �� �����ؼ� �ѹ��� �����ϱ�, ���̵�, ��й�ȣ �ڵ� ���� -> �ʱ� ��й�ȣ �������� ���� ���, ��� �Ұ� 
        - ���� ����, Ŀ��ŧ��, ���� ���� ���̺� 
        - ���ǽ� ���̺�
        - ���ǽ�(���͵��) ���̺�
    - �л�
        - ���Ǻ� QnA ���̺� ��ȸ, ����, ����, ����
    - ����
        - ��� ���̺�
        - ���ǽ�(���͵��) ���̺� ��ȸ, ����, ����, ����
*/

-- ���̺� ���� �� dummy data �Է�

-- ------------------------------
-- ## ������
--   - ����� ������ ���� ���̺�
-- ------------------------------

-- -------------
-- ����� ���̺�(�� �ʿ�����?)
-- -------------
create table users(
    user_id int primary key,
    user_login_id varchar2(20) not null unique,
    user_password varchar2(20) not null,
    user_type char(1) not null -- 0:������, 1:����, 2:�л�
);
drop table users;
create sequence users_seq;
drop sequence users_seq;
select * from users;
desc users;

insert into users values (users_seq.nextval, 'admin','123','0');
insert into users values (users_seq.nextval, '20190001','123','2');

commit;



-- -------------
-- �л� ���̺�
-- -------------
create table student (
	stu_id int primary key,
    stu_name varchar2(20) not null,
    stu_birth date null,
    stu_phone varchar2(20) not null,
    stu_email varchar2(100) not null,
    stu_addr varchar2(100) null
);
drop table student;
create sequence student_seq;
drop sequence student_seq;
select * from student;
desc student;

-- �ܷ�Ű ���� �߰�
alter table student
add constraint student_stu_id_fk
foreign key(stu_id) references users(user_id);

-- dummy data
insert into student (stu_id, stu_name, stu_birth, stu_phone, stu_email, stu_addr)
values (2, '���',sysdate,'01077756452','asdk@gmail.com','��õ�� ����Ȧ�� ���ǵ�');

commit;

-- -------------
-- ���� ���� ���̺�(Ŀ��ŧ��, ����, ������ �ٲ� �� �� �ֵ���)
-- lectrue
-- -------------
create table course (
    cou_id int primary key,
    cou_name varchar2(50),
    clr_id int
);
drop table course;
create sequence course_seq;
drop sequence course_seq;
select * from course;
desc course;

-- �ܷ�Ű ���� �߰�
alter table course
add constraint course_clr_id_fk
foreign key(clr_id) references classroom(clr_id);

-- dummy data
insert into course(cou_id, cou_name, clr_id)
values(course_seq.nextval, 'Java ��� �غ��', 1);

commit;

-- -------------
-- ���ǽ� ���̺�
-- -------------
create table classroom (
    clr_id int primary key,
    clr_name varchar2(20),
    clr_capa int
);
drop table classroom;
create sequence classroom_seq;
drop sequence classroom_seq;
select * from classroom;
desc classroom;

-- dummy data
insert into classroom(clr_id, clr_name, clr_capa)
values(classroom_seq.nextval, '1���ǽ�', 12);
insert into classroom(clr_id, clr_name, clr_capa)
values(classroom_seq.nextval, '������Ʈ��', 8);

commit;


-- -------------
-- ���� ���̺� ; �л��� ���� ����
-- -------------
create table attend_course(
    atc_id int primary key,
    stu_id int,
    cou_id int
);
drop table attend_course;
create sequence attend_course_seq;
drop sequence attend_course_seq;
select * from attend_course;
desc attend_course;

-- �ܷ�Ű ���� �߰�
alter table attend_course
add constraint attend_course_stu_id_fk
foreign key(stu_id) references student(stu_id);

-- dummy data
insert into attend_course(atc_id, stu_id, cou_id)
values(attend_course_seq.nextval, 2, 1);

commit;

-- ���� ���̺�
create table employee (
	emp_id int primary key,
    emp_login_id varchar(20),
    emp_passwd varchar(20) not null,
	emp_name varchar(20) not null,
    emp_type char(1) not null -- ������, ����, ������, ���۷��̼�(ȸ��, Ŀ�´�Ƽ)
);


-- ���� ���� ���� ����Ʈ ���̺�(� �л��� �����)
create table calss (
    class_id int primary key,
    sub_id int,
    curr_id int,
    room_id int
);

-- QnA �Խ���
create table qnaBorad(
    qna_id int primary key,
    class_id int
);

drop table myMember;

commit;