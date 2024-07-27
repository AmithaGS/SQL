use HOMEWORK;
create table temple_info(temple_id int not null,temple_name varchar(30) unique,
location varchar(20)unique,built_at date,built_by varchar(20),open_time time,
close_time time,distance int not null,no_of_devotees bigint,constraint devotes_chk 
check(no_of_devotees>50),no_of_priest int,constraint priest_chk check(no_of_priest>=1));

insert into temple_info values(1,'ganesha temple','davanagere','2003/08/14',
'ravindra','06:00:00','8:00:00',109,50,6);
insert into temple_info values(2,'saibaba temple','shirdi','2004/11/08',
'yograj','07:00:00','9:00:00',60,350,7);
insert into temple_info values(3,'anjeneya swamy temple','rajajinagara','1957/09/20',
'raama','05:30:00','8:30:00',70,450,3);
insert into temple_info values(4,'vishnu temple','dharwad','1090/11/01',
'narendra','04:15:00','06:00:00',80,550,2);
insert into temple_info values(5,'rama temple','ayodye','2000/06/06',
'sandeep','06:00:00','8:45:00',90,500,5);
insert into temple_info values(6,'durgambika temple','huchhavanahalli','1970/09/09',
'virat','11:00:00','12:00:00',15,55,6);
insert into temple_info values(7,'karya siddi anjeneya temple','banashankari','1979/10/08',
'sukanya','12:00:00','13:00:00',25,150,4);
insert into temple_info values(8,'venkateshwara swamy temple','tirupati','1990/12/07',
'sahadeva','13:30:00','14:30:00',35,100,9);
insert into temple_info values(9,'lakshmi temple','mandya','1890/01/19',
'bhageeratha','14:15:00','15:00:00',45,200,6);
insert into temple_info values(10,'annapurneswari temple','horanaadu','1289/02/11',
'leelavathi','15:00:00','16:45:00',55,300,4);
insert into temple_info values(11,'kariyamma temple','hosadurga','2003/11/09',
'aruna','15:30:00','17:30:00',100,250,3);
insert into temple_info values(12,'kollapramma temple','kalkere','2004/12/26',
'sunil','16:30:00','18:30:00',115,350,2);
insert into temple_info values(13,'sani swamy temple','sanisingapura','1957/08/30',
'tara','17:30:00','19:30:00',120,450,1);
insert into temple_info values(14,'chamundeshwari temple','mysore','1209/09/13',
'satyanarayana','18:15:00','20:00:00',125,550,4);
insert into temple_info values(15,'ayyappa swamy temple','tamilnadu','1878/11/23',
'ranganath','19:30:00','21:45:00',130,500,3);
insert into temple_info values(16,'maramma temple','vijayanagara','1970/09/26',
'yashas','20:00:00','22:00:00',135,55,6);
insert into temple_info values(17,'banashankari temple','bellary','1879/05/14',
'prasanna','21:30:00','23:20:00',140,150,5);
insert into temple_info values(18,'varada raja swamy temple','holalkere','1790/03/07',
'arjun','22:30:00','23:30:00',145,100,7);
insert into temple_info values(19,'lakshmi narayana temple','kengeri','1290/05/24',
'bharath','14:30:00','17:00:00',150,200,3);
insert into temple_info values(20,'raghavendra swamy temple','bommanahalli','1789/02/26',
'harish','12:45:00','16:45:00',200,300,2);

alter table temple_info modify column distance int not null;
alter table temple_info add constraint bulit_uni unique(built_by);
alter table temple_info add constraint no_devote_chk check(no_of_devotees>=50 
and no_of_devotees<=600);
alter table temple_info add constraint no_priest_chk check(no_of_priest>=1 
and no_of_priest<=10);

select * from temple_info;
desc temple_info;
