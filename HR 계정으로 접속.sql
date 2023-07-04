
create table member01(
    id varchar2(20) not null constraint PK_member01_ID primary key,
    pass varchar2(20),
    name varchar2(50),
    zipcode varchar2(7),
    address varchar2(20),
    tel varchar2(13),
    indate date default sysdate, 
     constraint FK_member01_zipcode foreign key(zipcode) references tb_zipcode(zipcode)
);

drop table member01; 

select * from member01;

create table tb_zipcode(

    zipcode varchar2(7) not null constraint PK_zipcode_ZIPCODE primary key,
    sido varchar2(30),
    gugum varchar2(30),
    dong varchar2(30),
    bungi varchar2(30)
   
);

create table products(
    product_code varchar2(20) not null constraint PK_products_product_code primary key,
    product_name varchar2(100),
    product_kind char(1),
    product_price1 varchar2(10),
    product_price2 varchar2(10),
    product_content varchar2(1000),
    product_image varchar2(50),
    sizeSt varchar2(5),
    sizeEt varchar2(5),
    product_quantify varchar2(5),
    useyn char(1),
    indate date
);


create table orders(
    o_seq number(10) not null constraint PK_orders_o_seq primary key,
    product_code varchar2(20),
    id varchar2(16),
    product_size varchar2(5),
    quality varchar2(5),
    result char(1),
    indate date,
     constraint FK_orders_product_code foreign key(product_code) references products(product_code),
 constraint FK_orders_id_member01 foreign key(id) references member01(id)
);