-- -------------------------------------------------------------------
-- ����� ���̺�
-- -------------------------------------------------------------------
DESC users;
SELECT * FROM users;

-- ������ dummy (�ּ� ���� �Է�)
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('admin','123','0','������', '01074705604','gmlwo123@gmail.com','0',sysdate);

-- ���� dummy (���� 3, ���� 1, ��� 1  / 2019 �� 01 �� 10 ���� ����(10 ����, 11 ����, 12 ���) ���� 3�ڸ� )
-- 2019 01 10(11,12) 001
-- 2019 01 21(20) 001
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190111001','123','1','������','01065434567','wjdry123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190111002','123','1','�̱���','01065412347','rutn123@gmail.com','0',sysdate);

insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values (4, '201902003','123','1','�ֱ���','01076514567','chlry123@gmail.com','0',sysdate);

COMMIT;
insert into users values (users_seq.nextval, '201900001','123','1','�����','rhksfl123@gmail.com');
insert into users values (users_seq.nextval, '201900002','123','1','������','jql123@gmail.com');
insert into users values (users_seq.nextval, '201901001','123','1','�ڻ��','tkdeka123@gmail.com');
insert into users values (users_seq.nextval, '201901002','123','1','�̻��','tkdeka123@gmail.com');

-- �л� dummy( 15�� * 8�� �� + ����� 10�� = 130) 
delete from users where user_id='20190121001';

insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121001','123','2','���л�','01000134567','dnlsel123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121002','123','2','���л�','01074414567','dPwjd123@gmail.com','0',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121003','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121004','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121005','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121006','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121007','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121008','123','2','�����̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121009','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121010','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121011','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121012','123','2','ȫ�̽�','01076455686','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121013','123','2','���̽�','01075558667','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121014', '123','2','���̽�','01036456867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121015','123','2','���̽�','01091532567','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190121016','123','2','���̽�','01012345867','raldl123@gmail.com','1',sysdate);

delete from users;

rollback;
COMMIT;

-- -------------------------------------------------------------------
-- �л� ���̺�
-- -------------------------------------------------------------------
DESC student;
SELECT * FROM student;

insert into student (stu_id, stu_name, stu_birth, stu_phone, stu_email, stu_addr)
values (2, sysdate,'01077756452','asdk@gmail.com','��õ�� ����Ȧ�� ���ǵ�');

COMMIT;

-- -------------------------------------------------------------------
-- ���� ���̺�
-- -------------------------------------------------------------------
DESC employee;
SELECT * FROM employee;
-- emp_id : user_id
-- emp_rank : 1 ��� / 2 ���� / 3 �븮 / 4 ���� / 5 ���� / 6 ���� / 7 ���� / 8 �̻� / 9 ����
-- emp_type : 1 ���� / 2 ���� / 3 ���

insert into employee (emp_id, emp_rank, emp_salary, emp_type)
values ('20190111001', '3',40000000,'1');

COMMIT;

-- -------------------------------------------------------------------
-- ���ǽ� ���̺�
-- -------------------------------------------------------------------
DESC classroom;
SELECT * FROM classroom;

insert into classroom(clr_id, clr_name, clr_capa)
values('camp190801', '1���ǽ�', 12);
insert into classroom(clr_id, clr_name, clr_capa)
values('camp190802', '2���ǽ�', 12);
insert into classroom(clr_id, clr_name, clr_capa)
values('camp19080p', '������Ʈ��', 8);

COMMIT;

-- -------------------------------------------------------------------
--  ���� ���� ���̺�
-- -------------------------------------------------------------------
DESC lecture;
SELECT * FROM lecture;

insert into lecture(lec_id, lec_name, lec_dis)
values('javafr0001', 'Java Frameworks', 'SI, ERP �� CRM ���α׷��� �����ڳ� �� ���α׷��� �����ڷ��� ��� ��� ����');
insert into lecture(lec_id, lec_name, lec_dis)
values('design0001', '��������(UI/UX)', '�׷���, ���� �� �Ϸ���Ʈ�� ���伥 ���� Ȱ���� ��������(UI/UX) �н� ����');
insert into lecture(lec_id, lec_name, lec_dis)
values('datapy0001', '������ �м�', '���̽��� Ȱ���� ������ �м��� ���� ������ �м� �Թ� ����');
/*
update lecture
set lec_dis='SI, ERP �� CRM ���α׷��� �����ڳ� �� ���α׷��� �����ڷ��� ��� ��� ����'
where lec_id='javafr0001';*/

rollback;

COMMIT;

-- -------------------------------------------------------------------
--  ���� ���̺�
-- -------------------------------------------------------------------
DESC teach_lecture;
SELECT * FROM teach_lecture;
-- tel_id : ���� �� + �� + ����(4�ڸ�)
insert into teach_lecture(tel_id, emp_id, lec_id, clr_id, tel_enroll_date, tel_begin_date, tel_end_date, tel_curr)
values('2019080001', '20190111001','javafr0001','camp190801',TO_DATE('2019-10-06', 'yyyy-mm-dd'),TO_DATE('2019-10-06', 'yyyy-mm-dd'),TO_DATE('2019-10-06', 'yyyy-mm-dd'),
'{"1��" : "1�� ��� ����",
"2��" : "2�� ��� ����",
"3��" : "3�� ��� ����",
"4��" : "4�� ��� ����",
"5��" : "5�� ��� ����",
"6��" : "6�� ��� ����",
"7��" : "7�� ��� ����",
"8��" : "8�� ��� ����",
"9��" : "9�� ��� ����",
"10��" : "10�� ��� ����",
"11��" : "11�� ��� ����",
"12��" : "12�� ��� ����"}');

COMMIT;

-- -------------------------------------------------------------------
--  ���� ���̺�
-- -------------------------------------------------------------------

-- dummy data
insert into attend_lecture(atc_id, stu_id, lec_id)
values(attend_lecture_seq.nextval, 2, 1);

delete from attend_lecture;

COMMIT;


insert into lecture_qna(qna_id, lec_id, user_id, qna_title, qna_content, qna_created)
values(lecture_qna_seq.nextval, 1, 2, '�ڹ� �ΰ� 0�� ����','�ΰ� 0�� ���̰� ������?',sysdate);

-- 2��� �Խù� ����
insert into lecture_qna(qna_id, lec_id, user_id, qna_title, qna_content, qna_created)
select lecture_qna_seq.nextval, lec_id, user_id, qna_title, qna_content, qna_created from lecture_qna;

COMMIT;
