use HOMEWORK;
create table mall(id int,mall_name varchar(30),mall_id int,location varchar(30),budget bigint,
zudio_present boolean);

create table company(id int,company_name varchar(40),location varchar(20),no_of_employes bigint,
hr_name varchar(20),manager_name varchar(20));

insert into mall values(101,'lulu mall',2001,'sujatha takis',200000000,true);
insert into mall values(102,'orian mall',2002,'sandal soap factory',900000000,true);
insert into mall values(103,'mall of asia',2003,'rajajinagara',300000000,false);
insert into mall values(104,'pheonix mall',2004,'btm layout',890000000,true);
insert into mall values(105,'gopalan mall',2005,'sujatha takis',900000000,false);
insert into mall values(106,'gt world mall',2006,'rajajinagara',970000000,true);
insert into mall values(107,'lulu mall',2007,'sandal soap factory',90000000,false);
insert into mall values(108,'vr bengalur mall',2008,'sujatha takis',80000000,true);
insert into mall values(109,'orian mall',2009,'btm layout',120000000,false);
insert into mall values(110,'pheonix mall',2010,'sujatha takis',146700000,true);
insert into mall values(111,'nexus mall',2001,'kormangala',200000000,true);
insert into mall values(111,'ub city mall',2002,'jayanagara',900000000,true);
insert into mall values(112,'mall of asia',2003,'rajajinagara',300000000,false);
insert into mall values(113,'elements mall',2004,'banashankari',890000000,true);
insert into mall values(114,'gopalan mall',2005,'jayanagara',900000000,false);
insert into mall values(115,'gt world mall',2006,'banashankari',970000000,true);
insert into mall values(116,'1 MG mall',2007,'sandal soap factory',90000000,false);
insert into mall values(117,'centro mall',2008,'sujatha takis',80000000,true);
insert into mall values(118,'nexus mall',2009,'kormangala',120000000,false);
insert into mall values(118,'ub city mall',2010,'sujatha takis',146700000,true);

insert into company values(21,'TCS','btm layout',400000,'shreedhar','manasa');
insert into company values(22,'infosis','rajajinagara',890000,'kishan','amitha');
insert into company values(23,'wipro','banashankari',9080000,'kishor','anjali');
insert into company values(24,'TCS','banashankari',129000,'kishan','manasa');
insert into company values(25,'mphasis','indira nagara',800000,'shreedhar','amitha');
insert into company values(26,'idea infinity','rajajinagara',800000,'sachin','anjali');
insert into company values(27,'tata elexi','btm layout',900000,'radhika','shalini');
insert into company values(28,'infosis','nagasndra',400000,'kishor','shalini');
insert into company values(29,'mphasis','kengeri',890000,'sachin','manasa');
insert into company values(30,'wipro','nagasandra',908000,'shreedhar','amitha');
insert into company values(31,'TCS','btm layout',400000,'vamshi','manasa');
insert into company values(32,'infosis','rajajinagara',890000,'kishan','ankith');
insert into company values(33,'wipro','banashankari',9080000,'kishor','anjali');
insert into company values(34,'TCS','banashankari',129000,'kishan','manasa');
insert into company values(35,'mphasis','indira nagara',800000,'vamshi','amitha');
insert into company values(36,'idea infinity','rajajinagara',800000,'sachin','anjali');
insert into company values(37,'tata elexi','btm layout',900000,'adarsh','shalini');
insert into company values(38,'infosis','nagasndra',400000,'kishor','shalini');
insert into company values(39,'mphasis','kengeri',890000,'darshan','manasa');
insert into company values(40,'wipro','nagasandra',908000,'shreedhar','amitha');

select count(*),mall_name from mall group by mall_name;
select sum(budget),mall_name from mall group by mall_name;
select max(budget),mall_id,mall_name from mall group by mall_id,mall_name;
select min(zudio_present) from mall group by mall_name;
select count(zudio_present)as zudio,mall_name from mall group by mall_name;
select max(budget) as avg_budget from mall group by mall_name;

having:

select count(no_of_employes),company_name from company group by company_name;

coalesce:

select coalesce(null,null,123);
select coalesce('abc',null,null,null,123,null,null,null);
select ifnull(null,'abc');

select * from mall;
desc mall;

select * from company;
desc company;