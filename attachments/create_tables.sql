drop table if exists transcripts cascade;
create table transcripts (
  sid       varchar(6),
  cid       varchar(6),
  ctitle     varchar(20),
  credits     varchar(10) DEFAULT '3',
  grades    varchar(10) DEFAULT 'IP',
  foreign key (sid) references students (sid),
  foreign key (ctitle) references students (ctitle),
  foreign key (cid) references courses (cid));
  
drop table if exists courses cascade;
create table courses (
  cid       varchar(6),
  ctitle     varchar(20),
  cnum       varchar(10),
  mpr    varchar(100),
  spr    varchar(100),
  dept     varchar(20),
  primary key (cid));

drop table if exists enrolls cascade;
create table enrolls (
  sid       varchar(6),
  cid     varchar(6),
  term     varchar(20),
  foreign key (sid) references students (sid),
  foreign key (cid) references courses (cid),
  primary key (sid, cid));

drop table if exists students cascade;
create table students (
  sid       varchar(6),
  sname     varchar(20),
  email     varchar(50),
  address     varchar(50),
  primary key (sid));

drop table if exists faculty cascade;
create table faculty (
  fid       varchar(6),
  fname     varchar(20),
  cid     varchar(6),
  foreign key (cid) references courses (cid),
  primary key (fid, cid));

drop table if exists gsecretary cascade;
create table gsecretary (
  gid       varchar(6),
  gname     varchar(20),
  primary key (gid));
