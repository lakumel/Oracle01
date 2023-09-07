
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
set title = '제목 변경',content ='내용 변경'
where seq = 3;

commit;


--전체 레코드 출력:getBoardList.do
select * from board
order by seq desc;

--하나의 레코드 출력: 글 상세 내용 보기 : getBoard.do
select * from board where seq=?

--레코드 수를 증가:
update board set cnt = (select cnt +1 from board where seq = 8) where seq=8;

commit;

--삭제
delete board
where seq=8;

commit;

--아이디와 패스워드가 모두 일치할때 레코드가 반환됨
--id 필드가 : primary key
--래코드가 정상 출력 되면 : 인증 성공,
--레코드가 출력되지 않으면: 인증 실패.


select * from users
where id ='ccc' and password ='1111'


update board
set title = '제목 변경',content ='내용 변경'
where seq = 6;


update users
set role='Users'
where id = 'cccc';

select * from users;
select * from board;

commit;

--제품을 넣는 테이블 : 관리자 (Admin) - insertProducts.jsp : 로그인후 admin 롤을 가진 사용자만 
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
values(11111,'선풍기','Y','25000','선풍기 입니다.','10개',default);


update board
set writer = 'admin'
where seq = 6;

--제목 검색
select * from board where TITLE like '%?%'

--글 내용 검색
select * from board where CONTENT like '%?%'

--글쓴이 검색
select * from board where WRITER like '%?%'

select * from board where REGDATE like '%23/07/10%'

select * from board where REGDATE like '%?%'


