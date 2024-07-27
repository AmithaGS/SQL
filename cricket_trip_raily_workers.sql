use HOMEWORK;
create table cricket(id int not null,captain_name varchar(20)unique,location varchar(20),
no_of_win int,constraint win_chk check(no_of_win>=1),team_id int);

alter table cricket add constraint primary key(team_id);
alter table cricket add constraint loc_uni unique(location);

insert into cricket values(1,'faf','chinnaswamy stadium',4,701);
insert into cricket values(2,'ms dhoni','chennai stadium',2,702);
insert into cricket values(3,'rohith','mcg stadium',7,703);
insert into cricket values(4,'hardik pandya','lords stadium',6,704);
insert into cricket values(5,'kl rahul','chidabaram stadium',4,705);

alter table cricket add constraint no_of_chk check(no_of_win>=2 and no_of_win<8);
alter table cricket modify id int not null,drop constraint loc_uni;
select * from cricket;
desc cricket;

create table trip(id int not null,organized_by varchar(20)unique,places varchar(20),
no_of_students int,constraint students_chk check(no_of_students>20),student_id int);
alter table trip add constraint primary key(student_id);
alter table trip add constraint place_uni unique(places);
alter table trip modify id int not null,drop constraint place_uni;

insert into trip values(1,'vamshi','chikmangalore',21,901);
insert into trip values(2,'vandana','shimogga',80,902);
insert into trip values(3,'shreedhar','maldivis',100,903);
insert into trip values(4,'sachin','goa',56,904);
insert into trip values(5,'sindu','pondecherry',75,905);

alter table trip add constraint stude_chk check(no_of_students>10 and no_of_students<110);
alter table trip modify id int not null,drop constraint organized_by;

select * from trip;
desc trip;

create table raily_station(id int not null,station_name varchar(20) unique,station_source
varchar(20),station_destination varchar(20),no_of_trains int,constraint train_chk
 check(no_of_trains>=1));
 alter table raily_station add constraint primary key(id);
 alter table raily_station add constraint source_uni unique(station_source);
 alter table raily_station modify id int not null, drop constraint station_name;
 
 insert into raily_station values(1,'kempegowda station','yashwantpura','shimogga',2);
insert into raily_station values(2,'gorguntepalya','nagasandra','chitradurga',4);
insert into raily_station values(3,'shimogga','kadur','bangalore',7);
insert into raily_station values(4,'shirdi','sollapura','channasandra',5);
insert into raily_station values(5,'mysore station','shimogga','mysore',4);

alter table raily_station add constraint no_train_chk check(no_of_trains>1 
and no_of_trains<9);
alter table raily_station drop constraint source_uni; 

 select * from raily_station;
 desc raily_station;
 
 create table workers(id int not null,worker_name varchar(20)unique,worker_email varchar(30),
 mode_of_work varchar(20),no_of_workers int,constraint worker_chk check(no_of_workers>100));
 
 alter table workers add constraint primary key(id);
 alter table workers add constraint worker_uni unique(worker_email);
 alter table workers drop constraint worker_name;
 
 insert into workers values(1,'kiran','kiran43@gmail.com','testing',120);
insert into workers values(2,'meghana','megh89@gmail.com','developer',150);
 insert into workers values(3,'praveen','praveen56@gmail.com','testing',300);
 insert into workers values(4,'anurag','anu67rag@gmail.com','testing',250);
 insert into workers values(5,'yamini','yamini2000@gmail.com','developer',178);

alter table workers add constraint work_chk check(no_of_workers>110 
and no_of_workers<=300);
alter table workers drop constraint worker_uni;

 select * from workers;
 desc workers;
 
 show table status;