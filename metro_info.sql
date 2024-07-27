use HOMEWORK;
create table metro_info(metro_id int not null,station_id int not null,station_name
varchar(30)unique,source_address varchar(20)unique,destination_address varchar(30),amount int,
mode_of_payment varchar(20),no_of_passengers int,constraint passenger_chk 
check(no_of_passengers>=1),contact_number bigint,no_of_metro int,constraint metro_chk
 check(no_of_metro>=1));
 
insert into metro_info values(1,10,'nagasandra','rajajinagara','mg road',10,'online',
 50,9087346789,4);
insert into metro_info values(2,9,'chikpete','chikpete','lalbagh',20,'offline',
 200,8902567823,1);
insert into metro_info values(3,8,'mantri square','mantri square','jayanagara',40,'online',
 180,8907345678,2);
insert into metro_info values(4,7,'srirampura','srirampura','banashankari',28,'online',
 50,9072457890,5);
insert into metro_info values(5,6,'kr market','kr market','south end circle',15,'offline',
 123,9234908546,4);
insert into metro_info values(6,5,'yeshwanthpura','yeshwanthpura','yelachenahalli',17,'offline',
 109,7890236745,8);
insert into metro_info values(7,4,'jalahalli','jalahalli','kr market',34,'online',
 230,8738903467,7);
insert into metro_info values(8,3,'sandal soap factory','sandal soap factory','jalahalli',39,'offline',
 189,8910945834,10);
insert into metro_info values(9,2,'peenya','peenya','dasarahalli',5,'online',
 238,8904590245,3);
insert into metro_info values(10,1,'dasarahalli','dasarahalli','yeshwantpura',23,'online',
 198,9056280167,5);
 
insert into metro_info values(11,19,'trinity','trinity','nagasandra',90,'online',
 50,9089346789,4);
insert into metro_info values(12,18,'halasuru','halasuru','mysuru road',19,'offline',
 200,8903467823,1);
insert into metro_info values(13,17,'indiranagara','indiranagara','pattanagere',76,'online',
 180,8907345678,2);
insert into metro_info values(14,16,'kr puram','kr puram','rr nagara',26,'online',
 50,9072457890,5);
insert into metro_info values(15,15,'hoodi','hoodi','south end circle',29,'offline',
 123,9234908546,4);
insert into metro_info values(16,20,'chanasandra','chanasandra','kengeri',49,'offline',
 109,7890236745,8);
insert into metro_info values(17,13,'nallur halli','nallur halli','challagatta',67,'online',
 230,8738903467,7);
insert into metro_info values(18,11,'pattandur','pattandur','attiguppe',89,'offline',
 189,8910945834,10);
insert into metro_info values(19,14,'vajarahalli','vajarahalli','mahalakshmi',9,'online',
 238,8904590245,3);
insert into metro_info values(20,12,'jp nagara','jp nagara','halasuru',10,'online',
 198,9056280167,5);
  
update metro_info set destination_address='rammurtinagara' where metro_id=15;

 alter table metro_info modify column station_id int not null;
 alter table metro_info add constraint dest_adress_uni unique(destination_address);
 alter table metro_info add constraint passeng_check check(no_of_passengers>=1 and 
 no_of_passengers<=300);
  alter table metro_info add constraint metro_check check(no_of_metro>=1 and 
 no_of_metro<=10);
 select * from metro_info;
 desc metro_info;