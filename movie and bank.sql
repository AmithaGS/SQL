USE HOMEWORK;
CREATE TABLE movie_info(id int,movie_name varchar(30),producer varchar(20),director varchar(20),
director_name varchar(20));
ALTER TABLE movie_info ADD COLUMN hero_name varchar(20);
ALTER TABLE movie_info ADD COLUMN heroin_name varchar(20);
ALTER TABLE movie_info ADD COLUMN actor_id int;
ALTER TABLE movie_info ADD COLUMN actor_salary bigint;
ALTER TABLE movie_info ADD COLUMN actor_number bigint;
ALTER TABLE movie_info ADD COLUMN is_release boolean;

CREATE TABLE bank_info(bank_id int,bank_name varchar(30),branch varchar(20),manager_name varchar(20),
location varchar(20));
ALTER TABLE bank_info ADD COLUMN  email varchar(20);
ALTER TABLE bank_info ADD COLUMN ifsc_code int;
ALTER TABLE bank_info ADD COLUMN bank_phone_number bigint;
ALTER TABLE bank_info ADD COLUMN account_number bigint;
ALTER TABLE bank_info ADD COLUMN is_bank_open boolean;

SELECT * FROM movie_info;
SELECT * FROM bank_info;

ALTER TABLE movie_info RENAME COLUMN producer TO producer_name;
ALTER TABLE movie_info RENAME COLUMN director_name TO dir_name;
ALTER TABLE movie_info RENAME COLUMN actor_number TO actor_ph_number;
ALTER TABLE movie_info RENAME COLUMN is_release TO is_movie_release;
ALTER TABLE movie_info RENAME COLUMN actor_salary TO producer_salary;

ALTER TABLE bank_info RENAME COLUMN branch TO branch_name;
ALTER TABLE bank_info RENAME COLUMN location TO bank_location;
ALTER TABLE bank_info RENAME COLUMN email TO bank_email;
ALTER TABLE bank_info RENAME COLUMN ifsc_code TO bank_ifsc_code;
ALTER TABLE bank_info RENAME COLUMN account_number TO bank_acc_number;

DESC movie_info;

INSERT INTO movie_info VALUES(1,"googly","Ramesh babu","Amitha","Kiran","yash","radhika",10,10000,9087654321,true);
INSERT INTO movie_info VALUES(2,"AnjaniPutra"," kishan","Dhanya","Veeresh","puneeth","radhika",9,10200,8976342098,true);
INSERT INTO movie_info VALUES(3,"shivam","Nikhil","Ravi","Arun","Shivraj Kumar","aishwarya",8,128790,8907654328,false);
INSERT INTO movie_info VALUES(4,"Drushyam","Ramesh babu","amith","Kiran","yash","srideevi",7,20000,9087654321,true);
INSERT INTO movie_info VALUES(5,"santu straight farward","Ramesh","Ankith","vishal","yash","suma",6,30000,7890654879,false);
INSERT INTO movie_info VALUES(6,"rangam","Babu","vishal","udupa","tyson","amala",5,10000,9087654321,true);
INSERT INTO movie_info VALUES(7,"adyakshya","kavitha","karan","Kiran","raaamu","reethu",4,80000,7896548907,false);
INSERT INTO movie_info VALUES(8,"vikram","sirisha","charan","Kiran","siri","milana",3,90000,7896543289,true);
INSERT INTO movie_info VALUES(9,"milana","Raghu","ram","Kiran","prabhakar","keerti",2,89000,876432567,false);
INSERT INTO movie_info VALUES(10,"maharaja","Ravindra","shashank","Kiran","ananth","ananya",1,50000,9087342156,true);

DESC bank_info;

INSERT INTO bank_info VALUES(1,"canara bank","canara","Kiran","Chitradurga","canara03@gmail.com",1290000098,9876509876,1098675000,true);
INSERT INTO bank_info VALUES(2,"pragati grameena bank","pragathi","amitha","davanagere","pragati09@gmail.com",1009870000,8908765467,1908760000,false);
INSERT INTO bank_info VALUES(3,"karnataka bank","karnataka","ananya","mysore","karnata56@gmail.com",1098009809,8908765433,8901560000,true);
INSERT INTO bank_info VALUES(4,"SBI bank","sbi","kishan","jagalur","sbi09@gmail.com",1267890980,8909652435,1090870000,true);
INSERT INTO bank_info VALUES(5,"HDFC bank","hdfc","leelavathi","holalkere","hdfc76@gmail.com",1290908708,9087653490,1090870000,false);
INSERT INTO bank_info VALUES(6,"ICCI bank","icci","shashi","rajajinagra","icci89@gmail.com",1290000088,908765456,7890652345,true);
INSERT INTO bank_info VALUES(7,"bank of barooda","barooda","ravi","banashankari","barooda90@gmail.com",780975000,8907652434,1908009876,true);
INSERT INTO bank_info VALUES(8,"pragati krishna grameena bank","rekha","kengeri","Chitradurga","krisha86@gmail.com",1290876590,7890890876,12356000098,false);
INSERT INTO bank_info VALUES(9,"Sindicate bank","sindicate","tanu","btm","sindica45@gmail.com",1290000097,9890509876,1098695000,true);
INSERT INTO bank_info VALUES(10,"indian bank","indian","sujith","vijayanagara","indian23@gmail.com",1290100008,9889509876,1090975000,false);


UPDATE movie_info SET movie_name="veeram";
rollback;
UPDATE movie_info SET hero_name="Raviteja";
UPDATE movie_info SET movie_name="veeram";
UPDATE movie_info SET movie_name="aadi" WHERE id=2;
UPDATE movie_info SET movie_name="vikram" WHERE id=3;
UPDATE movie_info SET movie_name="adyakshya" WHERE id=4;
UPDATE movie_info SET movie_name="conjuring" WHERE id=5;
UPDATE movie_info SET movie_name="maharaja" WHERE id=6;
UPDATE movie_info SET movie_name="veda" WHERE id=7;
UPDATE movie_info SET movie_name="smile" WHERE id=8;
UPDATE movie_info SET movie_name="don" WHERE id=9;
UPDATE movie_info SET movie_name="virupaksha" WHERE id=10;

UPDATE movie_info SET hero_name="puneeth" WHERE id=2;
UPDATE movie_info SET hero_name="shivraj kumar" WHERE id=3;
UPDATE movie_info SET hero_name="tyson" WHERE id=4;
UPDATE movie_info SET hero_name="prabakar" WHERE id=5;
UPDATE movie_info SET hero_name="vikram" WHERE id=6;
UPDATE movie_info SET hero_name="anantnag" WHERE id=7;
UPDATE movie_info SET hero_name="nagarjun" WHERE id=8;
UPDATE movie_info SET hero_name="nagchaithnya" WHERE id=9;
UPDATE movie_info SET hero_name="ramcharan" WHERE id=10;

UPDATE bank_info SET bank_location="btm" WHERE bank_id=1;
UPDATE bank_info SET branch_name="grameena" WHERE bank_id=2;
UPDATE bank_info SET bank_location="rajajinagar" WHERE bank_id=3;
UPDATE bank_info SET branch_name="statebank" WHERE bank_id=4;
UPDATE bank_info SET bank_location="mandya" WHERE bank_id=5;
UPDATE bank_info SET branch_name="iccibank" WHERE bank_id=6;
UPDATE bank_info SET bank_location="mysore" WHERE bank_id=7;
UPDATE bank_info SET branch_name="pragati" WHERE bank_id=8;
UPDATE bank_info SET bank_location="gadag" WHERE bank_id=9;
UPDATE bank_info SET branch_name="Indian" WHERE bank_id=10;

DELETE FROM movie_info WHERE ID=10;
DELETE FROM movie_info WHERE ID=9;
DELETE FROM movie_info WHERE ID=8;

DELETE FROM bank_info WHERE bank_id=10;
DELETE FROM bank_info WHERE bank_id=9;
DELETE FROM bank_info WHERE bank_id=8;
  
SELECT * FROM movie_info WHERE id=1 ;
SELECT heroin_name,hero_name FROM movie_info WHERE ID=1 ;
SELECT * FROM movie_info WHERE id in(1,3,5,7,9);
SELECT producer_name FROM movie_info WHERE id=1 AND actor_id=10;
SELECT * FROM movie_info WHERE id=10 OR actor_id=7 OR is_movie_release=1;
SELECT * FROM movie_info WHERE id NOT IN(1,3,5,7,9);

SELECT * FROM movie_info;
SELECT * FROM bank_info;