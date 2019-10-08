-- ���� ���� ��ȸ
SELECT
    users.user_id,
    users.user_name,
    users.user_phone,
    users.user_email,
    users.user_address,
    users.user_gender,
    TO_CHAR(users.user_join, 'YYYY-MM-DD') as user_join
FROM
    users
WHERE
    users.user_type = 1
    AND users.user_suspended = 0;

-- ���� ��纰 ���� �߱�
SELECT
    LPAD(TO_CHAR(orderNum),3,'0')
FROM
   (SELECT
        MAX(TO_NUMBER(SUBSTR(users.user_id,9,3)))+1 as orderNum
    FROM
        users
    WHERE
        users.user_type = 1
        and SUBSTR(user_id,7,2)= '11');

-- ���� ���� �߱�     
INSERT INTO USERS
   (user_id,
    user_password,
    user_type,
    user_name,
    user_phone,
    user_email,
    user_gender,
    user_join)
VALUES
('20190110001',
'123',
'1', -- ����
'�����',
'01099534567',
'rhksfl23@gmail.com',
'1'
,TO_DATE('2019-10-08'));
COMMIT;