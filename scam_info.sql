USE HOMEWORK;
create table scam_info(s_id varchar(20),s_name int,s_type int,scam_contact bigint,
victim_name varchar(20),victim_contact bigint,date_of_scam int,amount_lost varchar(30),
mode_of_scam int,is_resolve boolean);

//using alter add columns
 
alter table scam_info add column location varchar(30);
alter table scam_info add column status varchar(20);
alter table scam_info add column mode_of_action varchar(20);
alter table scam_info add column scam_website varchar(30);
alter table scam_info add column isFraud boolean;

//rename columns

alter table scam_info rename column s_id to scam_id;
alter table scam_info rename column s_name to scam_name;
alter table scam_info rename column s_type to scam_type;
alter table scam_info rename column is_resolve to isResolve;
alter table scam_info rename column status to scam_status;
alter table scam_info rename column scam_name to scammer_name;

//change datatype

alter table scam_info modify column scam_id int;
alter table scam_info modify column scam_name varchar(30);
alter table scam_info modify column scam_type varchar(20);
alter table scam_info modify column amount_lost int;
alter table scam_info modify column mode_of_scam varchar(20);
alter table scam_info modify column date_of_scam varchar(20);

//insert data

insert into scam_info values(1,"divya","online",9087234673,"baalu",9087453767,"june 1",
1200,"phone",true,"btm","ongoing","arrest","www.scam.in",true);
insert into scam_info values(2,"anu","phone",9876590876,"madavi",9087234673,"aug 9",
7800,"email",false,"rajajinagara","complete","charges","www.scam.in",true);
insert into scam_info values(3,"vidya","phone",8073209876,"chinni",6789076543,"jan 17",
1900,"phone",true,"malleshwaram","complete","charges","www.scam.in",false);
insert into scam_info values(4,"sindu","email",6789076543,"ragini",8073209876,"feb 9",
7800,"email",false,"jagalur","ongoing","arrest","www.scam.in",false);
insert into scam_info values(5,"keerti","phone",9087623456,"madhu",8975243567,"mar 24",
100000,"email",true,"vijayanagara","complete","charges","www.scam.in",false);
insert into scam_info values(6,"ankith","email",8975243567,"mohan",9087623456,"apr 19",
19000,"phone",false,"davanagere","complete","charges","www.scam.in",true);
insert into scam_info values(7,"ammu","phone",8907653456,"malini",902345589,"apr 8",
5000,"email",true,"rajajinagara","ongoing","arrset","www.scam.in",false);
insert into scam_info values(8,"kala","phone",8907523678,"chitti",8904568954,"may 15",
8900,"email",false,"mysore","complete","charges","www.scam.in",true);
insert into scam_info values(9,"balaji","email",8904568954,"pushpa",8907653456,"sept 17",
1000000,"phone",true,"banashankari","ongoing","arrest","www.scam.in",true);
insert into scam_info values(10,"anjali","phone",9480599207,"ashwini",6709713455,"oct 19",
2000,"phone",false,"yashwanthpura","complete","charges","www.scam.in",true);

insert into scam_info values(11,"ashwini","online",9087094673,"mahi",9087093767,"jan 1",
9000,"phone",true,"dharwad","ongoing","arrest","www.scam.in",true);
insert into scam_info values(12,"pushpa","phone",9809590876,"mithun",9087474673,"feb 9",
7900,"email",false,"gadag","complete","charges","www.scam.in",true);
insert into scam_info values(13,"chinni","phone",8070909876,"pavan",6784576543,"mar 17",
1100,"phone",true,"kengeri","complete","charges","www.scam.in",false);
insert into scam_info values(14,"aadi","email",6789676543,"chandhan",8093209876,"apr 9",
10800,"email",false,"jagalur","ongoing","arrest","www.scam.in",false);
insert into scam_info values(15,"punith","phone",9087689456,"vamshi",8975933567,"may 24",
200000,"email",true,"vijayanagara","complete","charges","www.scam.in",false);
insert into scam_info values(16,"abhi","email",8975453567,"krishna",9087602456,"jun 19",
29000,"phone",false,"davanagere","complete","charges","www.scam.in",true);
insert into scam_info values(17,"akshitha","phone",8907903456,"bindu",9023845589,"july 8",
9000,"email",true,"rajajinagara","ongoing","arrset","www.scam.in",false);
insert into scam_info values(18,"rekha","phone",8907534678,"preethi",8904298954,"aug 15",
30900,"email",false,"mysore","complete","charges","www.scam.in",true);
insert into scam_info values(19,"bharath","email",8904458954,"shalini",8909653456,"dec 17",
9000000,"phone",true,"banashankari","ongoing","arrest","www.scam.in",true);
insert into scam_info values(20,"bhoomika","phone",9480589207,"sharmila",6704213455,"nov 19",
89000,"phone",false,"yashwanthpura","complete","charges","www.scam.in",true);

//update data

update scam_info set scammer_name="ananya" where victim_name="bindu";
update scam_info set victim_name="pratibha" where scam_id=18;
update scam_info set scam_contact=9087345678 where scammer_name="vidya";
update scam_info set scammer_name="virat" where victim_name="madavi";
update scam_info set scam_type="email" where date_of_scam="aug 15";
update scam_info set victim_contact=7895438906 where victim_name="chinni";
update scam_info set date_of_scam="nov 29" where scam_id=15;
update scam_info set amount_lost=1200 where scammer_name="raghu";
update scam_info set scammer_name="megha" where amount_lost=1900;
update scam_info set victim_contact=8907564327 where scam_id=19;

//delete 

delete from scam_info where scam_id=20;
delete from scam_info where scam_id=19;
delete from scam_info where scam_id=18;

// fetch data

select * from scam_info where scammer_name in("divya","ammu","abhi");
select scammer_name,victim_name from scam_info where scam_type="online" and 
mode_of_scam="phone";
select amount_lost,date_of_scam,victim_contact,location from scam_info where 
scam_type="online" or mode_of_scam="email" or scam_status="ongoing";
select scammer_name,isResolve,victim_contact from scam_info where location not in("rajajinagar",
"mysore","davanagere","gadag","dharwad");

desc scam_info;
select * from scam_info;