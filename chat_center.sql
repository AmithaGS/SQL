use HOMEWORK;
create table chat_center(center_id int not null,center_name varchar(20) unique,
chat_items_no int not null,items_name varchar(20)unique,chat_location varchar(30),
items_price bigint,no_of_items int,constraint items_chk check(no_of_items>1),
quality varchar(20),ratings int,constraint rating_chk check(ratings>1),is_clean boolean);

insert into chat_center values(1,"anu chat center",101,"golgoppa","chitradurga",30,
50,"good",5,true);
insert into chat_center values(2,"chandan chat center",102,"panipuri","jagalur",20,
20,"average",3,true);
insert into chat_center values(3,"vijay chat center",103,"masalpuri","bhadravathi",35,
60,"good",5,true);
insert into chat_center values(4,"arun chat center",104,"girmit","shimogga",50,
30,"poor",2,false);
insert into chat_center values(5,"keerti chat center",105,"churmuri","mandya",40,
60,"good",4,true);
insert into chat_center values(6,"sushma chat center",106,"gobimanchurian","rajajinagara",70,
80,"average",4,false);
insert into chat_center values(7,"anand chat center",107,"mashroom manhurian","vijayanagara",80,
40,"good",4,true);
insert into chat_center values(8,"kishan chat center",108,"pizza","btm",120,
50,"poor",2,false);
insert into chat_center values(9,"king chat center",109,"maggi","bidar",60,
30,"good",5,true);
insert into chat_center values(10,"ashok chat center",110,"masala maggi","gadag",80,
80,"average",4,false);
insert into chat_center values(11,"radika chat center",111,"vada pav","harihara",55,
20,"good",5,true);
insert into chat_center values(12,"ratan chat center",112,"egg rice","sringeri",65,
30,"average",3,true);
insert into chat_center values(13,"half chat center",113,"masurum rice","rr nagara",75,
40,"good",5,true);
insert into chat_center values(14,"pizza chat center",114,"zeera rice","jalahalli",125,
50,"poor",2,false);
insert into chat_center values(15,"sam chat center",115,"gobi rice","nelamangala",135,
60,"good",4,true);
insert into chat_center values(16,"manju chat center",116,"merchi","nagasandra",170,
70,"average",4,false);
insert into chat_center values(17,"area adda",117,"combo pizza","banashankari",180,
40,"good",4,true);
insert into chat_center values(18,"city adda",118,"pav bajji","hosahalli",90,
50,"poor",2,true);
insert into chat_center values(19,"vadji chat",119,"ice cream","magadi road",300,
30,"good",5,true);
insert into chat_center values(20,"masala chat",120,"dhahi puri","mg road",35,
80,"average",4,false);

alter table chat_center modify column items_name varchar(20) not null;
alter table chat_center add constraint chat_loca_uni unique(chat_location);
alter table chat_center add constraint chat_items_chk check(chat_items_no>=101 and 
chat_items_no<=120);
alter table chat_center add constraint new_rating_chk check(ratings>1 and 
ratings<=5);

select * from chat_center;
desc chat_center;