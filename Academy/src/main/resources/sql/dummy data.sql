-- -------------------------------------------------------------------
-- ����� ���̺�
-- -------------------------------------------------------------------
-- ������ dummy (�ּ� ���� �Է�)
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('admin','123','0','������', '01074705604','gmlwo123@gmail.com','0',sysdate);

-- ���� dummy (���� 3, ���� 1, ��� 1  / 2019 �� 01 �� 10 ���� ����(10 ����, 11 ����, 12 ���) ���� 3�ڸ� )
insert into users (user_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join)
values ('20190111001','123','1','������','01065434567','wjdry123@gmail.com','1',sysdate);


insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '201902002','123','1','�̱���','01065412347','rutn123@gmail.com','0',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (4, '201902003','123','1','�ֱ���','01076514567','chlry123@gmail.com','0',sysdate);
--delete from users where user_login_id='201902003';
commit;

insert into users values (users_seq.nextval, '201900001','123','1','�����','rhksfl123@gmail.com');
insert into users values (users_seq.nextval, '201900002','123','1','������','jql123@gmail.com');
insert into users values (users_seq.nextval, '201901001','123','1','�ڻ��','tkdeka123@gmail.com');
insert into users values (users_seq.nextval, '201901002','123','1','�̻��','tkdeka123@gmail.com');

-- �л� dummy( 15�� * 8�� �� + ����� 10�� = 130) 
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190001','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190002','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190003','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190004','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190005','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190006','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190007','123','2','�����̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190008','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190009','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190010','123','2','���̽�','01076345867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190011','123','2','ȫ�̽�','01076455686','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190012','123','2','���̽�','01075558667','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190013','123','2','���̽�','01036456867','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190014','123','2','���̽�','01091532567','raldl123@gmail.com','1',sysdate);
insert into users (user_id, user_login_id, user_password, user_type, user_name, user_phone, user_email, user_gender, user_join_date)
values (users_seq.nextval, '20190015','123','2','���̽�','01012345867','raldl123@gmail.com','1',sysdate);

delete from users;

rollback;
commit;
-- -------------------------------------------------------------------
-- �л� ���̺�
-- -------------------------------------------------------------------


-- dummy data
insert into student (stu_id, stu_name, stu_birth, stu_phone, stu_email, stu_addr)
values (2, sysdate,'01077756452','asdk@gmail.com','��õ�� ����Ȧ�� ���ǵ�');


-- dummy data
insert into classroom(clr_id, clr_name, clr_capa)
values(classroom_seq.nextval, '1���ǽ�', 12);
insert into classroom(clr_id, clr_name, clr_capa)
values(classroom_seq.nextval, '������Ʈ��', 8);

commit;

-- dummy data
insert into lecture(lec_id, lec_name, lec_dis, clr_id)
values(lecture_seq.nextval, 'Java ��� �غ��', '2���� �ȿ� ��� ������ ������ �ڹ� �Ƿ��� ���� �� �ִ� ����',1);
/*update lecture set lec_dis = '2���� �ȿ� ��� ������ ������ �ڹ� �Ƿ��� ���� �� �ִ� ����'
where lec_id=1;*/

commit;


-- dummy data
insert into attend_lecture(atc_id, stu_id, lec_id)
values(attend_lecture_seq.nextval, 2, 1);

delete from attend_lecture;

commit;


insert into lecture_qna(qna_id, lec_id, user_id, qna_title, qna_content, qna_created)
values(lecture_qna_seq.nextval, 1, 2, '�ڹ� �ΰ� 0�� ����','�ΰ� 0�� ���̰� ������?',sysdate);

-- 2��� �Խù� ����
insert into lecture_qna(qna_id, lec_id, user_id, qna_title, qna_content, qna_created)
select lecture_qna_seq.nextval, lec_id, user_id, qna_title, qna_content, qna_created from lecture_qna;

commit;
