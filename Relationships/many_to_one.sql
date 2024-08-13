/*MANY TO ONE*/

create table hotel (hotel_id INT PRIMARY KEY,hotel_name VARCHAR(100),address VARCHAR(255),city VARCHAR(50),
state VARCHAR(50),zip_code VARCHAR(10),country VARCHAR(50),phone_number VARCHAR(15),email VARCHAR(100),
rating DECIMAL(2, 1));
desc hotel;
select * from hotel;

create table rooms (room_id INT PRIMARY KEY,hotel_id INT,room_number VARCHAR(10),room_type VARCHAR(50),
price_per_night DECIMAL(10, 2),available BOOLEAN,bed_type VARCHAR(50),capacity INT,view_type VARCHAR(50),
smoking_allowed BOOLEAN,FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id));
desc rooms;
select * from rooms;

insert into hotel values(1, 'Grand Hotel', '123 Main St', 'New York', 'NY', '10001', 'USA', '123-456-7890', 'contact@grandhotel.com', 4.5);
insert into hotel values(2, 'Beach Resort', '456 Ocean Ave', 'Miami', 'FL', '33101', 'USA', '987-654-3210', 'info@beachresort.com', 4.8);
insert into hotel values(3, 'Mountain Inn', '789 Alpine Rd', 'Denver', 'CO', '80201', 'USA', '555-555-5555', 'stay@mountaininn.com', 4.2);
insert into hotel values(4, 'City Lodge', '321 Downtown St', 'Los Angeles', 'CA', '90001', 'USA', '444-444-4444', 'book@citylodge.com', 4.0);
insert into hotel values(5, 'Lakeview Hotel', '654 Lakeside Dr', 'Chicago', 'IL', '60601', 'USA', '333-333-3333', 'reservations@lakeview.com', 4.3);
insert into hotel values(6, 'Desert Oasis', '987 Sand Rd', 'Phoenix', 'AZ', '85001', 'USA', '222-222-2222', 'welcome@desertoasis.com', 4.6);
insert into hotel values(7, 'Forest Retreat', '159 Greenway St', 'Seattle', 'WA', '98101', 'USA', '111-111-1111', 'inquiries@forestretreat.com', 4.7);
insert into hotel values(8, 'Downtown Plaza', '753 Center St', 'San Francisco', 'CA', '94101', 'USA', '777-777-7777', 'service@downtownplaza.com', 4.4);
insert into hotel values(9, 'Harbor Inn', '951 Harbor Dr', 'Boston', 'MA', '02101', 'USA', '888-888-8888', 'contact@harborinn.com', 4.1);
insert into hotel values(10, 'Hilltop Hotel', '357 Summit Rd', 'Nashville', 'TN', '37201', 'USA', '999-999-9999', 'info@hilltophotel.com', 4.2);
insert into hotel values(11, 'Royal Palace', '123 Kingsway', 'London', 'LN', 'EC1A 1BB', 'UK', '020-1234-5678', 'royal@palace.com', 5.0);
insert into hotel values(12, 'Sunset Villa', '456 Beachside', 'Sydney', 'NSW', '2000', 'Australia', '+61-2-1234-5678', 'villa@sunset.com', 4.9);
insert into hotel values(13, 'Maple Leaf Hotel', '789 Maple St', 'Toronto', 'ON', 'M5H 2N2', 'Canada', '+1-416-123-4567', 'maple@leaf.com', 4.6);
insert into hotel values(14, 'Oriental Pearl', '321 Pearl St', 'Shanghai', 'om', 'M5H 2N2','China', '86-21-124-5678', 'pearl@oriental.com', 4.7);
insert into hotel values(15, 'Alpine Lodge', '654 Snowy Rd', 'Zurich', '8001', 'Swzerland','hongkong', '+41-44-123-4567', 'stay@alpine.com', 4.8);
insert into hotel values(16, 'Coconut Grove', '987 Palm Blvd', 'Honolulu', 'HI', '96801', 'USA', '333-333-3333', 'contact@coconutgrove.com', 4.6);
insert into hotel values(17, 'Savannah Hotel', '159 River St', 'Savannah', 'GA', '31401', 'USA', '111-111-1111', 'info@savannahhotel.com', 4.5);
insert into hotel values(18, 'Urban Stay', '753 Urban Rd', 'Dallas', 'TX', '75201', 'USA', '777-777-7777', 'service@urbanstay.com', 4.3);
insert into hotel values(19, 'Ocean Breeze', '951 Breeze Rd', 'Santa Monica', 'CA', '90401', 'USA','888-888-8888', 'breeze@ocean.com', 4.2);
insert into hotel values(20, 'Mountain View', '357 Peak St', 'Aspen', 'CO', '81611', 'USA', '999-999-9999', 'view@mountain.com', 4.4);


insert into rooms values(1, 1, '101', 'Single', 120.00, TRUE, 'Queen', 2, 'City', FALSE);
insert into rooms values(2, 1, '102', 'Double', 150.00, TRUE, 'King', 4, 'City', FALSE);
insert into rooms values(3, 2, '201', 'Suite', 300.00, TRUE, 'King', 4, 'Ocean', FALSE);
insert into rooms values(4, 2, '202', 'Deluxe', 250.00, TRUE, 'Queen', 3, 'Ocean', FALSE);
insert into rooms values(5, 3, '301', 'Standard', 100.00, TRUE, 'Double', 2, 'Mountain', FALSE);
insert into rooms values(6, 3, '302', 'Suite', 350.00, TRUE, 'King', 4, 'Mountain', FALSE);
insert into rooms values(7, 4, '401', 'Single', 110.00, TRUE, 'Queen', 2, 'City', FALSE);
insert into rooms values(8, 4, '402', 'Double', 160.00, TRUE, 'King', 4, 'City', FALSE);
insert into rooms values(9, 5, '501', 'Suite', 330.00, TRUE, 'King', 4, 'Lake', FALSE);
insert into rooms values(10, 5, '502', 'Deluxe', 280.00, TRUE, 'Queen', 3, 'Lake', FALSE);
insert into rooms values(11, 6, '601', 'Single', 130.00, TRUE, 'Queen', 2, 'Desert', FALSE);
insert into rooms values(12, 6, '602', 'Double', 170.00, TRUE, 'King', 4, 'Desert', FALSE);
insert into rooms values(13, 7, '701', 'Suite', 320.00, TRUE, 'King', 4, 'Forest', FALSE);
insert into rooms values(14, 7, '702', 'Deluxe', 270.00, TRUE, 'Queen', 3, 'Forest', FALSE);
insert into rooms values(15, 8, '801', 'Single', 125.00, TRUE, 'Queen', 2, 'City', FALSE);
insert into rooms values(16, 8, '802', 'Double', 165.00, TRUE, 'King', 4, 'City', FALSE);
insert into rooms values(17, 9, '901', 'Suite', 310.00, TRUE, 'King', 4, 'Harbor', FALSE);
insert into rooms values(18, 9, '902', 'Deluxe', 260.00, TRUE, 'Queen', 3, 'Harbor', FALSE);
insert into rooms values(19, 10, '1001', 'Single', 140.00, TRUE, 'Queen', 2, 'Hill', FALSE);
insert into rooms values(20, 10, '1002', 'Double', 190.00, TRUE, 'King', 4, 'Hill', FALSE);

/*CASE */
select room_type,room_id,
case when room_type='suite' then room_id
when room_type='Standard' then room_id 
else null end as 
roomsAll from rooms;

/*LIMIT And OFFSET*/
select * from hotel limit 6,10;

/*GROUP BY and HAVING CLAUSE*/
select sum(rating)as total_rates,hotel_name from hotel group by hotel_name having total_rates>4.0;  

/*ORDER BY*/
select * from rooms order by capacity;