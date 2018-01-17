drop table members;
drop table products;
drop table sumnail;
drop table orders;

create table mainboard(
   	b_num number constraint mainboard_num_pk primary key,
 	b_writer varchar2(50) not null,
	b_reg_date date not null,
	b_subject varchar2(50) not null,
	b_content varchar2(200) not null,
	b_upload varchar2(300),
	readcount number default 0,
	b_ref number, 
	b_re_step number, 
	b_re_level number,
	constraint mainboard_writer_fk foreign key(b_writer) references member(email)
);


create table members(
	m_num number(10) not null,
   	email varchar2(50) constraint members_email_pk primary key,
   	password varchar2(50) not null,
   	name varchar2(50) not null
);

create sequence members_seq start with 1 increment by 1;


create table products(
	p_num number not null,
	p_name varchar2 not null,
	p_main_category varchar2 not null,
	p_sub_category varchar2 not null,
	p_price number not null,
	p_color varchar2 not null,
	p_size varchar2 not null,
	p_detail varchar2,
	p_main_image varchar2,
	p_date Date,
	


);