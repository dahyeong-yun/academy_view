-- ��ü ����� ����Ʈ
select user_id, user_type, user_name, user_email
from users;

-- ���� �� ���
insert into counsel_lecture(cns_id, user_id, emp_id, cns_root, lec_id, cns_content, cns_created, cns_followup, cns_interest)
values(counsel_lecture_seq.nextval, null, 43, 2, null, '�׳� ��ȭ�غ�', sysdate, '0', '�ش� ����');

rollback;
