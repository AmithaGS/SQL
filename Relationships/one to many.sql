//one to many

create table hotel_info(id int,hotel_name varchar(20),hotel_number bigint,hotel_id int primary key,
hotel_constructed_year int,hotel_address varchar(20),hotel_email varchar(20),created_at timestamp,
hotel_customers bigint,hotel_expense bigint);

create table customer_info(id int,cust_name varchar(20),cust_number bigint,cust_id int primary key,
cust_hotel_id int,cust_location varchar(20),total_no_customers bigint,created_at timestamp,
hotel_customers bigint,cust_review int,foreign key(cust_hotel_id)references hotel_info(hotel_id));

insert into hotel_info values(1,'swetha',9480023026,1,30,'shivamogga','swetha@gmail.com',now(),10,34500);
insert into hotel_info values(2,'rohith',9986683576,2,29,'goa','rohith@gmail.com',now(),13,24678);
insert into hotel_info values(3,'hitha',45362902880,3,20,'bidar','hitha@gmail.com',now(),11,136843);
insert into hotel_info values(4,'rakesh',4635378292,4,25,'gulbarga','rakesh@gmail.com',now(),4,50000);
insert into hotel_info values(5,'manu',48463527289,5,37,'hampi','manu@gmail.com',now(),8,954444);
insert into hotel_info values(6,'payal',4735382902,6,33,'machenalli','payal@gmail.com',now(),6,23000);
insert into hotel_info values(7,'hemavathi',6773638900,7,43,'davangere','hemavathi@gmail.com',now(),7,45000);
insert into hotel_info values(8,'sheela',4567999999,8,67,'survanne','sheela@gmail.com',now(),30,340000);
insert into hotel_info values(9,'kshama',9988345678,9,40,'savlanga','kshama@gmail.com',now(),24,230000);
insert into hotel_info values(10,'siya',2435476257,10,45,'alur','siya@gmail.com',now(),4,470000);
insert into hotel_info values(11,'sonu',6789826259,11,74,'sirsi','sonu@gmail.com',now(),5,768033);
insert into hotel_info values(12,'seema',99872335489,12,22,'bangkok','seema@gmail.com',now(),10,600000);
insert into hotel_info values(13,'rohith',9986683576,13,29,'goa','rohith@gmail.com',now(),9,305999);
insert into hotel_info values(14,'jeevan',922642790,14,35,'honnali','jeevan@gmail.com',now(),27,4450000);
insert into hotel_info values(15,'siya',2435476257,15,45,'machenalli','siya@gmail.com',now(),40,9000000);
insert into hotel_info values(16,'jeri',9985647290,16,48,'birur','jeri@gmail.com',now(),17,670000);
insert into hotel_info values(17,'chiru',8050473452,17,67,'bangkok','chiru@gmail.com',now(),7,5670000);
insert into hotel_info values(18,'chaya',88764330030,18,24,'white field','chaya@gmail.com',now(),6,900000);
insert into hotel_info values(19,'kiya',35233453678,19,19,'BTM','kiya@gmail.com',now(),9,605555);
insert into hotel_info values(20,'maya',098363783987,20,40,'pune','maya@gmail.com',now(),14,4500000);

desc hotel_info;
select * from hotel_info;


insert into customer_info values(1,'mangal',577201,21,1,'bengaluru',30,now(),10,5);
insert into customer_info values(2,'shreya',577202,22,2,'shivamogga',12,now(),13,4);
insert into customer_info values(3,'chaitra',577203,23,3,'bidar',5,now(),11,3);
insert into customer_info values(4,'shreena',577204,24,4,'gulbarga',20,now(),4,2);
insert into customer_info values(5,'swetha',577205,25,5,'mangalore',15,now(),8,4);
insert into customer_info values(6,'sneha elexci',577206,26,6,'shikaripura',13,now(),6,1);
insert into customer_info values(7,'nisarga',577207,27,7,'shiralkoppa',8,now(),7,5);
insert into customer_info values(8,'aakruthi',577208,28,8,'white field',6,now(),30,3);
insert into customer_info values(9,'moulya',577209,29,9,'BTM',16,now(),24,1);
insert into customer_info values(10,'amulya',577210,30,10,'kormangala',21,now(),4,3);
insert into customer_info values(11,'spoorthi',577211,31,11,'pune',15,now(),5,2);
insert into customer_info values(12,'sana',577212,32,12,'hyderabad',19,now(),10,5);
insert into customer_info values(13,'neha',577213,33,13,'chennai',9,now(),9,4);
insert into customer_info values(14,'shifa',577214,34,14,'japan',10,now(),27,3);
insert into customer_info values(15,'sara world',577215,35,15,'chikmangalore',3,now(),40,3);
insert into customer_info values(16,'maya',577216,36,16,'odissa',4,now(),17,4);
insert into customer_info values(17,'siya',577217,37,17,'bangkok',30,now(),7,4);
insert into customer_info values(18,'miya',577218,38,18,'mexico',23,now(),6,1);
insert into customer_info values(19,'payal',577219,39,19,'America',28,now(),9,5);
insert into customer_info values(20,'adeeba',577220,40,20,'china',22,now(),14,2);

desc customer_info;
select * from custer_info;

/*CASE */
select hotel_name,hotel_id,
case when hotel_name='swetha' then hotel_id
when hotel_name='rakesh' then hotel_id 
else null end as 
hotel from hotel_info;

/*LIMIT And OFFSET*/
select * from customer_info limit 6,10;

/*GROUP BY and HAVING CLAUSE*/
select sum(cust_review)as total_review,cust_location from customer_info
group by cust_location having total_review>2;  

/*ORDER BY*/
select * from hotel_info order by hotel_constructed_year;