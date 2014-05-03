CREATE TABLE IF NOT EXISTS tab01
(
  stu_id int NOT NULL   AUTO_INCREMENT ,
  stu_loginname character varying(16) NOT NULL,
  stu_password character varying(16) NOT NULL,
  stu_name character varying(16) NOT NULL, 
  stu_term character varying(10) NOT NULL,
  stu_gen int NOT NULL,
  stu_class  character varying(16) NOT NULL,
  stu_major  character varying(16) NOT NULL, 
  inserttime TIMESTAMP NOT NULL DEFAULT current_timestamp,
   primary key(stu_id)
)
comment='学生信息表';


CREATE TABLE  IF NOT EXISTS tab02
(
  tea_id int NOT NULL AUTO_INCREMENT, 
  tea_loginname character varying(16) NOT NULL,
  tea_password character varying(16) NOT NULL,
  tea_name character varying(16) NOT NULL, 
  tea_major  character varying(16) NOT NULL,
  inserttime TIMESTAMP NOT NULL DEFAULT current_timestamp,
  primary key(tea_id)
)
comment='教师信息表';

CREATE TABLE IF NOT EXISTS tab03
(
  notice_id int NOT NULL AUTO_INCREMENT, 
  notice_au character varying(16) NOT NULL, 
  notice_content character  varying(64) NOT NULL,
  inserttime TIMESTAMP NOT NULL DEFAULT current_timestamp,
  primary key(notice_id)
)
comment='通知信息表';

CREATE TABLE IF NOT EXISTS tab04
(
  reply_id int NOT NULL AUTO_INCREMENT,
  reply_type character varying(16) NOT NULL,
  reply_au character varying(16) NOT NULL, 

  reply_content character  varying(64) NOT NULL,
  inserttime TIMESTAMP NOT NULL DEFAULT current_timestamp,
  primary key(reply_id)
)
comment='回复信息表';

CREATE TABLE IF NOT EXISTS tab05
(
  note_id int NOT NULL AUTO_INCREMENT, 
  note_au character varying(16) NOT NULL, 
  note_content character  varying(1024) NOT NULL,
  inserttime TIMESTAMP NOT NULL DEFAULT current_timestamp,
  primary key(note_id)
)
comment='笔记信息表';

CREATE TABLE IF NOT EXISTS tab06
(
  vote_id int NOT NULL AUTO_INCREMENT, 
  vote_au character varying(16) NOT NULL, 
  vote_theme character  varying(128) NOT NULL,
  vote_option character  varying(128) NOT NULL,
  inserttime TIMESTAMP NOT NULL DEFAULT current_timestamp,
  primary key(vote_id)
)
comment='投票信息表';

CREATE TABLE IF NOT EXISTS tab07
(
  vote_reply_id int NOT NULL AUTO_INCREMENT, 
  vote_id character varying(16) NOT NULL, 
  vote_option character  varying(16) NOT NULL,
  stu_id character  varying(16) NOT NULL,
  inserttime TIMESTAMP NOT NULL DEFAULT current_timestamp,
  primary key( vote_reply_id)
)
comment='投票回复信息表';

