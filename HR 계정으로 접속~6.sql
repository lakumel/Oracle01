
create table sale(
    sale_date date,
    wine_code varchar2(6),
    mem_id varchar2(30),
    sale_amount varchar2(5),
    sale_price varchar2(6),
    sale_tot_price varchar2(15)


);

create table member02(
mem_id varchar2(6) not null constraint PK_member02_mem_id primary key,
    mem_grade varchar2(20),
    mem_pw varchar2(20) not null,
    mem_birth date default sysdate not null ,
    mem_tel varchar2(20),
    mem_pt varchar2(10)  default 0 not null,
    constraint FK_member02_mem_grade foreign key(mem_grade) references grade_pt_rade(mem_grade
    ));

create table grade_pt_rade(
    mem_grade varchar2(20) not null constraint PK_grade_pt_rade_mem_grade primary key,
    grade_pt_rate number(3,2)
);

create table today(
    today_code varchar2(6) not null constraint today_today_code primary key,
    today_sens_value number(3),
    today_intell_value number(3),
    today_phy_value number(3)
);

create table nation(
    nation_code varchar2(26) not null constraint nation_nation_code primary key,
    nation_name varchar2(50) not null
);

create table wine(
    wine_code varchar2(26) not null constraint wine_wine_code primary key,
    wine_name varchar2(100) not null,
    wine_url blob,
    nation_code varchar2(6),
    wine_type_code varchar2(6),
    wine_sugar_code varchar2(2),
    wine_price varchar2(15) default 0 not null,
    wine_vintage date,
    theme_code varchar2(6),
    today_code varchar2(6),
constraint wine_nation_code foreign key(nation_code) references nation(nation_code),
constraint wine_wine_type_code foreign key(wine_type_code) references wine_type(wine_type_code),
constraint wine_theme_code foreign key(theme_code) references theme(theme_code),
constraint wine_today_code foreign key(today_code) references today(today_code)
);

create table theme(
theme_code varchar2(6) not null constraint theme_theme_code primary key,
theme_name varchar2(50) not null
);



create table stock_management(
    stock_code varchar2(6) not null constraint PK_stock_management_stock_code primary key,
    wine_code varchar2(6),
    manager_id varchar2(30),
    ware_date date default sysdate not null,
    stock_amount number(5) default 0,
    constraint FK_stock_management_wine_code foreign key(wine_code) references wine(wine_code),
     constraint FK_stock_management_manager_id foreign key(manager_id) references manager(manager_id
    )
);

create table manager(
    manager_id varchar2(30) not null constraint PK_manager_ID primary key,
     manager_pwd varchar2(30) not null,
      manager_tel varchar2(20)
);

create table wine_type(
    wine_type_code varchar2(6) not null constraint PK_wine_type_code primary key,
    wine_type_name varchar2(50)
);