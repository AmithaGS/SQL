     //Relationship

//one to one

USE HOMEWORK;

create table employee_info(id int,emp_name varchar(20),emp_id int primary key,emp_number bigint,
emp_address varchar(20),emp_age int,emp_email varchar(20),emp_gender char,emp_experience int,
emp_salary bigint);

create table company_info(id int,company_name varchar(20),company_id int primary key,
company_emp_id int,location varchar(20),company_code bigint,company_hr varchar(20),
company_feedback varchar(20),company_review int,total_no_cmp bigint,
foreign key(company_emp_id)references employee_info(emp_id));

insert into employee_info values(1,'amitha',1,12345678,'chitradurga',21,'amithags03@gmail.com',
'f',10,70000);
insert into employee_info values(2,'kishan',2,9986683576,'goa',24,'kishan@gmail.com',
'm',13,60678);
insert into employee_info values(3,'anusha',3,45362902880,'bidar',20,'hitha@gmail.com',
'f',11,136843);
insert into employee_info values(4,'mahesh',4,4635378292,'gulbarga',25,'rakesh@gmail.com','m',
4,50000);
insert into employee_info values(5,'manu',5,48463527289,'hampi',37,'manu@gmail.com','m',8,954444);
insert into employee_info values(6,'sahana',6,4735382902,'machenalli',33,'sahana@gmail.com',
'f',6,23000);
insert into employee_info values(7,'kala',7,6773638900,'davangere',43,'kala@gmail.com','f',7,45000);
insert into employee_info values(8,'sheela',8,4567999999,'mysore',67,'sheela@gmail.com','f',30,340000);
insert into employee_info values(9,'shaali',9,9988345678,'savlanga',40,'kshama@gmail.com','f',
24,230000);
insert into employee_info values(10,'preethi',10,2435476257,'alur',45,'preethi@gmail.com','f',4,470000);
insert into employee_info values(11,'sonu',11,6789826259,'sirsi',74,'sonu@gmail.com','f',5,768033);
insert into employee_info values(12,'seema',12,99872335489,'bangkok',22,'seema@gmail.com','m',10,600000);
insert into employee_info values(13,'rohith',13,9986683576,'goa',29,'rohith@gmail.com','m',9,305999);
insert into employee_info values(14,'jeevan',14,922642790,'honnali',35,'jeevan@gmail.com',
'm',27,4450000);
insert into employee_info values(15,'siya',15,2435476257,'machenalli',45,'siya@gmail.com',
'f',40,9000000);
insert into employee_info values(16,'jeri',16,9985647290,'birur',48,'jeri@gmail.com','m',17,670000);
insert into employee_info values(17,'chiru',17,8050473452,'bangkok',67,'chiru@gmail.com',
'm',7,5670000);
insert into employee_info values(18,'chaya',18,88764330030,'white field',24,'chaya@gmail.com',
'f',6,900000);
insert into employee_info values(19,'kiya',19,35233453678,'BTM',19,'kiya@gmail.com','m',9,605555);
insert into employee_info values(20,'maya',20,98363783987,'pune',40,'maya@gmail.com','f',14,4500000);

desc employee_info;
select * from employee_info;

insert into company_info values(1,'wipro',201,1,'bengaluru',577301,'kiran','good',5,2000);
insert into company_info values(2,'TCS',202,2,'shivamogga',577302,'mahesh','average',4,1300);
insert into company_info values(3,'amazon',203,3,'bidar',577303,'madav','best',3,1250);
insert into company_info values(4,'infosis',204,4,'gulbarga',577304,'amitha','best',2,3000);
insert into company_info values(5,'TATA',205,5,'mangalore',577305,'kishan','good',4,126);
insert into company_info values(6,'tata elexi',206,6,'shikaripura',577306,'hemanth','good',1,200);
insert into company_info values(7,'tcs',207,7,'shiralkoppa',577307,'rohith','average',5,1890);
insert into company_info values(8,'capgemini',208,8,'white field',577308,'varun','best',3,1234);
insert into company_info values(9,'cognizant',209,9,'BTM',577309,'navya','best',1,1234);
insert into company_info values(10,'enventure',210,10,'kormangala',577310,'pallavi','best',3,300);
insert into company_info values(11,'flipkart',211,11,'pune',577311,'sneha','average',2,1345);
insert into company_info values(12,'meeesho',212,12,'hyderabad',577312,'bhoomi','worst',5,400);
insert into company_info values(13,'aeither',213,13,'chennai',577313,'anusha','good',4,500);
insert into company_info values(14,'penee',214,14,'japan',577314,'amitha','best',3,125);
insert into company_info values(15,'freshwe world',215,15,'chikmangalore',577315,'abhi','average',3,600);
insert into company_info values(16,'mphasis',216,16,'odissa',577316,'kirthana','average',4,209);
insert into company_info values(17,'siya',217,17,'bangkok',577317,'sandya','best',4,167);
insert into company_info values(18,'sahali',218,18,'mexico',577318,'karthik','average',1,900);
insert into company_info values(19,'infotech',219,19,'America',28,'hitha','good',5,30);
insert into company_info values(20,'technok',220,20,'china',22,'kavya','average',2,400);

desc company_info;
select * from company_info;

/*CASE */
select company_name,company_id,
case when company_name='TATA' then company_id 
when company_name='infosys' then company_id 
else null end as 
empp from company_info;

/*LIMIT And OFFSET*/
select * from employee_info limit 5,16;

/*GROUP BY and HAVING CLAUSE*/
select sum(emp_salary)as total_salary,emp_name from employee_info
group by emp_name 
having total_salary>25000;  

/*ORDER BY*/
select * from company_info order by company_review;