use HOMEWORK;
create table library(id int not null,lib_id int primary key,name varchar(30) unique,no_of_students int,
constraint student_chk check(no_of_students>=1),no_of_books int default 500);

create table student(id int not null,student_name varchar(20) unique,student_id int primary key,
stu_lib_id int,id_number varchar(30),foreign key(stu_lib_id)references library(lib_id));

insert into library values(1,301,'anand library',1,200);
insert into library values(2,302,'maharshi library',5,300);
insert into library values(3,303,'vinaya library',20,500);
insert into library values(4,304,'prerana library',50,500);
insert into library values(5,305,'gmit library',100,500);
insert into library values(6,306,'kannada library',300,800);
insert into library values(7,307,'pes library',150,900);
insert into library values(8,308,'jnnc library',75,700);
insert into library values(9,309,'ubdt library',90,500);
insert into library values(10,310,'sjmit library',290,400);

insert into student values(51,'amitha',101,301,'CS1661');
insert into student values(52,'anjali',102,310,'CV1667');
insert into student values(53,'ananya',103,306,'ME1580');
insert into student values(54,'bhoomika',104,307,'CS1663');
insert into student values(55,'anusha',105,301,'EC1001');
insert into student values(56,'pallavi',106,304,'EE3409');
insert into student values(57,'shalini',107,302,'ME1334');
insert into student values(58,'preethi',108,307,'CS1670');
insert into student values(59,'swetha',109,310,'CS1689');
insert into student values(60,'sahana',110,309,'IS1223');

//between

select * from library where id between 6 and 10;
select * from library where no_of_books between 300 and 800;

select * from student where student_name between 'a' and 'l';
select * from student where id_number between 'CS1661' and 'CS1664';

//like

select * from library where name like 'a%';
select * from library where name like 'p%e_';

select * from student where student_name like 'a_i%';

//order by

select * from library order by id desc;
select * from library order by name;

select * from student order by id_number desc;
select * from student order by student_name;

//upper

select upper(name) as to_upper from library;
select upper(student_name) as to_upper from student;

//lower

select lower(name) as to_lower from library;
select lower(student_name) as to_lower from student;

//concat

select concat(name,no_of_books) from library;
select concat(name,no_of_books,no_of_students) from library;

select concat(student_name,id_number) from student;

//length

select length(name) from library;
select length(student_name) from student;

//create index 

show indexes from library;
create index id_idx on library(id);
create index name_idx on library(name);
select * from library where name='anand library';
explain select * from library where name='anand library';

create index name_idx on student(student_name);
show indexes from student;

select * from library;
desc library;

select * from student;
desc student;
