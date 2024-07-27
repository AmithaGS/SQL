use HOMEWORK;
create table show_room(room_id int not null,show_room_name varchar(20) not null unique,
location varchar(30)unique,opened_at timestamp,opened_by varchar(20),manager_name varchar(20),
contact_num bigint,no_of_vehicles int,constraint no_of_vehicles check(no_of_vehicles>=0),
vehicle_price bigint,constraint vehicle_price_chk check(vehicle_price>=0),
is_carShowRoom boolean);

//insert

insert into show_room values(1,'glanza','bangalore',now(),'avinash','bhavana',8097127856,
500,1000000,true);
insert into show_room values(2,'toyato','mysore',now(),'dineesh','reethu',8912893467,
400,900000,false);
insert into show_room values(3,'marythi','rajajinagar',now(),'adithya','radha',8907125678,
1000,10000000,true);
insert into show_room values(4,'suzuki','btm',now(),'bhoomika','bindu',8945109876,
1000,109000000,false);
insert into show_room values(5,'metro auto','bidar',now(),'sindu','geeta',8910982536,
500,10900000,true);
insert into show_room values(6,'supreme ride','kalburgi','2024-07-26 12:00:00','amitha',
'leela',9017265437,100,9000000,true);
insert into show_room values(7,'driveLux','kengeri','2023-07-20 10:00:00','ankith',
'harshitha',8910092536,10000,78000000,true);
insert into show_room values(8,'highway','rrnagara','2023-12-19 12:27:20','ambika',
'arjun',8670982536,20000,90800000,false);
insert into show_room values(9,'velocity','pattanagere','2023-10-08 09:29:00',
'bhuvan','soundarya',9076236789,300,1800000,true);
insert into show_room values(10,'urban drive motors','kb cross','2023-07-02 07:30:00',
'kala','radhika',8910982356,59000,1890000,false);
insert into show_room values(11,'elite auto','chitradurga','2022-07-02 07:30:00','aarati',
'ratan',8097127786,1000,10000000,true);
insert into show_room values(12,'prime auto car','davanagere','2022-11-10 07:30:00','ananth',
'neethu',9812893467,90,90800000,false);
insert into show_room values(13,'speedster bikes','jayanagara','2022-09-18 10:30:00','aadi',
'amith',8097125678,2000,98000000,true);
insert into show_room values(14,'apex bike','vijayanagara','2022-07-02 08:30:00','sindura',
'akshay',8945890876,800,78000000,false);
insert into show_room values(15,'ktm bike','mandya','2021-12-19 07:30:00','sindu',
'geeta',8910982536,500,10900000,true);
insert into show_room values(16,'urban wheelhouse','shimogga','2021-07-26 12:00:00','nandu',
'leela',9017265437,100,9000000,true);
insert into show_room values(17,'horizon bike gallery','chennagiri','2021-11-20 10:00:00',
'ankith','harshi',8910092536,10000,78000000,true);
insert into show_room values(18,'velocity bikers','chamrajanagara','2021-08-19 12:27:20',
'ambika','arjun',8670982536,20000,90800000,false);
insert into show_room values(19,'rideon motors','kr market','2021-10-08 09:29:00',
'bhuvan','soundarya',9076236789,300,1800000,true);
insert into show_room values(20,'nitro bike','lalbagh','2021-07-02 09:30:00',
'kala','radhika',8910982356,59000,1890000,false);

update show_room set manager_name="raadhi" where room_id=15;
update show_room set manager_name="mitra" where room_id=16;
update show_room set manager_name="ravi" where room_id=19;
update show_room set manager_name="kiran" where room_id=20;
update show_room set manager_name="shashi" where room_id=18;


alter table show_room modify contact_num bigint not null;
alter table show_room add constraint manager_name_uni unique(manager_name);
alter table show_room add constraint no_of_vehicles_chk check(no_of_vehicles>100 
and no_of_vehicles<1000);
alter table show_room add constraint veh_price_chk check(vehicle_price>=1000 
or vehicle_price<=100000000);

select * from show_room;
desc show_room;
