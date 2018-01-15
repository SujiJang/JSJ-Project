drop table members;

create table members(
	m_num number(10) not null,
   	email varchar2(50) constraint members_email_pk primary key,
   	password varchar2(50) not null,
   	name varchar2(50) not null
);

create sequence members_seq start with 1 increment by 1;

select * from members;