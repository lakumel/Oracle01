
/*JSP=====>DB=====>guestboard(����)*/


create table guestboard5(

    name varchar2(100),
    email varchar2(100),
    inputdate varchar2(100),
    subject varchar2(100),
    content varchar2(100)
    );


select * from guestboard;

select * from guestboard


select * from guestboard
order by inputdate desc;

delete guestboard
where subject = '(null)';

commit;


insert into guestboard(name,email,inputdate,subject,content) 
values('ȫ�浿','aaa@aaaa.com', '2023. 7. 6. ���� 3:53:03','ù���� ������','ù��° �۳���')
commit;



create table testboard(
	tname varchar2(100),	-- �̸�
	tpass varchar2(100),	-- �н�����
	temail varchar2(100),	-- ���� �ּ�
	taddr varchar2(100),	-- �ּ�
	today varchar2(100),	-- ���� ��¥
	sub varchar2(100),		-- ������
	content varchar2(100)	-- �۳���
)

commit;

select * from testboard;


drop table testboard;





Create Table freeboard (
    id number constraint PK_freeboard_id Primary Key,   -- �Խñ� ��ȣ
    name varchar2(100) not null, 
    password varchar2(100) not null, 		-- �ڽ��� ���� ������ 
    email varchar2(100) null, 
    subject varchar2(100) not null, 		-- ����
    content varchar2(2000) not null, 		-- �۳���
    inputdate varchar2(100) not null, 		-- �۾���¥
    -- �亯���� ó���ϴ� �÷� 
    masterid number default 0 , 
    readcount number default 0 , 			-- �� ��ȸ��
    replaynum number default 0 , 
    step number default 0
); 


select * from freeboard
order by id desc;

delete freeboard;           -- ���̺��� ��� ���ڵ� ����(10����, ���� �ӵ��� ����)
commit;

TRUNCATE table freeboard;       -- ���̺��� ��� ���ڵ� ����(10����, ���� �ӵ��� ����)


commit;















select * from freeboard
where id = 876












