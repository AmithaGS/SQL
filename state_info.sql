USE HOMEWORK;
Create table state_info(s_id int,s_name varchar(30),capital varchar(30),no_of_population bigint,
s_flower varchar(20),s_bird varchar(20),governer varchar(20),cm varchar(30),s_tree varchar(30),
area varchar(40));

//add column using alter 

alter table state_info add column language varchar(30);
alter table state_info add column no_of_district int;
alter table state_info add column no_of_schemes int;
alter table state_info add column mode_of_road varchar(20);
alter table state_info add column is_state boolean;

//rename column using alter

alter table state_info rename column s_id to state_id;
alter table state_info rename column s_name to state_name;
alter table state_info rename column s_flower to state_flower;
alter table state_info rename column s_bird to state_bird;
alter table state_info rename column s_tree to state_tree;


//change datatypes for 5 column

alter table  state_info modify column state_id varchar(10);
alter table  state_info modify column area bigint;
alter table state_info modify column no_of_district bigint;
alter table state_info modify column is_state int;
alter table state_info modify column no_of_district int;

//insert values

insert into state_info values(1,"karnataka","bangalore",1000000,"lotus","peacock",
"thawar chand","siddaramayya","Banyan tree",150,"kannada",30,4,"national highway",1);
insert into state_info values(2,"davanagere","mysore",780000,"rose","elephant",
"karthik","madhu","mango tree",100,"telgu",10,1,"district highway",0);
insert into state_info values(3,"andrapradesh","hyderbad",670000,"lilly","kivi",
"siddarth","jagan babu","banana tree",300,"telgu",30,7,"national highway",1);
insert into state_info values(4,"telangana","hyderbad",900000,"hibiscus","dove",
"chandru","pavan kalyan","banyan tree",230,"telgu",29,5,"state highway",1);
insert into state_info values(5,"arunachal pradesh","itanagar",569000,"jasmine","peacock",
"singh","karunakar","mango tree",340,"hindi",28,2,"district highway",0);
insert into state_info values(6,"assam","dispur",8000,"diary","crow",
"swamy","sumanth","neem tree",300,"hindi",25,2,"state highway",0);
insert into state_info values(7,"bihar","patna",98000,"jasmine","pigeon",
"samarth","jayanth singh","cocunut tree",200,"bihari",20,1,"state highway",0);
insert into state_info values(8,"kerala","tiruvananthapuram",900000,"iris","duck",
"kiran","narendra","ash tree",150,"hindi",16,2,"district highway",1);
insert into state_info values(9,"chatisgarh","raipur",190000,"daisy","peacock",
"sowmya","sangeetha","Banyan tree",290,"hindi",20,0,"state highway",1);
insert into state_info values(10,"goa","panaji",890000,"poppy","hawk",
"darshan","puneeth","beech tree",268,"english",27,1,"national highway",0);
insert into state_info values(11,"gujurath","gandinagar",780654,"lotus","dove",
"shivu","dharma chand","maple tree",300,"gujurathi",29,4,"district highway",1);
insert into state_info values(12,"hariyana","chandigarh",980000,"lotus","canary",
"karan","jagadesh","oak tree",400,"hindi",25,1,"state highway",1);
insert into state_info values(13,"himachal pradesh","shimla",9087000,"marigold","eagle",
"divya","chethan","willow tree",390,"english",30,4,"national highway",1);
insert into state_info values(14,"jharkhand","ranchi",1000000,"poppy","peacock",
"kishan","dasharatha","Banyan tree",150,"kannada",30,4,"national highway",0);
insert into state_info values(15,"madhya pradesh","bhoopal",890760,"blossom","sparrow",
"rekha","abhishek","neem tree",890,"telgu",23,2,"district highway",1);
insert into state_info values(16,"maharastra","mumbai",908000,"marigold","parrot",
"sidd singh","naveen","maple tree",300,"hindi",27,6,"national highway",0);
insert into state_info values(17,"rajasthan","jaipur",7809000,"lilly","parrot",
"vijay","lakshmi","alder tree",150,"rajastani",30,4,"national highway",0);
insert into state_info values(18,"uttar pradesh","lucknow",8908900,"bluebell","goose",
"pavitra","ranganath","sweet cherry tree",596,"kannada",24,2,"state highway",1);
insert into state_info values(19,"west bengal","kolkotta",908000,"bluebell","sparrow",
"anuradha","radhika","indian tree",150,"bengali",21,5,"district highway",0);
insert into state_info values(20,"uttarkhand","dehardun",450000,"lotus","peacock",
"sakshi","ramya","Banyan tree",400,"hindi",29,4,"national highway",1);

//update data

update state_info set language="hindi" where state_id=18;
update state_info set governer="abdul nazeer" where state_id=3;
update state_info set state_name="abdul" where state_id=4;
update state_info set capital="imphal" where state_id=2;
update state_info set state_name="manipura" where state_id=2;
update state_info set no_of_population=120000 where state_id=7;
update state_info set state_flower="jasmine" where cm="madhu";
update state_info set state_name="telangana" where governer="chandru";
update state_info set state_bird="pecock" where state_name="jharkhand";
update state_info set cm="ravi" where cm="radhika";

//delete data

delete from state_info where state_id=20;
delete from state_info where state_name="west bengal";
delete from state_info where capital="lucknow";

//fetch the data

select state_name,no_of_population from state_info where capital="bangalore";
select state_name,no_of_population from state_info where capital="bangalore" and
 state_id in(1,2,4,6);
select * from state_info where state_id in(1,2,4,6);
select governer,cm from state_info where language in("kannada","hindi") or state_id=2;
select state_name,no_of_population,capital from state_info where state_id not in(3,5,2,1,7);
 
desc state_info;
select * from state_info;