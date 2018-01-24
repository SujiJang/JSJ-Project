drop table members;

create table members(
	m_num number(10) not null,
   	email varchar2(50) constraint members_email_pk primary key,
   	password varchar2(50) not null,
   	name varchar2(50) not null
);

create sequence members_seq start with 1 increment by 1;


insert into members(m_num, email, password, name) values(members_seq.nextval, 'aaa@naver.com', '1111', '홍' );
insert into members(m_num, email, password, name) values(members_seq.nextval, 'bbb@naver.com', '1111', '홍길' );
insert into members values('bbb', '1111', '홍길동', '010', '201  8-09-02', 'w',sysdate, 2000);

select * from members;

--------------------------------------------------------------------------------------
drop table members;
drop sequence members_seq;

create table members(
   	m_id varchar2(50) constraint members_m_id_pk primary key,
   	m_password varchar2(50) not null,
   	m_name varchar2(50) not null,
   	m_phonenum varchar2(30) not null,
   	m_birth varchar2(20) not null,
   	m_gen varchar2(10) not null,
   	m_date date not null,
   	m_point number(30),
   	m_zipcode varchar2(30),
   	m_address varchar2(30),
   	m_otherphone varchar2(30)
);

create sequence members_seq start with 1 increment by 1;


--------------------------------------------------------------------------------------
drop table main_category;
drop sequence main_category;

create table main_category(
	mc_num number(10) constraint main_category_num_pk primary key,
	mc_name varchar2(50) not null
);


create sequence main_category_seq start with 1 increment by 1;

insert into main_category values(main_category_seq.nextval, 'TOP');
insert into main_category values(main_category_seq.nextval, 'BOTTOM');

select * from MAIN_CATEGORY;
---------------------------------------------------------------------------------------
drop table sub_category;
drop sequence sub_category_seq;

create table sub_category(
	sub_num number(10) constraint sub_category_num_pk primary key,
	mc_num number(10) not null,
	sub_name varchar2(50), 
	constraint sub_category_mc_num_fk foreign key(mc_num) references main_category(mc_num)
);

select * from sub_category;
create sequence sub_category_seq start with 1 increment by 1;

insert into sub_category values(sub_category_seq.nextval, 1, 'OUTER');
insert into sub_category values(sub_category_seq.nextval, 1, 'TSHIRTS');
insert into sub_category values(sub_category_seq.nextval, 2, 'JEAN');
delete from sub_category where sub_num=4;
update sub_category set sub_name='JEAN', mc_num=2 where sub_num=3;

--------------------------------------------------------------------------------------
drop table mainproducts;
drop sequence mainproducts_seq;

create table mainproducts(
	mp_num number(20) constraint mainproducts_num_pk primary key,
	sub_num number(20) not null,
 	mp_name varchar2(50) not null,
 	mp_price number(30) not null,
 	mp_discount_rate number(10) not null,
 	mp_date date not null,
 	mp_main_image varchar2(50) not null,
 	mp_detail varchar2(500),
 	mp_ordered_amount number(10) default 0,
 	constraint mainproducts_sub_num_fk foreign key(sub_num) references sub_category(sub_num)
);


create sequence mainproducts_seq start with 1 increment by 1;

insert into mainproducts values(mainproducts_seq.nextval, 1, '베이직 테일러드 자켓', 65000, 0, sysdate, 'outer/grayouter.jpg', '', 100 );
insert into mainproducts values(mainproducts_seq.nextval, 2, '베이직 옐로우 티셔츠', 23000, 0, sysdate, 'tshirts/yellowshirts.jpg', '', 100 );
insert into mainproducts values(mainproducts_seq.nextval, 3, '연하늘 스키니 진', 32000, 0, sysdate, 'jean/skinnyjean.jpg', '', 100 );

insert into mainproducts values(mainproducts_seq.nextval, 2, '베이직 겨자색 티셔츠', 23000, 0, sysdate, 'tshirts/yellowshirts.jpg', '', 100 );

update mainproducts set mp_main_image='outer/grayouter.jpg' where mp_price=65000;

update mainproducts set mp_ordered_amount=200 where mp_num=5;
update mainproducts set mp_name='인기예로우102' where mp_num=7;
update mainproducts set mp_ordered_amount=202 where mp_num=7;

select * from mainproducts;

alter table mainproducts modify(mp_detail varchar2(1000));


--------------------------------------------------------------------------------
drop table sumnail;
drop sequence sumnail_seq;

create table sumnail(
	sum_num number(30) constraint sumnail_num_pk primary key,
	mp_num number(20) not null,
	sum_first varchar2(30),
	sum_second varchar2(30),
	sum_third varchar2(30),
	sum_forth varchar2(30),
	sum_fifth varchar2(30),
	constraint sumnail_mp_num_fk foreign key(mp_num) references mainproducts(mp_num)
);

create sequence sumnail_seq start with 1 increment by 1;


-------------------------------------------------------------------------------------------------------
drop table products;
drop sequence products_seq;

create table products(
	p_num number(10) constraint products_num_pk primary key,
	mp_num number(10) not null,
	p_color varchar2(20) not null,
	p_size varchar2(20) not null,
	p_date date not null,
	p_amount number(10),
	p_order_count number(10) default 0,
	constraint products_mp_num_fk foreign key(mp_num) references mainproducts(mp_num)
);

create sequence products_seq start with 1 increment by 1;

insert into products values(products_seq.nextval, 1, 'gray', 'L', sysdate, 100, 0);
insert into products values(products_seq.nextval, 1, 'gray', 'M', sysdate, 100, 0);
insert into products values(products_seq.nextval, 1, 'gray', 'S', sysdate, 100, 0);
insert into products values(products_seq.nextval, 1, 'navy', 'L', sysdate, 100, 0);
insert into products values(products_seq.nextval, 1, 'navy', 'M', sysdate, 100, 0);
insert into products values(products_seq.nextval, 1, 'navy', 'S', sysdate, 100, 0);



-------------------------------------------------------------------------------------------------------
drop table orders;
drop sequence orders_seq;

create table orders(
	o_num number(10) constraint orders_num_pk primary key,
	m_id varchar2(20) not null, --fk
	o_total_price number(20),
	o_date date not null,
	o_zipcode varchar2(10),
	o_address varchar2(100),
	o_phone varchar2(50),
	o_payment varchar2(50),
	o_paycheck varchar2(10) default 'F',
	o_etc varchar2(50),
	o_message varchar2(100),
	constraint orders_m_id_fk foreign key(m_id) references members(m_id)
);

create sequence orders_seq start with 1 increment by 1;

	order_code varchar2(100) not null,
-----------------------------------------------------------------------------------------
drop table orderlist;
drop sequence orderlist_seq;

create table orderlist(
	ol_num number(10) constraint orderlist_num_pk primary key,
	mp_num number(10) not null, 
	o_num number(10) not null,
	o_inform varchar2(200) not null,
	o_price number(20) not null,
	o_amount number(20) not null,
	constraint orderlist_mp_num_fk foreign key(mp_num) references mainproducts(mp_num),
	constraint orderlist_o_num_fk foreign key(o_num) references orders(o_num)
);

create sequence orderlist_seq start with 1 increment by 1;

------------------------------------------------------------------------------------------
drop table basket;
drop sequence basket_seq;

create table basket(
	b_num number(10) constraint basket_num_pk primary key,
	m_id varchar2(20) not null,
	mp_num number(10) not null,
	b_inform varchar2(100),
	b_price number(30),
	b_amount number(20),
	constraint basket_m_id_fk foreign key(m_id) references members(m_id),
	constraint basket_mp_num_fk foreign key(mp_num) references mainproducts(mp_num)
);

create sequence basket_seq start with 1 increment by 1;

----------------------------------------------------------------------------------------
drop table mine;
drop sequence mine_seq;

create table mine(
	mi_num number(10) constraint mine_num_pk primary key,
	m_id varchar2(20) not null,
	mp_num number(10) not null,
	mi_inform varchar2(100),
	mi_price number(30),
	mi_amount number(20),
	constraint mine_m_id_fk foreign key(m_id) references members(m_id),
	constraint mine_mp_num_fk foreign key(mp_num) references mainproducts(mp_num)
);

create sequence mine_seq start with 1 increment by 1;

----------------------------------------------------------------------------
drop table delivery;
drop sequence delivery_seq;

create table delivery(
	de_num number(10) constraint delivery_num_pk primary key,
	o_num number(10) not null,
	m_id varchar2(20) not null,
	de_price number(30),
	de_date date,
	constraint delivery_m_id_fk foreign key(m_id) references members(m_id),
	constraint delivery_o_num_fk foreign key(o_num) references orders(o_num)
);

create sequence delivery_seq start with 1 increment by 1;

=================================================================================
	

 select b.* from(
           select rownum as rm, a.*  from(
           select * from mainproducts where sub_num=2 order by mp_ordered_amount desc)a)b
           where b.rm>=1 and b.rm<=2

           