CREATE DATABASE XWORKZ;
USE XWORKZ;
CREATE TABLE Employee_details(e_name varchar(20),e_email varchar(20),e_id int,e_address varchar(30),e_number int);
CREATE TABLE Airport_details(a_name varchar(20),a_address varchar(20),a_phnumber bigint,flight int,flight_name varchar(20));
   //Add 5 Columns
   
ALTER TABLE Employee_details ADD COLUMN e_salary bigint;
ALTER TABLE Employee_details ADD COLUMN e_phnumber bigint;
ALTER TABLE Employee_details ADD COLUMN job_name varchar(20), ADD COLUMN manager_id int, ADD COLUMN e_commission int;
SELECT * FROM Employee_details;
DESC Employee_details;

ALTER TABLE Airport_details ADD COLUMN no_of_pilots int, ADD COLUMN a_source varchar(20),ADD COLUMN a_destination varchar(20),ADD COLUMN scheduled_departure bigint, ADD COLUMN departure_delay int;
ALTER TABLE Airport_details ADD COLUMN flight_number bigint;
SELECT * FROM Airport_details;
DESC Airport_details;

  //Remove 2 columns
ALTER TABLE Employee_details DROP COLUMN manager_id;
ALTER TABLE Employee_details DROP COLUMN e_commission;

ALTER TABLE Airport_details DROP COLUMN scheduled_departure;
ALTER TABLE Airport_details DROP COLUMN flight;

  //Rename 5 columns
ALTER TABLE Employee_details RENAME COLUMN e_name TO emp_name;
ALTER TABLE Employee_details RENAME COLUMN e_id TO emp_id;
ALTER TABLE Employee_details RENAME COLUMN e_email TO emp_email;
ALTER TABLE Employee_details RENAME COLUMN job_name TO empjob_name;
ALTER TABLE Employee_details RENAME COLUMN e_number TO emp_number;

ALTER TABLE  Airport_details RENAME COLUMN a_name TO airport_name;
ALTER TABLE  Airport_details RENAME COLUMN a_address TO airport_address;
ALTER TABLE  Airport_details RENAME COLUMN a_phnumber TO airport_phnumber;
ALTER TABLE  Airport_details RENAME COLUMN flight_name TO aeroplane_name;
ALTER TABLE  Airport_details RENAME COLUMN a_source TO airport_source;

 //change datatype
ALTER TABLE  Employee_details MODIFY COLUMN emp_id varchar(10);
ALTER TABLE  Employee_details MODIFY COLUMN emp_id int;
ALTER TABLE  Employee_details MODIFY COLUMN emp_name int;
ALTER TABLE  Employee_details MODIFY COLUMN emp_name varchar(20);

ALTER TABLE  Employee_details MODIFY COLUMN emp_id varchar(10);
ALTER TABLE  Employee_details MODIFY COLUMN e_salary int;

ALTER TABLE  Airport_details MODIFY COLUMN  airport_phnumber int;
ALTER TABLE  Airport_details MODIFY COLUMN  airport_phnumber bigint;
ALTER TABLE  Airport_details MODIFY COLUMN  no_of_pilots bigint;
ALTER TABLE  Airport_details MODIFY COLUMN flight_number int;
ALTER TABLE  Airport_details MODIFY COLUMN aeroplane_name int;
ALTER TABLE  Airport_details MODIFY COLUMN aeroplane_name varchar(20);
SELECT * FROM Employee_details;
USE XWORKZ;
DESC Employee_details;
INSERT INTO Employee_details VALUES('amitha','amithags03@gmail.com',1,'chitradurga',10,25000,8073203632,'testing');
INSERT INTO Employee_details VALUES('anjali','anjalicr20@gmail.com',2,'kadur',9,30000,9087634523,'testing');
INSERT INTO Employee_details VALUES('ananya','ananyavk98@gmail.com',3,'shimogga',8,20000,9876540965,'developer');
INSERT INTO Employee_details VALUES('kishan','kishan2000@gmail.com',4,'davanagere',7,35000,7337755679,'developer');
INSERT INTO Employee_details VALUES('kishor','kishorgs29@gmail.com',5,'mysore',6,20000,7022744474,'testing');
INSERT INTO Employee_details VALUES('akshitha','akshitha56@gmail.com',6,'mandya',5,25000,8907634523,'testing');
INSERT INTO Employee_details VALUES('shashi','shashi89@gmail.com',7,'bellary',4,45000,9080792632,'developer');
INSERT INTO Employee_details VALUES('bharath','bharath90@gmail.com',8,'chitradurga',3,55000,8965209651,'developer');
INSERT INTO Employee_details VALUES('bhoomika','bhoomika89@gmail.com',9,'mysore',2,35000,8745263789,'testing');
INSERT INTO Employee_details VALUES('ravi','raviki@gmail.com',10,'mandya',1,56000,9067452378,'developer');
SELECT * FROM Employee_details;

DELETE FROM Employee_details WHERE emp_name='shashi';
SELECT * FROM Employee_details WHERE empjob_name='testing';
SELECT emp_name FROM Employee_details WHERE emp_id=7;
SELECT emp_name,emp_email FROM Employee_details WHERE empjob_name='tester';  
SELECT emp_name,emp_email FROM Employee_details WHERE empjob_name='testing';

USE XWORKZ;
