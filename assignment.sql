CREATE DATABASE HOMEWORK;
USE HOMEWORK;
CREATE TABLE Hospital_info(h_name varchar(20),no_of_patients int,no_of_beds int,
h_location varchar(30),h_emailid varchar(20),ph_number bigint,doctor_name varchar(20),
h_charges int,no_of_nurse int,rating int);
SELECT * FROM Hospital_info;
DESC Hospital_info;

INSERT INTO Hospital_info values('Keerti',50,90,'Chitradurga','keertiHospital@gmail.com',8097653478,'Amitha',500,10,5);
INSERT INTO Hospital_info values('patanjali',100,150,'Chitradurga','pataHos@gmail.com',7890435678,'vikram',1000,20,5);
INSERT INTO Hospital_info values('Nanjappa',50,90,'Shimogga','nangappa@gmail.com',7834561234,'Ravi',5000,50,4);
INSERT INTO Hospital_info values('girija',4,10,'Mandya','giriHos@gmail.com',9076542768,'Darshan',250,3,3);
INSERT INTO Hospital_info values('Manipal',200,500,'Udupi','maniHosp@gmail.com',7834235678,'Puneeth',2000,100,5);
INSERT INTO Hospital_info values('lifeCare',50,70,'Shimogga','lifeHosp@gmail.com',9872345890,'Kishor',200,20,2);
INSERT INTO Hospital_info values('Amma',20,30,'Davanagere','ammaHosp@gmail.com',9678934562,'Ananya',500,20,5);
INSERT INTO Hospital_info values('Kavi',40,60,'Darwad','kavihosp@gmail.com',9783482745,'Anjali',250,24,4);
INSERT INTO Hospital_info values('Keertana',20,50,'Vijanagar','keeruhos@gmail.com',9420874536,'sahadeva',100,10,3);
INSERT INTO Hospital_info values('Krishna',120,200,'Rajajinagar','krishnhos@gmail.com',8904562378,'krishna',1000,30,4);
INSERT INTO Hospital_info values('Ananya',20,60,'Rajajinagar','ananyaHos@gmail.com',9823867543,'mallikarjun',750,20,5);
INSERT INTO Hospital_info values('kavana',25,50,'mysore','kavHosp@gmail.com',8745670981,'keerti',100,10,4);
INSERT INTO Hospital_info values('surjery',75,100,'Bellary','surjHos@gmail.com',6789456789,'ranjith',700,50,4);
INSERT INTO Hospital_info values('srujan',10,30,'jagalur','sruhosp@gmail.com',8763452768,'Ravi',800,40,3);
INSERT INTO Hospital_info values('lakshmi',300,500,'Bangalore','lakHosp@gmail.com',9863127864,'surya',250,100,4);
INSERT INTO Hospital_info values('Mahesh',70,100,'Udupi','mahiHos@gmail.com',9865432098,'praveen',100,20,2);
INSERT INTO Hospital_info values('Meggan',1000,2000,'Shimogga','meganHos@gmail.com',9823476523,'Raveesh',1000,200,5);
INSERT INTO Hospital_info values('Danta',20,30,'Davanagere','danahos@gmail.com',8956432879,'Ananya',500,20,5);
INSERT INTO Hospital_info values('pavitra',23,50,'chamarajnagar','paviHos@gmail.com',9812657896,'shetty',200,100,3);
INSERT INTO Hospital_info values('puneeth',600,800,'btm','puneHos@gmail.com',8934278954,'kishan',200,150,4);
INSERT INTO Hospital_info values('mahalakshmi',190,250,'Kengeri','mahaHos@gmail.com',7890543278,'shashi',200,20,5);

CREATE TABLE Tourist_places(place_id int,name varchar(30),location varchar(30),country varchar(20),
entry_fee int,opening_hours int,best_time_to_visit varchar(20),contact_info bigint,rating int,
website varchar(30));
SELECT * FROM Tourist_places;
DESC Tourist_places;
INSERT INTO  Tourist_places VALUES(1,'cta_fort','chitradurga','India',50,10,'morning',9876345689,5,'www.fortcity.com');
INSERT INTO  Tourist_places VALUES(2,'jogfalls','shimogga','India',10,7,'morning',8975432657,5,'www.jogfalls.com');
INSERT INTO  Tourist_places VALUES(3,'kavimane','shimogga','India',100,8,'evening',9087454323,4,'www.kavimane.com');
INSERT INTO  Tourist_places VALUES(4,'mullayanagiri','chikangalore','India',100,15,'morning',8765903426,5,'www.mullayanagiri.com');
INSERT INTO  Tourist_places VALUES(5,'sidlumane','chmrajnagara','srilakna',200,10,'afternoon',8906543278,4,'www.sidlumane.com');
INSERT INTO  Tourist_places VALUES(6,'hampi','vijanagara','India',20,10,'morning',8906547843,5,'www.hampi.com');
INSERT INTO  Tourist_places VALUES(7,'karyasidditemple','banashankari','India',10,5,'evening',8734907632,5,'www.karyasiddi.com');
INSERT INTO  Tourist_places VALUES(8,'durgadevi','HV halli','India',0,18,'morning',8073203632,5,'www.durgadevi.com');
INSERT INTO  Tourist_places VALUES(9,'anjaneya','rajajinagar','china',100,10,'evening',9865134567,4,'www.anjaneya.com');
INSERT INTO  Tourist_places VALUES(10,'Tajmahal','Agra','India',200,10,'afternoon',8907623567,5,'www.taj.com');
INSERT INTO  Tourist_places VALUES(11,'munnar','kerala','India',150,10,'morning',7890543289,4,'www.munnar.com');
INSERT INTO  Tourist_places VALUES(12,'puducherry','pondechery','India',200,15,'evening',8906547865,4,'www.puducherry.com');
INSERT INTO  Tourist_places VALUES(13,'sri_harmandir','gurdwara','India',500,10,'morning',8907543278,5,'www.harmandir.com');
INSERT INTO  Tourist_places VALUES(14,'mysore_palace','mysore','India',100,10,'morning',7890654378,5,'www.palace.com');
INSERT INTO  Tourist_places VALUES(15,'kodaiknal','tamilnadu','India',0,18,'morning',9087654321,5,'www.kodaikanal.com');
INSERT INTO  Tourist_places VALUES(16,'amber_palace','castel','america',500,10,'evening',8906589543,4,'www.amber.com');
INSERT INTO  Tourist_places VALUES(17,'red_fort','delhi','India',450,10,'morning',9082316521,5,'www.redfort.com');
INSERT INTO  Tourist_places VALUES(18,'goldenTemple','amritsara','japan',50,10,'morning',8906543876,4,'www.golden.com');
INSERT INTO  Tourist_places VALUES(19,'qutab_minar','delhi','India',100,9,'morning',8906547865,5,'www.qutab.com');
INSERT INTO  Tourist_places VALUES(20,'kashmir_valley','kashmir','jammuAndKashmir',400,10,'morning',9560972456,5,'www.valley.com');
