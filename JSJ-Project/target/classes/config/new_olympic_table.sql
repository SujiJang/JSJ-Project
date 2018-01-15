drop table member;
drop table cheer;
drop table mainboard;
drop table photogallery;
drop table game;
drop table board_comment;

drop constraint member_email_pk;
drop constraint mainboard_num_pk;
drop constraint cheer_num_pk;
drop constraint board_comment_num_pk;

drop sequence mainboard_seq;
drop sequence cheer_seq;
drop sequence game_seq;
drop sequence photogallery_seq;
drop sequence board_comment_seq;

----------------------여기서부터 실행
create table member(
   	email varchar2(50) constraint member_email_pk primary key,
   	password varchar2(50) not null,
   	name varchar2(50),
   	phone varchar2(30) not null,
   	mysports varchar2(200)
);

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

select a.* from(select * from cheer order by c_num desc)a where rownum <= 10;

create table cheer(
     c_num number constraint cheer_num_pk primary key,
     c_writer varchar2(50) not null,
     c_content varchar2(1000) not null, 
  	 c_reg_date date not null,
   	constraint cheer_writer_fk foreign key(c_writer) references member(email)
);

create table photogallery(
    p_num number constraint photogallery_num_pk primary key,
    p_kind varchar2(50) not null,
    p_subject varchar2(50) not null,
   	p_reg_date date not null,
   	p_upload varchar2(300) not null
);

create table mainboard(
    b_num number constraint mainboard_num_pk primary key,
    b_writer varchar2(50) not null,
   	b_reg_date date not null,
   	b_subject varchar2(50) not null,
   	b_content varchar2(200) not null,
   	b_upload varchar2(300),
   	readcount number default 0,
   	constraint board_writer_fk foreign key(b_writer) references member(email)
);
select * from mainboard;

create table board_comment(
   bc_num number constraint board_comment_num_pk primary key,
   b_num number not null,
   bc_writer varchar2(50) not null,
   bc_content varchar2(200) not null,
   bc_date date not null,
   constraint board_comment_num_fk foreign key(b_num) references mainboard(b_num),
   constraint board_comment_bc_writer_fk foreign key(bc_writer) references member(email)
);

select * from board_comment;

create sequence mainboard_seq start with 1 increment by 1;

create sequence photogallery_seq start with 1 increment by 1;

create sequence cheer_seq start with 1 increment by 1;

create sequence game_seq start with 1 increment by 1;

create sequence board_comment_seq start with 1 increment by 1;
----------------------------------------------------------------------
select * from MEMBER;
insert into member values('su', 1111, 'suji', 010, '루지/아이스 하키');

update game set g_sub='' where g_sub='갈라';
update board_comment set bc_content='흥해라평창' where bc_num=24;

insert into mainboard values(10000, 'sssggg@naver.com', sysdate, '공지사항', '공지드려요', '', 0);