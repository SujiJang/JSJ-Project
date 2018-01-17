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
insert into members(m_num, email, password, name) values(members_seq.nextval, 'ccc@naver.com', '1111', '홍길동' );

select * from members;

--------------------------------------------------------------------------------------
create table members(
   	m_id varchar2(50) constraint members_m_id_pk primary key,
   	m_password varchar2(50) not null,
   	m_name varchar2(50) not null,
   	m_phonenum varchar2(30) not null,
   	m_birth varchar2(30) not null,
   	m_gen varchar2(10) not null,
   	m_date date not null,
   	m_point number(30)
);

create sequence members_seq start with 1 increment by 1;

---------------------------------------------------------------------------------------

create table mainproducts(
	mp_num number(20) constraint mainproducts_num_pk primary key,
 	mp_name varchar2(50) not null,
 	mp_main_category varchar2(50) not null,
 	mp_sub_category varchar2(50) not null,
 	mp_price number(30) not null,
 	mp_discount_rate number(10) not null,
 	mp_date date not null,
 	mp_main_image varchar2(50) not null,
 	mp_detail varchar2(50)
);

create sequence mainproducts_seq start with 1 increment by 1;

------------------------------------------------------------------------------
drop table sumnail;
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

drop table products;
-------------------------------------------------------------------------------------------------------
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

-------------------------------------------------------------------------------------------------------

create table orders(
	o_num number(10) constraint orders_num_pk primary key,
	order_code varchar2(100) not null,
	mp_num number(10) not null,
	m_id varchar2(20) not null,
	o_inform varchar2(100) not null,
	o_price number(20) not null,
	o_amount number(20) not null,
	o_date date not null,
	o_zipcode varchar2(10) not null,
	o_address varchar2(100) not null,
	o_phone varchar2(50),
	o_payment varchar2(50),
	o_paycheck varchar2(10) default 'F',
	o_etc varchar2(50),
	o_message varchar2(100),
	constraint orders_mp_num_fk foreign key(mp_num) references mainproducts(mp_num),
	constraint orders_m_id_fk foreign key(m_id) references members(m_id)
);

create sequence orders_seq start with 1 increment by 1;

------------------------------------------------------------------------------------------
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

create table delivery(
	de_num number(10) constraint delivery_num_pk primary key,
	order_code varchar2(50) not null,
	m_id varchar2(20) not null,
	de_price number(30),
	de_date date,
	constraint delivery_m_id_fk foreign key(m_id) references members(m_id)

);

create sequence delivery_seq start with 1 increment by 1;

=================================================================================
	constraint delivery_order_code_fk foreign key(order_code) references orders(order_code)
