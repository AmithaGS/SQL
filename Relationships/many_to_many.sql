/*MANY TO MANY*/

create table malls(mall_id INT PRIMARY KEY,mall_name VARCHAR(100),address VARCHAR(255),city VARCHAR(50),
state VARCHAR(50),zip_code VARCHAR(10),country VARCHAR(50),phone_number VARCHAR(15),email VARCHAR(100),
opening_date DATE);
desc malls;
select * from malls;

create table shop(shop_id INT PRIMARY KEY,shop_name VARCHAR(100),owner_name VARCHAR(100),
shop_type VARCHAR(50),phone_number VARCHAR(15),email VARCHAR(100),open_hours VARCHAR(50),close_hours VARCHAR(50),
number_of_employees INT,revenue DECIMAL(10, 2));
desc shop;
select * from shop;

CREATE TABLE mall_shops (mall_id INT,shop_id INT,shop_location VARCHAR(50),lease_start DATE,lease_end DATE,
rent_amount DECIMAL(10, 2),FOREIGN KEY (mall_id) REFERENCES malls(mall_id),FOREIGN KEY (shop_id) REFERENCES shop(shop_id),
PRIMARY KEY (mall_id, shop_id));
desc mall_shops;
select * from mall_shops;

insert into malls values(1, 'Central Mall', '123 Main St', 'New York', 'NY', '10001', 'USA', '123-456-7890', 'contact@centralmall.com', '2010-05-15');
insert into malls values(2, 'Sunrise Mall', '456 Ocean Ave', 'Miami', 'FL', '33101', 'USA', '987-654-3210', 'info@sunrisemall.com', '2012-08-20');
insert into malls values(3, 'Mountain Plaza', '789 Alpine Rd', 'Denver', 'CO', '80201', 'USA', '555-555-5555', 'inquiries@mountainplaza.com', '2015-09-25');
insert into malls values(4, 'City Square', '321 Downtown St', 'Los Angeles', 'CA', '90001', 'USA', '444-444-4444', 'book@citysquare.com', '2018-03-10');
insert into malls values(5, 'Lakeside Mall', '654 Lakeside Dr', 'Chicago', 'IL', '60601', 'USA', '333-333-3333', 'reservations@lakesidemall.com', '2020-11-01');
insert into malls values(6, 'Desert Mall', '987 Sand Rd', 'Phoenix', 'AZ', '85001', 'USA', '222-222-2222', 'welcome@desertmall.com', '2011-02-14');
insert into malls values(7, 'Forest Plaza', '159 Greenway St', 'Seattle', 'WA', '98101', 'USA', '111-111-1111', 'inquiries@forestplaza.com', '2013-06-30');
insert into malls values(8, 'Metro Mall', '753 Center St', 'San Francisco', 'CA', '94101', 'USA', '777-777-7777', 'service@metromall.com', '2014-12-22');
insert into malls values(9, 'Harbor Square', '951 Harbor Dr', 'Boston', 'MA', '02101', 'USA', '888-888-8888', 'contact@harborsquare.com', '2016-07-04');
insert into malls values(10, 'Uptown Mall', '357 Summit Rd', 'Nashville', 'TN', '37201', 'USA', '999-999-9999', 'info@uptownmall.com', '2017-09-18');
insert into malls values(11, 'Royal Shopping', '123 Kingsway', 'London', 'LN', 'EC1A 1BB', 'UK', '020-1234-5678', 'royal@shopping.com', '2005-11-25');
insert into malls values(12, 'Sunset Boulevard', '456 Beachside', 'Sydney', 'NSW', '2000', 'Australia', '+61-2-1234-5678', 'boulevard@sunset.com', '2011-01-15');
insert into malls values(13, 'Maple Center', '789 Maple St', 'Toronto', 'ON', 'M5H 2N2', 'Canada', '+1-416-123-4567', 'maple@center.com', '2012-03-28');
insert into malls values(14, 'Oriental Bazaar', '321 Pearl St', 'Shanghai', '200010', 'China','gokak','6-21-1234-5678', 'bazaar@oriental.com', '2014-05-05');
insert into malls values(15, 'Alpine Market', '654 Snowy Rd', 'Zurich', '8001', 'Swizerand', 'hongkong','+41-44-123-4567', 'market@alpine.com', '2016-08-20');
insert into malls values(16, 'Coconut Plaza', '987 Palm Blvd', 'Honolulu', 'HI', '96801', 'USA', '333-333-3333', 'contact@coconutplaza.com', '2013-12-10');
insert into malls values(17, 'Savannah Plaza', '159 River St', 'Savannah', 'GA', '31401', 'USA', '111-111-1111', 'info@savannahplaza.com', '2015-07-01');
insert into malls values(18, 'Urban Market', '753 Urban Rd', 'Dallas', 'TX', '75201', 'USA', '777-777-7777', 'service@urbanmarket.com', '2016-11-15');
insert into malls values(19, 'Ocean View', '951 Breeze Rd', 'Santa Monica', 'CA', '90401', 'USA', '888-888-8888', 'view@ocean.com', '2018-05-22');
insert into malls values(20, 'Mountain Heights', '357 Peak St', 'Aspen', 'CO', '81611', 'USA', '999-999-9999', 'heights@mountain.com', '2019-09-30');

insert into shop values(1, 'Fashion Hub', 'Alice Johnson', 'Clothing', '123-111-2222', 'contact@fashionhub.com', '09:00', '21:00', 10, 150000.00);
insert into shop values(2, 'Tech World', 'Bob Smith', 'Electronics', '234-222-3333', 'info@techworld.com', '10:00', '22:00', 15, 250000.00);
insert into shop values(3, 'Foodies Corner', 'Charlie Brown', 'Restaurant', '345-333-4444', 'inquiries@foodiescorner.com', '11:00', '23:00', 20, 200000.00);
insert into shop values(4, 'Gadget Zone', 'David Lee', 'Electronics', '456-444-5555', 'sales@gadgetzone.com', '09:00', '21:00', 12, 300000.00);
insert into shop values(5, 'Book Nook', 'Emma Davis', 'Books', '567-555-6666', 'service@booknook.com', '10:00', '20:00', 8, 100000.00);
insert into shop values(6, 'Toy Land', 'Fiona White', 'Toys', '678-666-7777', 'fun@toyland.com', '09:00', '21:00', 5, 120000.00);
insert into shop values(7, 'Home Comforts', 'George Martin', 'Furniture', '789-777-8888', 'home@comforts.com', '10:00', '22:00', 18, 350000.00);
insert into shop values(8, 'Beauty Bliss', 'Hannah Moore', 'Cosmetics', '890-888-9999', 'beauty@bliss.com', '10:00', '21:00', 7, 180000.00);
insert into shop values(9, 'Sports Arena', 'Ian Brown', 'Sports', '901-999-0000', 'sports@arena.com', '09:00', '22:00', 20, 400000.00);
insert into shop values(10, 'Green Grocer', 'Jack Wilson', 'Grocery', '123-000-1111', 'grocer@green.com', '08:00', '20:00', 12, 150000.00);
insert into shop values(11, 'Elegant Attire', 'Karen Lee', 'Clothing', '234-111-2222', 'attire@elegant.com', '10:00', '21:00', 14, 140000.00);
insert into shop values(12, 'Gourmet Delights', 'Liam Lewis', 'Restaurant', '345-222-3333', 'delights@gourmet.com', '12:00', '23:00', 22, 220000.00);
insert into shop values(13, 'Techno Store', 'Mia Young', 'Electronics', '456-333-4444', 'store@techno.com', '11:00', '23:00', 16, 270000.00);
insert into shop values(14, 'Paper & Pen', 'Noah Taylor', 'Stationery', '567-444-5555', 'pen@paper.com', '09:00', '19:00', 6, 90000.00);
insert into shop values(15, 'Pet Palace', 'Olivia Brown', 'Pets', '678-555-6666', 'palace@pets.com', '10:00', '21:00', 10, 130000.00);
insert into shop values(16, 'Vintage Finds', 'Patrick Hall', 'Antiques', '789-666-7777', 'finds@vintage.com', '09:00', '21:00', 4, 110000.00);
insert into shop values(17, 'Footwear Hub', 'Quincy Scott', 'Shoes', '890-777-8888', 'hub@footwear.com', '10:00', '21:00', 12, 160000.00);
insert into shop values(18, 'Kid\'s Planet', 'Rachel King', 'Kids', '901-888-9999', 'planet@kids.com', '09:00', '20:00', 10, 120000.00);
insert into shop values(19, 'The Gadget Place', 'Steven Hill', 'Electronics', '123-999-0000', 'place@gadget.com', '10:00', '22:00', 18, 320000.00);
insert into shop values(20, 'Bakehouse', 'Tina Clark', 'Bakery', '234-000-1111', 'house@bake.com', '07:00', '19:00', 8, 140000.00);

insert into mall_shops values(1, 1, '1st Floor', '2022-01-01', '2023-01-01', 5000.00);
insert into mall_shops values(1, 2, '2nd Floor', '2022-02-01', '2023-02-01', 6000.00);
insert into mall_shops values(2, 3, '1st Floor', '2022-03-01', '2023-03-01', 7000.00);
insert into mall_shops values(2, 4, '2nd Floor', '2022-04-01', '2023-04-01', 8000.00);
insert into mall_shops values(3, 5, '1st Floor', '2022-05-01', '2023-05-01', 4500.00);
insert into mall_shops values(3, 6, '2nd Floor', '2022-06-01', '2023-06-01', 5500.00);
insert into mall_shops values(4, 7, '1st Floor', '2022-07-01', '2023-07-01', 9000.00);
insert into mall_shops values(4, 8, '2nd Floor', '2022-08-01', '2023-08-01', 9500.00);
insert into mall_shops values(5, 9, '1st Floor', '2022-09-01', '2023-09-01', 10000.00);
insert into mall_shops values(5, 10, '2nd Floor', '2022-10-01', '2023-10-01', 11000.00);
insert into mall_shops values(6, 11, '1st Floor', '2022-11-01', '2023-11-01', 12000.00);
insert into mall_shops values(6, 12, '2nd Floor', '2022-12-01', '2023-12-01', 13000.00);
insert into mall_shops values(7, 13, '1st Floor', '2023-01-01', '2024-01-01', 14000.00);
insert into mall_shops values(7, 14, '2nd Floor', '2023-02-01', '2024-02-01', 15000.00);
insert into mall_shops values(8, 15, '1st Floor', '2023-03-01', '2024-03-01', 16000.00);
insert into mall_shops values(8, 16, '2nd Floor', '2023-04-01', '2024-04-01', 17000.00);
insert into mall_shops values(9, 17, '1st Floor', '2023-05-01', '2024-05-01', 18000.00);
insert into mall_shops values(9, 18, '2nd Floor', '2023-06-01', '2024-06-01', 19000.00);
insert into mall_shops values(10, 19, '1st Floor', '2023-07-01', '2024-07-01', 20000.00);
insert into mall_shops values(10, 20, '2nd Floor', '2023-08-01', '2024-08-01', 21000.00);

/*CASE */
select mall_name,mall_id,
case when mall_name='city square' then mall_id 
when mall_name='Desert mall' then mall_id 
else null end as 
Allmalls from malls;

/*LIMIT And OFFSET*/
select * from mall_shops limit 4,20;

/*GROUP BY and HAVING CLAUSE*/
select sum(open_hours)as average_hours,shop_name from shops group by shop_name having average_hours<'10:00';  

/*ORDER BY*/
select * from shops order by number_of_employees;
