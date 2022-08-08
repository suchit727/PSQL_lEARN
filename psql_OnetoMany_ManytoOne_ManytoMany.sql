--One to many Table Creation
create table person3 (id int,
                      first_name varchar(50),
                      last_name varchar(50),
                      primary key(id));

create table address3(id int primary key,
                      address1 varchar(50),
                      address2 varchar(50),
                      city varchar(50),
                      state varchar(50),
                      pincode int,
                      person_id int,
                      foreign key(person_id) references person3(id));
                     
--Inserting records in person3 and  address3(One to Many)
insert into person3 values (1001, 'Raj', 'Bokade');
insert into person3 values (1002, 'Sanket', 'Mishra');
insert into person3 values (1003, 'Suchit', 'Khadtar');
insert into person3 values (1004, 'Vishal', 'Pandey');
insert into person3 values (1005, 'Vaibhav', 'Jadhav');
                  
insert into address3 values (2001, 'A1', 'A12', 'Mumbai', 'Maharashtra', 400066,1001);
insert into address3 values (2002, 'A2', 'A22', 'Mumbai', 'Maharashtra', 400066,1002);
insert into address3 values (2003, 'A3', 'A33', 'Mumbai', 'Maharashtra', 400066,1003);
insert into address3 values (2004, 'A4', 'A44', 'Kalyan', 'Maharashtra', 421301,1004);
insert into address3 values (2005, 'A5', 'A55', 'Kalyan', 'Maharashtra', 421301,1005);

--Many to One Table Creation
create table address4(id int primary key,
                      address1 varchar(50),
                      address2 varchar(50),
                      city varchar(50),
                      state varchar(50),
                      pincode int);
                      
create table person4(id int primary key,
                     first_name varchar(50),
                     last_name varchar(50),
                     address_id int,   
                     foreign key(address_id) references address4(id));
                     
--Inserting records in person4 and  address4(Many to One)

insert into address4 values (1001, 'A1', 'A12', 'Kalyan', 'Maharashtra', 421301);
insert into address4 values (1002, 'A2', 'A22', 'Kalyan', 'Maharashtra', 421301);
insert into address4 values (1003, 'A3', 'A33', 'Mumbai', 'Maharashtra', 400066);
insert into address4 values (1004, 'A4', 'A44', 'Mumbai', 'Maharashtra', 400066);
insert into address4 values (1005, 'A5', 'A55', 'Mumbai', 'Maharashtra', 400066);

insert into person4 values (2001, 'Raj', 'Bokade',1001);
insert into person4 values (2002, 'Sanket', 'Mishra',1001);
insert into person4 values (2003, 'Suchit', 'Khadtar',1002);
insert into person4 values (2004, 'Vishal', 'Pandey',1003);
insert into person4 values (2005, 'Vaibhav', 'Jadhav',1004);

--Many to Many Table Creation                     
create table person5(id int primary key,
                     first_name varchar(20),
                     last_name varchar(20)); 
 

create table address5(id int primary key,
                      address1 varchar(50),
                      address2 varchar(50),
                      city varchar(20),
                      zipcode int);
 

create table person_address(id int primary key default nextval('pa_id_seq'),
                            person_id int,
                            address_id int,
                            foreign key(person_id) references person5(id),
                            foreign key(address_id) references address5(id));

--Inserting records in person5 ,address5 and person_address(Many to Many)

insert into person5 values (1001,'kunal','dinkar'),
(1002,'prem','patil'),
(1003,'vaibhav','jadhav'),
(1004,'yash','goyal'),
(1005,'suchit','khadtar'),
(1006,'rishi','dhotre'),
(1007,'vipul','chaudhari'),
(1008,'chinmay','sandhane');

insert into address5 values(2001,'a11','a12','mumbai',400001),
(2002,'a21','a22','panvel',400002),
(2003,'a31','a32','mumbai',400003),
(2004,'a41','a42','dombivli',400004),
(2005,'a51','a52','thane',400005),
(2006,'a61','a62','airoli',400006),
(2007,'a71','a72','ghansoli',400007),
(2008,'a81','a82','rabale',400008);

select * from address5;
insert into person_address(person_id,address_id) values (1001,2001),
(1002,2002),
(1003,2003),
(1004,2004),
(1005,2001),
(1006,2002),
(1007,2003),
(1008,2004);

