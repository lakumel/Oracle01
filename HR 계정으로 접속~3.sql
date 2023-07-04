
create table MEMBER(
        a number(3),
        b char(20),
        c varchar2(100),
        d varchar2(10),
         e varchar2(2),
        f varchar2(10),
        g varchar2(40)
);


select * from member;

commit;

drop table member;

insert into member
values(1,'id','varchar2(20)','not null','PK', ' ', '고객 아이디');

insert into member
values(2,'pwd','varchar2(20)',' ',' ',' ','고객 암호');

insert into member
values(3,'name','varchar2(50)',' ',' ',' ','고객 이름');

insert into member
values(4,'zipcode','varchar2(7)',' ','FK', ' ', '우편번호');

insert into member
values(5,'address','varchar2(20)',' ',' ', ' ', '주소');

insert into member
values(6,'tel','varchar2(13)',' ',' ', ' ', '연락처');

insert into member
values(7,'indate','date',' ',' ', 'sysdate ', '가입일');

select a 순번, b "칼럼 명", c "데이터 타입",d as "Null?",e 계약조건,f as "default",g 설명
from member;

