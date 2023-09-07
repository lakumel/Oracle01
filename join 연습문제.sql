/*JOIN �ǽ�*/

drop table member10 cascade constraints;
drop table zipcode10 cascade constraints;
drop table product10 cascade constraints;
drop table orders10 cascade constraints;

create table MEMBER10 (
    m_id number(4) not null constraint PK_MEMBER10_M_ID Primary key, 
    pass varchar2(200) not null , 
    name  varchar2(200) not null, 
    email varchar2(200) not null, 
    zipcode number(6) null , 
    constraint FK_MEMBER10_ZIPCODE10 foreign key (zipcode) references zipcode10(zipcode)
    ); 
    
create table ZIPCODE10(
    zipcode number(6) not null constraint PK_ZIPCODE_ZIPCODE Primary key, 
    si_do varchar2(200) not null, 
    gu_gun varchar2 (200) not null, 
    bungi varchar2 (200) not null
    ); 
    
create table product10 ( 
    pro_id number (6) not null constraint PK_PRODUCT10_PRO_ID primary key, 
    pro_name varchar2(200) not null, 
    pro_price number (7,2) not null , 
    pro_cnt number (4) default 0 not null 
); 

create table orders10 (
    ord_id number (6) not null constraint PK_ORDER10_ORD_ID Primary key, 
    m_id number(4) not null , 
    pro_id number(6) not null , 
    orderdate date,
        constraint FK_ORDER10_M_ID foreign key (m_id) references member10(m_id), 
        constraint FK_ORDER10_PRO_ID foreign key (pro_id) references product10(pro_id)
); 

-- �� ���� ���̺� ���ڵ� 5���� ������ join �ǽ� : EQUIE JOIN,ANSI JOIN
-- ���� ������ ���ؼ� , ȸ���̸�, �����ּ�, �õ�, ��ǰ�̸�, ��ǰ ����,��ǰ ����(cnt),���ų�¥�� ���

--insert �� ����, EQUIE JOIN,ANSI JOIN <==2�ð� ���� �ǽ�

select * from MEMBER10;
select * from zipcode10;
select * from product10;
select * from orders10;

--�� ���̺� ���ڵ� 5���� ����


-- MEMBER10 ���̺� ���ڵ� 5�� ����
--    constraint FK_MEMBER10_ZIPCODE10 foreign key (zipcode) references zipcode10(zipcode)); 

INSERT INTO MEMBER10(m_id,pass,name,email,zipcode)
VALUES(1111,'1q2w3e4r!','ȫ�浿','aaaaa@aa.com','111111');

INSERT INTO MEMBER10(m_id,pass,name,email,zipcode)
VALUES(2222,'1q2w3e4r','���缮','bbb@bbbb.com','222222');

INSERT INTO MEMBER10(m_id,pass,name,email,zipcode)
VALUES(3333,'q12gfe','�ڸ��','ccc@cccc.com',333333);

INSERT INTO MEMBER10(m_id,pass,name,email,zipcode)
VALUES(4444,'himedia12','������','ddd@dddd.com',444444);

INSERT INTO MEMBER10(m_id,pass,name,email,zipcode)
VALUES(5555,'himelapdw','����','eeee@kbs.co.kr',555555);


-- zipcode10 ���̺� ���ڵ� 5�� ����
INSERT INTO zipcode10(zipcode,si_do,gu_gun,bungi)
VALUES(111111,'����Ư���� ����','�ŵ�����','1����');

INSERT INTO zipcode10(zipcode,si_do,gu_gun,bungi)
VALUES(222222,'����Ư���� ����','�λ絿','2����');

INSERT INTO zipcode10(zipcode,si_do,gu_gun,bungi)
VALUES(333333,'����Ư���� �����','���','3����');

INSERT INTO zipcode10(zipcode,si_do,gu_gun,bungi)
VALUES(444444,'����Ư���� ���빮��','���빮','4����');

INSERT INTO zipcode10(zipcode,si_do,gu_gun,bungi)
VALUES(555555,'����Ư���� ���ϱ�','�Ⱦϵ�','5����');

commit;

-- product10 ���̺� ���ڵ� 5�� ����

INSERT INTO product10(pro_id,pro_name,pro_price,pro_cnt)
VALUES(1,'������',980.00,40);

INSERT INTO product10(pro_id,pro_name,pro_price,pro_cnt)
VALUES(2,'�ʱ���',1080.22,38);

INSERT INTO product10(pro_id,pro_name,pro_price,pro_cnt)
VALUES(3,'�����',770.65,60);

INSERT INTO product10(pro_id,pro_name,pro_price,pro_cnt)
VALUES(4,'�նѲ�',870.65,100);

INSERT INTO product10(pro_id,pro_name,pro_price,pro_cnt)
VALUES(5,'������',555.55,52);

-- orders10 ���̺� ���ڵ� 5�� ����

--    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
--    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)

INSERT INTO orders10(ord_id,m_id,pro_id,orderdate)
VALUES(000001,1111,1,'23/01/01');

INSERT INTO orders10(ord_id,m_id,pro_id,orderdate)
VALUES(000002,2222,2,'23/02/01');

INSERT INTO orders10(ord_id,m_id,pro_id,orderdate)
VALUES(000003,3333,3,'23/03/01');

INSERT INTO orders10(ord_id,m_id,pro_id,orderdate)
VALUES(000004,4444,4,'22/06/07');

INSERT INTO orders10(ord_id,m_id,pro_id,orderdate)
VALUES(000005,5555,5,'23/07/03');

commit;

-- �� ���� ���̺� ���ڵ� 5���� ������ join �ǽ� : EQUIE JOIN,ANSI JOIN

--insert �� ����, EQUIE JOIN,ANSI JOIN
select * from MEMBER10;
select * from zipcode10;
select * from product10;
select * from orders10;

/*2�� ���̺� ����*/
-- ���� ������ ���ؼ� , ȸ���̸�, �����ּ�, �õ�, ��ǰ�̸�, ��ǰ ����,��ǰ ����(cnt),���ų�¥�� ���

--�̸�
select name,email
from member10 m,zipcode10 z
where m.zipcode=z.zipcode
and name like 'ȫ%';

select name,email
from member10 m join zipcode10 z
on m.zipcode=z.zipcode
where name like 'ȫ%';

--�����ּ�

select name,email
from member10 m,zipcode10 z
where m.zipcode=z.zipcode
and email like 'b%';

select name,email
from member10 m join zipcode10 z
on m.zipcode=z.zipcode
where email like 'b%';

/*�õ�*/
select si_do, gu_gun,bungi
from member10 m,zipcode10 z
where m.zipcode=z.zipcode
and si_do like '%��';

select si_do, gu_gun,bungi
from member10 m join zipcode10 z
on m.zipcode=z.zipcode
where si_do like '%��';

--��ǰ�̸�, ��ǰ ����,��ǰ ����(cnt),���ų�¥�� ���

select pro_name,pro_price,pro_cnt,orderdate
from product10 p, orders10 o
where p.pro_id=o.pro_id
and pro_name like '%��'

select pro_name,pro_price,pro_cnt,orderdate
from product10 p join orders10 o
on p.pro_id=o.pro_id
where pro_name like '%��'

select pro_name,pro_price,pro_cnt,orderdate
from product10 p, orders10 o
where p.pro_id=o.pro_id
and pro_price >=900

select pro_name,pro_price,pro_cnt,orderdate
from product10 p join orders10 o
on p.pro_id=o.pro_id
where pro_price >=900

select pro_name,pro_price,pro_cnt,orderdate
from product10 p, orders10 o
where p.pro_id=o.pro_id
and pro_cnt >=50

select pro_name,pro_price,pro_cnt,orderdate
from product10 p join orders10 o
on p.pro_id=o.pro_id
where pro_cnt <=40

select pro_name,pro_price,pro_cnt,orderdate
from product10 p, orders10 o
where p.pro_id=o.pro_id
and orderdate >='23/02/01'

select pro_name,pro_price,pro_cnt,orderdate
from product10 p join orders10 o
on p.pro_id=o.pro_id
where orderdate >='23/02/01'

/*3�� �̻� ���̺� ����*/

-- ���� ������ ���ؼ� , ȸ���̸�, �����ּ�, �õ�, ��ǰ�̸�, ��ǰ ����,��ǰ ����(cnt),���ų�¥�� ���

--EQUI JOIN

SELECT m.name, m.email, z.si_do, p.pro_name, p.pro_price, p.pro_cnt, o.orderdate
    FROM MEMBER10 m,ORDERS10 o ,ZIPCODE10 z, PRODUCT10 p
 where o.m_id=m.m_id
and p.pro_id=o.pro_id
and m.zipcode=z.zipcode


--ANSI JOIN

SELECT m.name, m.email, z.si_do, p.pro_name, p.pro_price, p.pro_cnt, o.orderdate
    FROM MEMBER10 m JOIN ORDERS10 o
    ON m.m_id = o.m_id
    JOIN ZIPCODE10 z
    ON z.zipcode = m.zipcode
    JOIN PRODUCT10 p
    ON p.pro_id = o.pro_id;
