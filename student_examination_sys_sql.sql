create table student(
	id varchar(5),
  name varchar(10),
  age varchar(2),
  sex varchar(1),
  check (sex in ('男','女')),
	primary key(id)
)

create table subject(
	id varchar(5),
  subject varchar(10),
  teacher varchar(10),
  description varchar(100),
	primary key(id)
)

create table score(
	id int PRIMARY KEY  AUTO_INCREMENT,
  student_id varchar(5),
  subject_id varchar(5),
  score varchar(2),
  foreign key(student_id) REFERENCES student(id),
  foreign key(subject_id) REFERENCES subject(id)
)

insert into student (id,name,age,sex) VALUES ('001','张三','18','男');
insert into student (id,name,age,sex) VALUES ('002','李四','20','女');

insert into subject (id,subject,teacher,description) VALUES ('1001','语文','王老师','本次考试比较简单');
insert into subject (id,subject,teacher,description) VALUES ('1002','数学','刘老师','本次考试比较难');

insert into score (student_id,subject_id,score) VALUES ('001','1001','80');
insert into score (student_id,subject_id,score) VALUES ('002','1002','60');
insert into score (student_id,subject_id,score) VALUES ('001','1001','70');
insert into score (student_id,subject_id,score) VALUES ('002','1002','60.5');