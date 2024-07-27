use HOMEWORK;
create table market_info(market_id int not null,market_name varchar(30) unique,
location varchar(20) not null,shops_contact_number bigint,types_of_market int,
constraint types_chk check(types_of_market>10),no_of_customer int,constraint customer_chk 
check(no_of_customer>100),market_open time,market_close time,status_of_market varchar(10),
is_parking_availability boolean);

insert into market_info values(1,'central market','peenya',908765678,15,120,
'10:00:00','06:00:00','open',true);
insert into market_info values(2,'flower market','madra',9834568902,16,125,
'09:00:00','06:30:00','close',true);
insert into market_info values(3,'vegetables market','chikmangalore',980562789,17,130,
'08:00:00','07:00:00','open',false);
insert into market_info values(4,'farming market','mangalore',8709656708,18,132,
'07:00:00','09:00:00','close',false);
insert into market_info values(5,'city market','chikballapura',8953267892,19,124,
'11:00:00','08:00:00','open',false);
insert into market_info values(6,'village market','mandya',9083426789,20,156,
'12:00:00','8:20:00','close',true);
insert into market_info values(7,'square market','shimogga',9732671907,21,200,
'13:00:00','3:40:00','close',false);
insert into market_info values(8,'green market','hasan',7823094567,22,189,
'14:00:00','2:30:00','open',true);
insert into market_info values(9,'fruits market','jagalur',9478290976,23,176,
'12:30:00','06:40:00','open',false);
insert into market_info values(10,'chicken market','harihara',7823095678,24,128,
'10:20:00','4:40:00','close',true);
insert into market_info values(11,'clothes market','chikpete',900985678,25,290,
'10:20:00','22:00:00','close',true);
insert into market_info values(12,'rose','commercial street',7894568902,26,285,
'09:10:00','19:30:00','open',true);
insert into market_info values(13,'east market','mg road',7894356781,27,234,
'08:05:00','16:30:00','close',false);
insert into market_info values(14,'furniture market','srirampura',9759656708,28,250,
'07:35:00','15:00:00','open',false);
insert into market_info values(15,'home market','silk institute',9003267892,29,299,
'11:30:00','19:00:00','close',false);
insert into market_info values(16,'steel market','ragi gudda',9233426789,30,235,
'12:40:00','4:20:00','open',true);
insert into market_info values(17,'copper market','hosnagara',9457671907,31,198,
'13:20:00','5:40:00','open',false);
insert into market_info values(18,'cement market','jammu',7822674567,32,106,
'14:00:30','7:00:00','close',true);
insert into market_info values(19,'paint market','kalburgi',9498490976,33,156,
'12:00:20','9:00:00','open',false);
insert into market_info values(20,'bag market','malleshwaram',9012595678,34,207,
'10:00:00','5:00:00','close',true);

alter table market_info modify column location varchar(20) not null;
alter table market_info add constraint loc_uni unique(location);
alter table market_info add constraint cust_chk check(no_of_customer>=100
 and no_of_customer<300);
 alter table market_info add constraint new_market_type_chk check(types_of_market>=10
 and types_of_market<50);
select * from market_info;
desc market_info;
