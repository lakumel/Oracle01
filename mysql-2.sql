use mydb;


create table dept08(

dno int auto_increment primary key,
dname varchar(50),
loc varchar(50)
);

insert into dept08(dname,loc)
values ('HR','서울');


insert into dept08
values (default,'HR','서울');








