-- ȸ�� ���� ����
UPDATE
    users
SET
    user_password = '222',
    user_name = '������',
    user_email = 'wlsdk123@naver.com',
    user_phone = '01065421879',
    user_address = '��õ��',
    user_gender = 1
WHERE 
    user_id = '20190111001';
    
DESC users;

-- ȸ�� Ż��
UPDATE
    users
SET
    user_password = '1',
    user_suspended = '1',
    user_name = 'suspended',
    user_email = 'suspended',
    user_phone = 'suspended',
    user_address = 'suspended',
    user_gender = '1'
WHERE 
    user_id = '20190121002';

commit;
