-- �α���
select user_id, user_login_id, user_password, user_type
from users
where user_login_id = 'admin';

-- ���� ���� ����Ʈ
select s.stu_id, s.stu_name, l.lec_id, l.lec_name
from attend_lecture a
join student s
on s.stu_id = a.stu_id
join lecture l
on l.lec_id = a.lec_id
where s.stu_id = 2;
