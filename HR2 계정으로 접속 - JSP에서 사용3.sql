
select * from board;

desc board;

select * from users;

select * from board
where seq=4;
commit;

update  board(cnt) values(
    (select cnt from board where seq = 4)+1
) 
where seq=4

update board
set cnt = (select cnt +1 from board where seq = 4)
where seq=4;

commit;


select * from users;
select * from board;

update board
set title = '���� ����',content ='���� ����'
where seq = 3;

commit;


--��ü ���ڵ� ���:getBoardList.do
select * from board
order by seq desc;

--�ϳ��� ���ڵ� ���: �� �� ���� ���� : getBoard.do
select * from board where seq=?

--���ڵ� ���� ����:
update board set cnt = (select cnt +1 from board where seq = 8) where seq=8;

commit;

--����
delete board
where seq=8;

commit;

--���̵�� �н����尡 ��� ��ġ�Ҷ� ���ڵ尡 ��ȯ��
--id �ʵ尡 : primary key
--���ڵ尡 ���� ��� �Ǹ� : ���� ����,
--���ڵ尡 ��µ��� ������: ���� ����.


select * from users
where id ='ccc' and password ='1111'


update board
set title = '���� ����',content ='���� ����'
where seq = 6;


update users
set role='Users'
where id = 'cccc';

select * from users;
select * from board;

commit;

--��ǰ�� �ִ� ���̺� : ������ (Admin) - insertProducts.jsp : �α����� admin ���� ���� ����ڸ� 
--                                  getProductList.jsp
create table products(
    p_code number(5) not null primary key,
    p_name varchar2(100)  null,
    p_kind    char(1) null,
    p_price varchar2(10) null,
    p_content varchar2(1000) null,
    p_quantity varchar2(5) null,
    indate date default sysdate null
);

select * from products;

insert into products
values(11111,'��ǳ��','Y','25000','��ǳ�� �Դϴ�.','10��',default);


update board
set writer = 'admin'
where seq = 6;

--���� �˻�
select * from board where TITLE like '%?%'

--�� ���� �˻�
select * from board where CONTENT like '%?%'

--�۾��� �˻�
select * from board where WRITER like '%?%'

select * from board where REGDATE like '%23/07/10%'

select * from board where REGDATE like '%?%'


