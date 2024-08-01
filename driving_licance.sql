create database RTO;
use RTO;
create table LLR_INFO(id int not null,full_name varchar(20),llr_id int primary key,dob date,
address varchar(30),phone_num bigint,email varchar(30),llr_applied_date date,llr_approved date,
llr_expired_date date);

create table LLR_TEST_INFO(id int not null,examinar_name varchar(20),test_id int primary key,
test_date date,test_llr_id int,test_location varchar(20),score int,remarks varchar(20),
is_testAccepted boolean,reattempted_date date,
foreign key(test_llr_id)references LLR_INFO(llr_id));

create table DRIVING_LICENCE_INFO(id int not null,full_name varchar(30),dl_id int primary key,
dl_test_id int,dl_llr_id int,dob date,permanent_location varchar(30),from_date date,
valid_date date,mode_of_licence varchar(20),
foreign key(dl_test_id)references LLR_TEST_INFO(test_id),
foreign key(dl_llr_id)references LLR_INFO(llr_id));


create table DRIVING_LICENCE_TEST_INFO(id int not null,driving_test_id int primary key,
test_dl_id int,examinar_name varchar(30),dl_test_date date,dl_test_location varchar(20),
score int,remarks varchar(20),is_dl_accepted boolean,reattempt_date date,
FOREIGN KEY(test_dl_id)references DRIVING_LICENCE_INFO(dl_id));


insert into LLR_INFO values(1,'Bharath magalur',1001,'1990-12-09','davanagere',8098345687,'bharath78@gmail.com','2024-01-17','2024-03-14','2030-09-16');
insert into LLR_INFO values(2,'Kishan G S',1002,'2000-06-03','chitradurga',7337755679,'kishan23@gmail.com','2023-02-09','2023-05-14','2028-11-03');
insert into LLR_INFO values(3,'Kishor G S',1003,'2000-06-03','jagalur',7022744474,'kishor56@gmail.com','2023-03-14','2023-11-20','2027-10-04');
insert into LLR_INFO values(4,'Bhoomika D',1004,'2002-05-07','mandya',8901678234,'bhoomika@gmail.com','2022-04-13','2022-10-19','2029-12-11');
insert into LLR_INFO values(5,'Sanjana G',1005,'2005-02-11','harihara',9810863335,'sanju34@gmail.com','2024-11-07','2025-01-08','2030-09-07');
insert into LLR_INFO values(6,'ravi kiran',1006,'1987-12-09','gadag',8076345687,'ravi23@gmail.com','2021-01-17','2021-03-14','2030-09-16');
insert into LLR_INFO values(7,'leelavathi',1007,'1789-06-03','mysore',9037755679,'leelavathi98@gmail.com','2022-02-09','2022-05-14','2028-11-03');
insert into LLR_INFO values(8,'shashi kiran',1008,'1076-06-03','chennagiri',9082744474,'shashi78@gmail.com','2023-03-14','2023-11-20','2027-10-04');
insert into LLR_INFO values(9,'sahadeva G T',1009,'2000-05-07','hoskote',8791678234,'sahadeva56@gmail.com','2022-04-13','2022-10-19','2029-12-11');
insert into LLR_INFO values(10,'Rekha V T',1010,'1986-02-11','hoodi',9340863335,'rekha12@gmail.com','2024-11-07','2025-01-08','2030-09-07');
insert into LLR_INFO values(11,'akshitha',1011,'2002-11-09','rajajinagra',8034745687,'akshitha08@gmail.com','2022-04-13','2022-10-19','2029-12-11');
insert into LLR_INFO values(12,'kushi',1012,'2018-10-03','hebbala',9038905679,'kushu78@gmail.com','2021-01-17','2021-03-14','2030-09-16');
insert into LLR_INFO values(13,'sandeep',1013,'2002-09-12','bommanahalli',9082734474,'sandeep23@gmail.com','2023-03-14','2023-11-20','2027-10-04');
insert into LLR_INFO values(14,'bhageeratha',1014,'2000-02-07','chitradurga',8791803234,'bhagee45@gmail.com','2024-11-07','2025-01-08','2030-09-07');
insert into LLR_INFO values(15,'renuka',1015,'2024-06-11','bhadravathi',9340845935,'renuka67@gmail.com','2024-11-07','2025-01-08','2030-09-07');
insert into LLR_INFO values(16,'shalini',1016,'2010-11-09','bannerugatta',9034745676,'shalini09@gmail.com','2022-04-13','2022-10-19','2029-12-11');
insert into LLR_INFO values(17,'anjali',1017,'2009-10-03','jayanagara',9258909679,'anjalianju@gmail.com','2021-01-17','2021-03-14','2030-09-16');
insert into LLR_INFO values(18,'anusha',1018,'2019-09-12','vijayanagara',8073298617,'anusha90@gmail.com','2023-03-14','2023-11-20','2027-10-04');
insert into LLR_INFO values(19,'ananya',1019,'2015-02-07','bidar',9016537892,'ananya78@gmail.com','2024-11-07','2025-01-08','2030-09-07');
insert into LLR_INFO values(20,'sharmila',1020,'2024-06-11','shimogga',6781903776,'sharmila89@gmail.com','2024-11-07','2025-01-08','2030-09-07');

insert into LLR_TEST_INFO values(51,'amitha',2001,'2024-09-18',1005,'mysore',200,'good',true,'2025-09-18');
insert into LLR_TEST_INFO values(52,'preethi',2002,'2023-10-09',1003,'kalburgi',167,'better',false,'2028-11-07');
insert into LLR_TEST_INFO values(53,'shamitha',2003,'2024-11-03',1020,'nandihal',220,'good',true,'2009-09-16');
insert into LLR_TEST_INFO values(54,'suraksha',2004,'2000-05-11',1015,'jayanagara',99,'poor',false,'2008-05-29');
insert into LLR_TEST_INFO values(55,'abhilash',2005,'2003-03-19',1012,'chamrajanagara',150,'average',true,'2007-03-28');
insert into LLR_TEST_INFO values(56,'siri',2006,'2024-01-20',1001,'bidar',256,'good',true,'2024-09-18');
insert into LLR_TEST_INFO values(57,'shalini',2007,'2023-02-18',1003,'shimogga',53,'poor',false,'2028-11-07');
insert into LLR_TEST_INFO values(58,'ankitha',2008,'2024-03-17',1006,'andrapradesh',289,'good',true,'2026-09-16');
insert into LLR_TEST_INFO values(59,'akhila',2009,'2000-05-15',1019,'channasandra',124,'average',false,'2006-05-29');
insert into LLR_TEST_INFO values(60,'harshitha',2010,'2003-04-19',1011,'kr market',189,'good',true,'2009-03-28');
insert into LLR_TEST_INFO values(61,'lavanya',2011,'2024-09-18',1009,'hampinagara',210,'good',true,'2025-09-18');
insert into LLR_TEST_INFO values(62,'sridevi',2012,'2023-10-09',1013,'bihar',111,'better',false,'2028-11-07');
insert into LLR_TEST_INFO values(63,'anu',2013,'2024-11-03',1010,'shiridi',128,'good',true,'2009-09-16');
insert into LLR_TEST_INFO values(64,'prabhakar',2014,'2000-05-11',1017,'bidar',47,'poor',false,'2008-05-29');
insert into LLR_TEST_INFO values(65,'suhil',2015,'2003-03-19',1001,'jagalur',156,'average',true,'2007-03-28');
insert into LLR_TEST_INFO values(66,'robert',2016,'2024-01-20',1007,'davanagere',238,'good',true,'2024-09-18');
insert into LLR_TEST_INFO values(67,'darshan',2017,'2023-02-18',1013,'chitradurga',67,'poor',false,'2028-11-07');
insert into LLR_TEST_INFO values(68,'divya',2018,'2024-03-17',1011,'kereala',290,'good',true,'2026-09-16');
insert into LLR_TEST_INFO values(69,'ankush',2019,'2000-05-15',1019,'london',132,'average',false,'2006-05-29');
insert into LLR_TEST_INFO values(70,'prajwal',2020,'2003-04-19',1005,'chikpete',194,'good',true,'2009-03-28');

insert into DRIVING_LICENCE_INFO values(21,'mithili',101,2003,1001,'2003-08-15','bengaluru','2012-09-15','2020-04-12','bike');
insert into DRIVING_LICENCE_INFO values(22,'geetha',102,2002,1002,'2020-11-3','mysore','2010-04-11','2013-04-23','4 wheeler');
insert into DRIVING_LICENCE_INFO values(23,'sunitha',103,2010,1010,'2110-9-11','pattanagere','2020-11-09','2025-04-25','2 wheeler');
insert into DRIVING_LICENCE_INFO values(24,'abhay',104,2005,1002,'1024-06-29','rammurtingar','2023-05-14','2028-04-17','3 wheeler');
insert into DRIVING_LICENCE_INFO values(25,'akshay',105,2020,1004,'2021-03-31','nice road','2035-7-21','2040-04-29','4 wheeler');
insert into DRIVING_LICENCE_INFO values(26,'navya',106,2012,1003,'2000-12-29','mangalore','2004-07-01','2020-04-12','6 wheeler');
insert into DRIVING_LICENCE_INFO values(27,'soumya',107,2014,1005,'2001-11-28','chikmangalore','2003-06-02','2013-04-23','4 wheeler');
insert into DRIVING_LICENCE_INFO values(28,'sangeeta',108,2019,1009,'2002-10-27','malleshwaram','2006-03-03','2025-04-25','2 wheeler');
insert into DRIVING_LICENCE_INFO values(29,'darshan',109,2001,1008,'2003-09-26','bashyam circle','2008-01-04','2028-04-17','3 wheeler');
insert into DRIVING_LICENCE_INFO values(30,'sunil',110,2004,1010,'2004-08-25','mysore road','2007-12-21','2040-04-05','4 wheeler');
insert into DRIVING_LICENCE_INFO values(31,'suhas',111,2019,1012,'2003-12-08','nagasandra','2012-09-15','2020-04-12','bike');
insert into DRIVING_LICENCE_INFO values(32,'vaasu',112,2017,1017,'2020-10-07','dasarahalli','2010-04-11','2013-04-23','4 wheeler');
insert into DRIVING_LICENCE_INFO values(33,'bhavana',113,2015,1013,'2018-9-11','jalahalli','2020-11-09','2025-04-25','2 wheeler');
insert into DRIVING_LICENCE_INFO values(34,'nandu',114,2019,1017,'1024-06-29','peenya','2023-05-14','2028-04-17','3 wheeler');
insert into DRIVING_LICENCE_INFO values(35,'mahi',115,2013,1014,'2021-03-31','mantri square','2035-7-21','2040-04-29','4 wheeler');
insert into DRIVING_LICENCE_INFO values(36,'puurna',116,2017,1019,'2000-12-29','chikpete','2004-07-01','2020-04-12','6 wheeler');
insert into DRIVING_LICENCE_INFO values(37,'pavi',117,2018,1020,'2001-11-28','lalbagh','2003-06-02','2013-04-23','4 wheeler');
insert into DRIVING_LICENCE_INFO values(38,'sarthak',118,2002,1019,'2002-10-27','kr puram','2006-03-03','2025-04-25','2 wheeler');
insert into DRIVING_LICENCE_INFO values(39,'tarak',119,2004,1002,'2003-09-26','silk institute','2008-01-04','2028-04-17','3 wheeler');
insert into DRIVING_LICENCE_INFO values(40,'nisarga',120,2013,1010,'2004-08-25','rajarajeshwari nagara','2007-12-21','2040-04-05','4 wheeler');

insert into DRIVING_LICENCE_TEST_INFO values(81,701,101,'anuradha','2016-08-26','chikpete',200,'CLR',true,'2027-12-19');
insert into DRIVING_LICENCE_TEST_INFO values(82,702,102,'yash','2017-11-14','lalbagh',118,'MOT',false,'2009-09-6');
insert into DRIVING_LICENCE_TEST_INFO values(83,703,102,'sudeep','2019-12-18','peenya',190,'MOT',true,'2000-08-09');
insert into DRIVING_LICENCE_TEST_INFO values(84,704,103,'puneeth','2020-09-10','dasarahalli',220,'CVE',false,'2001-4-23');
insert into DRIVING_LICENCE_TEST_INFO values(85,705,104,'ashwini','2000-03-13','srirampura',156,'CLR',true,'2006-2-26');
insert into DRIVING_LICENCE_TEST_INFO values(86,706,105,'padma','1987-08-5','indiranagar',234,'CLR',true,'2027-12-19');
insert into DRIVING_LICENCE_TEST_INFO values(87,707,106,'rachhu','1954-11-03','nallur',129,'MOT',false,'2009-09-6');
insert into DRIVING_LICENCE_TEST_INFO values(88,708,108,'shiv','1983-12-13','meggan',114,'MOT',true,'2000-08-09');
insert into DRIVING_LICENCE_TEST_INFO values(89,709,109,'natasa','1787-09-21','sanjay gandhi',157,'CVE',false,'2001-4-23');
insert into DRIVING_LICENCE_TEST_INFO values(90,710,110,'hardhik','1984-03-25','trinity',237,'CLR',true,'2006-2-26');
insert into DRIVING_LICENCE_TEST_INFO values(91,711,111,'raghu','2016-08-26','mg road',200,'CLR',true,'2027-12-19');
insert into DRIVING_LICENCE_TEST_INFO values(92,712,112,'pallavi','2017-11-14','trinity',118,'MOT',false,'2009-09-6');
insert into DRIVING_LICENCE_TEST_INFO values(93,713,112,'upendra','2019-12-18','hoodi',190,'MOT',true,'2000-08-09');
insert into DRIVING_LICENCE_TEST_INFO values(94,714,113,'sandya','2020-09-10','garudacharpalya',220,'CVE',false,'2001-4-23');
insert into DRIVING_LICENCE_TEST_INFO values(95,715,114,'reetu','2000-03-13','kadugodi',156,'CLR',true,'2006-2-26');
insert into DRIVING_LICENCE_TEST_INFO values(96,716,115,'nithya','1987-08-5','bidar',234,'CLR',true,'2027-12-19');
insert into DRIVING_LICENCE_TEST_INFO values(97,717,116,'manikya','1954-11-03','holalkere',129,'MOT',false,'2009-09-6');
insert into DRIVING_LICENCE_TEST_INFO values(98,718,118,'madhu','1983-12-13','hosdurga',114,'MOT',true,'2000-08-09');
insert into DRIVING_LICENCE_TEST_INFO values(99,719,119,'danya','1787-09-21','sanjay gandhi',157,'CVE',false,'2001-4-23');
insert into DRIVING_LICENCE_TEST_INFO values(100,720,120,'lakshmi','1984-03-25','trinity',237,'CLR',true,'2006-2-26');

select * from LLR_INFO;
desc LLR_INFO;

select * from LLR_TEST_INFO;
desc LLR_TEST_INFO;

select * from DRIVING_LICENCE_INFO;
desc DRIVING_LICENCE_INFO;

select * from DRIVING_LICENCE_TEST_INFO;
desc DRIVING_LICENCE_TEST_INFO;

//update the data
insert into LLR_INFO(id,llr_id,full_name) values(10,1010,'Rekha V T') on duplicate key update full_name='kiran';
insert into LLR_INFO(id,llr_id,address) values(1,1001,'davanagere') on duplicate key update address='maharastra';
insert into LLR_TEST_INFO(id,test_id,remarks) values(53,2003,'good') on duplicate key update test_location='srirampuram';
insert into LLR_TEST_INFO(id,test_id,examinar_name,test_location) values(53,2003,'suraksha','jayanagara') on duplicate key update score=56;
insert into DRIVING_LICENCE_INFO(dl_id,id,full_name) values(101,21,'mithili') on duplicate key update mode_of_licence='4 wheeler';
insert into DRIVING_LICENCE_INFO(dl_id,id,dob) values(104,24,'1024-06-29') on duplicate key update permanent_location='ragigudda';
insert into DRIVING_LICENCE_TEST_INFO(id,driving_test_id,score) values(81,701,200) on duplicate key update score=220;
insert into DRIVING_LICENCE_TEST_INFO(id,driving_test_id,examinar_name) values(82,702,'yash') on duplicate key update examinar_name='prajju';

// insert data
insert into LLR_INFO(id,llr_id,address) values(21,1021,'ragigudda') on duplicate key update address='ragigudda';
insert into LLR_INFO(id,llr_id,full_name,dob,address,phone_num,email,llr_applied_date,llr_approved,llr_expired_date) 
values(22,1022,'yash','2024-12-11','mallapura',6781903789,'yash@34@gmail.com','1098-11-07','2000-09-07','2024-11-07') 
on duplicate key update address='mallapura';
insert into LLR_TEST_INFO(id,examinar_name,test_id,test_date,test_llr_id,test_location,score,remarks,
is_testAccepted,reattempted_date) values(71,'viji',2021,'2001-01-19',1004,'navarang',232,'good',1,'2026-09-16')
on duplicate key update examinar_name='viji';

//replace

replace into LLR_INFO(llr_id,full_name)values(1005,'jeevitha');
replace into LLR_TEST_INFO(test_id,test_location)values(2001,mandya);
replace into LLR_TEST_INFO(id,remarks)values(2020,'average');