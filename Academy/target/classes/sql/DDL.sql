-- -------------------------------------------------------------------
-- ����� ���̺�
-- -------------------------------------------------------------------
create table users(
    user_id int primary key,
    user_login_id varchar2(20) not null unique,
    user_password varchar2(20) not null,
    user_type char(1) not null, -- 0:������, 1:����, 2:�л�, 3: ���� ��
    user_name varchar2(13),
    user_email varchar2(100)
);
drop table users;

create sequence users_seq;
drop sequence users_seq; 

select * from users;
desc users;

-- alter table users add(user_name varchar2(13));
-- alter table users add(user_email varchar2(100));
-- �ʱ� ��й�ȣ
-- ��й�ȣ ���� ����
-- ��������
-- ���� ����

-- ������ dummy
insert into users values (users_seq.nextval, 'admin','123','0','������','gmlwo123@gmail.com');

-- ���� dummy
insert into users values (users_seq.nextval, '201900001','123','1','�����','rhksfl123@gmail.com');
insert into users values (users_seq.nextval, '201901002','123','1','�ڻ��','tkdeka123@gmail.com');

insert into users values (users_seq.nextval, '201902003','123','1','�̱���','rutn123@gmail.com');
insert into users values (users_seq.nextval, '201900004','123','1','������','jql123@gmail.com');
insert into users values (users_seq.nextval, '201902005','123','1','������','wjdry123@gmail.com');

-- �л� dummy
insert into users values (users_seq.nextval, '20190001','123','2','���','audtjd123@gmail.com');
insert into users values (3, '20190001','123','2','���','audtjd123@gmail.com');
insert into users values (4, '20190002','123','2','���ڹ�','rlawk123@gmail.com');
insert into users values (5, '20190003','123','2','���ڹ�','dlwk123@gmail.com');

delete from users;

rollback;
commit;


-- -------------------------------------------------------------------
-- �л� ���̺�
-- -------------------------------------------------------------------
create table student (
	stu_id int primary key,
    stu_birth date null,
    stu_phone varchar2(20) not null,
    stu_email varchar2(100) not null,
    stu_addr varchar2(100) null
);
drop table student;

alter table student drop column stu_name;

create sequence student_seq;
drop sequence student_seq;

select * from student;
desc student;

-- �ܷ�Ű ���� �߰�
alter table student
add constraint fk_student_stu_id
foreign key(stu_id) references users(user_id);

alter table student
drop constraint fk_student_stu_id;

-- dummy data
insert into student (stu_id, stu_name, stu_birth, stu_phone, stu_email, stu_addr)
values (2, sysdate,'01077756452','asdk@gmail.com','��õ�� ����Ȧ�� ���ǵ�');

delete from student;

commit;

-- -------------------------------------------------------------------
-- ���ǽ� ���̺�
-- -------------------------------------------------------------------
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

-- -------------------------------------------------------------------
-- ���� ���� ���̺�
-- -------------------------------------------------------------------
create table lecture (
    lec_id int primary key,
    lec_name varchar2(50),
    lec_dis varchar(300),
    clr_id int
);
drop table lecture;

create sequence lecture_seq;
drop sequence lecture_seq;

select * from lecture;
desc lecture;

-- �ܷ�Ű ���� �߰�
alter table lecture
add constraint fk_lecture_clr_id
foreign key(clr_id) references classroom(clr_id);

alter table lecture
drop constraint fk_lecture_clr_id;

-- alter table lecture add(lec_dis varchar2(300));

-- dummy data
insert into lecture(lec_id, lec_name, lec_dis, clr_id)
values(lecture_seq.nextval, 'Java ��� �غ��', '2���� �ȿ� ��� ������ ������ �ڹ� �Ƿ��� ���� �� �ִ� ����',1);
/*update lecture set lec_dis = '2���� �ȿ� ��� ������ ������ �ڹ� �Ƿ��� ���� �� �ִ� ����'
where lec_id=1;*/

commit;

-- -------------------------------------------------------------------
-- ���� ���̺� ; �л��� ���� ����
-- -------------------------------------------------------------------
create table attend_lecture(
    atc_id int primary key,
    stu_id int,
    lec_id int
);
drop table attend_lecture;

create sequence attend_lecture_seq;
drop sequence attend_lecture_seq;

select * from attend_lecture;
desc attend_lecture;

-- �ܷ�Ű ���� �߰�
alter table attend_lecture
add constraint fk_attend_lecture_stu_id
foreign key(stu_id) references student(stu_id);

alter table attend_lecture
drop constraint attend_lecture_stu_id_fk;

-- dummy data
insert into attend_lecture(atc_id, stu_id, lec_id)
values(attend_lecture_seq.nextval, 2, 1);

delete from attend_lecture;

commit;

-- -------------------------------------------------------------------
-- ���� �Խ���
-- -------------------------------------------------------------------
create table lecture_qna(
    qna_id int primary key,
    lec_id int,
    user_id int,
    qna_title varchar(60),
    qna_content varchar(3000),
    qna_created date,
    qna_updated date
);
drop table lecture_qna;

create sequence lecture_qna_seq;
drop sequence lecture_qna_seq;

select * from lecture_qna;
desc lecture_qna;

insert into lecture_qna(qna_id, lec_id, user_id, qna_title, qna_content, qna_created)
values(lecture_qna_seq.nextval, 1, 2, '�ڹ� �ΰ� 0�� ����','�ΰ� 0�� ���̰� ������?',sysdate);

-- 2��� �Խù� ����
insert into lecture_qna(qna_id, lec_id, user_id, qna_title, qna_content, qna_created)
select lecture_qna_seq.nextval, lec_id, user_id, qna_title, qna_content, qna_created from lecture_qna;

commit;

-- -------------------------------------------------------------------
-- ��� ����
-- -------------------------------------------------------------------
create table counsel_lecture(
    cns_id int not null,-- ��� �ĺ���
    user_id int, -- ��� ��(null�� ���� ��)
    emp_id int not null, -- ��� ����
    cns_root int, -- 1: ������, 2: ����
    lec_id int, -- ���� ����(���߰� ���ϸ�?)
    cns_content varchar(3000),
    cns_created date not null,
    cns_updated date,
    cns_followup char(1) not null,
    cns_interest varchar(200) -- �ϴ��� �ؽ�Ʈ��
);
drop table counsel_lecture;

create sequence counsel_lecture_seq;
drop sequence counsel_lecture_seq; 

select * from counsel_lecture;
desc counsel_lecture;

-- �⺻Ű
alter table counsel_lecture
add constraint pk_counsel_lecture_cns_id
primary key(cns_id);

alter table counsel_lecture
drop constraint pk_counsel_lecture_cns_id;

-- �ܷ�Ű ���� �߰�
-- ��� �� ����
alter table counsel_lecture
add constraint fk_counsel_lecture_user_id
foreign key(user_id) references users(user_id);

alter table counsel_lecture
drop constraint fk_counsel_lecture_user_id;

-- ��� ���� ����
/*alter table counsel_lecture
add constraint fk_counsel_lecture_user_id
foreign key(user_id) references users(user_id);*/

alter table counsel_lecture
add constraint fk_counsel_lecture_lec_id
foreign key(lec_id) references lecture(lec_id);

commit;

