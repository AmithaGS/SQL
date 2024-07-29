use HOMEWORK;
create table orders(id int not null,order_name varchar(20) unique,order_id int primary key,
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20));

select * from orders;
desc orders;

create table payment(id int not null,price bigint,payment_id int primary key,p_order_id
int,payment_status varchar(20),created_at timestamp,created_by varchar(20),
modified_at timestamp,modified_by varchar(20),foreign key(p_order_id)references 
orders(order_id));

select * from payment;
desc payment;

create table restaurant(id int not null,restaurant_name varchar(30),restaurant_id int
primary key,location varchar(20),res_order_id int,ratings int,res_payment_id int,
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(res_order_id)references orders(order_id),foreign key(res_payment_id) references
payment(payment_id));

select * from restaurant;
desc restaurant;

create table delivery(id int not null,person_name varchar(20),delivery_id int primary key,
mode_of_payment enum('online','offline'),del_restaurant_id int,del_order_id int,
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(del_restaurant_id)references restaurant(restaurant_id),
foreign key(del_order_id)references orders(order_id));

select * from delivery;
desc delivery;

insert into orders values(1,'pizza',101,now(),'jai',now(),'siddarth');
insert into orders values(2,'burger',102,'2024-01-10 10:20:30','ram','2024-01-10 10:50:30','sindu');
insert into orders values(2,'mamos',103,'2024-10-30 09:20:30','sanjay','2024-10-30 09:50:30','ragini');
insert into orders values(3,'chicken',104,'2024-09-18 19:20:30','anu','2024-09-18 19:40:30','anju');
insert into orders values(4,'veg biriyani',105,'2024-3-18 19:20:30','goutham','2024-3-18 19:40:30','sunil');

insert into payment values(11,1000,201,105,'recived','2024-01-10 10:20:30','sannidi','2024-01-10 10:50:30','anusha');
insert into payment values(12,540,202,105,'pending','2024-06-27 09:20:30','soumya','2024-06-27 09:50:30','bhoomika');
insert into payment values(13,2000,203,103,'recived','2023-10-16 06:10:20','puurna','2023-10-16 07:10:20','chinnu');
insert into payment values(14,789,204,102,'pending','2024-09-16 05:30:00','baby','2024-09-16 06:30:00','vamshi');
insert into payment values(15,1986,205,104,'recived',now(),'krish',now(),'bharath');

insert into restaurant values(21,'bangalore tiffin',301,'rajajinagara',101,5,205,now(),'amith',now(),'shreyas');
insert into restaurant values(22,'south indian tiffin',302,'vijayanagara',101,4,204,'2024-01-10 10:20:30','anand','2024-01-10 10:50:30','shreya');
insert into restaurant values(23,'mysore cafe',303,'hampinagara',104,4,204,'2023-10-16 06:10:20','ankith','2023-10-16 07:10:20','aadi');
insert into restaurant values(24,'sukruth tiffin',304,'banashankari',103,3,203,now(),'kishan',now(),'kishor');
insert into restaurant values(25,'lakshmi tiffin',305,'kengeri',102,2,201,'2024-3-18 19:20:30','kala','2024-3-18 19:40:30','radika');

insert into delivery values(31,'archana',401,'online',301,102,'2024-09-16 05:30:00','bhuvan','2024-09-16 06:30:00','soundarya');
insert into delivery values(32,'ravi',402,'online',303,101,now(),'ramya',now(),'shalini');
insert into delivery values(33,'shashi',403,'offline',304,104,'2024-06-27 09:20:30','sharmila','2024-06-27 09:50:30','amrutha');
insert into delivery values(34,'akshitha',404,'online',302,105,'2023-10-16 06:10:20','sanjana','2023-10-16 07:10:20','dhananjay');
insert into delivery values(35,'preethi',405,'offline',301,102,now(),'khushi',now(),'anitha');