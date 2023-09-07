
/*JSP=====>DB=====>guestboard(방명록)*/


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
values('홍길동','aaa@aaaa.com', '2023. 7. 6. 오후 3:53:03','첫번쨰 글제목','첫번째 글내용')
commit;



create table testboard(
	tname varchar2(100),	-- 이름
	tpass varchar2(100),	-- 패스워드
	temail varchar2(100),	-- 메일 주소
	taddr varchar2(100),	-- 주소
	today varchar2(100),	-- 오늘 날짜
	sub varchar2(100),		-- 글제목
	content varchar2(100)	-- 글내용
)

commit;

select * from testboard;


drop table testboard;





Create Table freeboard (
    id number constraint PK_freeboard_id Primary Key,   -- 게시글 번호
    name varchar2(100) not null, 
    password varchar2(100) not null, 		-- 자신의 글을 삭제시 
    email varchar2(100) null, 
    subject varchar2(100) not null, 		-- 제목
    content varchar2(2000) not null, 		-- 글내용
    inputdate varchar2(100) not null, 		-- 글쓴날짜
    -- 답변글을 처리하는 컬럼 
    masterid number default 0 , 
    readcount number default 0 , 			-- 글 조회수
    replaynum number default 0 , 
    step number default 0
); 


select * from freeboard
order by id desc;

delete freeboard;           -- 테이블의 모든 레코드 삭제(10만건, 삭제 속도가 느림)
commit;

TRUNCATE table freeboard;       -- 테이블의 모든 레코드 삭제(10만건, 삭제 속도가 빠름)


commit;















select * from freeboard
where id = 876












