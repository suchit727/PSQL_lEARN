--Drop table  address1 if exist
Drop table address1;

--Drop table person1 if exist 
Drop table person1;

--Address1 Table with sequence 
create table address1(address_id int primary key default nextval('address_seq_add_id'), address1 varchar(50) ,
                address2 varchar(50),
                city varchar(50),
                state varchar(50),
                pincode int);
                
-- Inserting 10 records in address1
insert into address1(address1,address2,city,state,pincode) values('sector14 mohan alteza','near bmw showroom','patna','uttar pradesh','400077');
insert into address1(address1,address2,city,state,pincode) values('blue heaven appt','near dominoz','badlapur','maharashtra','400080');
insert into address1(address1,address2,city,state,pincode) values('002 godrej hill','shivaji chowk','kalyan','maharashtra','400090');
insert into address1(address1,address2,city,state,pincode) values('sector 20 vasant valley','near mcd','panvel','maharashtra','400010');
insert into address1(address1,address2,city,state,pincode) values('006 alka prime apt','burger factory','mumbai','maharashtra','400020');
insert into address1(address1,address2,city,state,pincode) values('teen haath naka','cadbury junction','thane','maharashtra','462001');
insert into address1(address1,address2,city,state,pincode) values('004 mohan alteza','near honda showroom','indore','madhya pradesh','450331');
insert into address1(address1,address2,city,state,pincode) values('sector 30 ','skyline heights','vashi','maharashtra','402107');
insert into address1(address1,address2,city,state,pincode) values('shiv shambho','Devipada','mumbai','maharashtra','400066');
insert into address1(address1,address2,city,state,pincode) values('sadguru nagar','Devipada','mumbai','maharashtra','400066');

--Using select script for checking if records inserted correctly or not;
select * from address1;

--Person1 table with sequence and reference from address1 tables address_id
create table person1(p_id int primary key ,
                     first_name varchar(50) not null,
                     last_name varchar(50) not null,
                     add_id int default nextval('person1_seq_add_id') ,
                     foreign key(add_id) references address1(address_id));
                

--Inserting 10 records in person1
insert into person1(p_id,first_name,last_name) values(1,'suchit','khadtar');
insert into person1(p_id,first_name,last_name) values(2,'yash','goyal');
insert into person1(p_id,first_name,last_name) values(3,'sanket','kadam');
insert into person1(p_id,first_name,last_name) values(4,'sanket','mishra');
insert into person1(p_id,first_name,last_name) values(5,'Akhil','Tawde'),
(6,'sakshi','sawant'),
(7,'piya','sawant'),
(8,'abhi','yadav'),
(9,'suraj','lokhande'),
(10,'moksha','mehata');

--Using select script for checking if records inserted correctly or not
select * from person1;

--Drop table person2 if exists
drop table person2;

--Drop table address2 if exists
drop table address2;

--Create table person2
create table person2(id int primary key default nextval('person1_seq_per2_id'),
                     first_name varchar(50) not null,
                    last_name varchar(50) not null);
             
 ----Inserting 5 records in person2
insert into person2(first_name ,last_name) values('suchit','khadtar');
insert into person2(first_name ,last_name) values('pranay','pawar');
insert into person2(first_name ,last_name) values('suraj','lokhande');
insert into person2(first_name ,last_name) values('sakshi','sawant');
insert into person2(first_name ,last_name) values('moksha','mehata');

--Using select script for checking if records inserted correctly or not
select * from person2;

--Create table address2
create table address2(id int ,
                      address_line1 varchar(50),
                     address_line2 varchar(50),
                      city varchar(50),
                       zipcode varchar(50),
                     foreign key(id) references person2(id));

--Inserting 5 records in address2
insert into address2 values(1000, 'Khadakpada', 'near Pulse Hospital', 'Kalyan', 421301);
insert into address2 values(1001, 'Tisgaon Naka', 'near Mcd', 'Kalyan', 421306);
insert into address2 values(1002, 'Metro Mall', 'near Andheri Station', 'Andheri', 402001);
insert into address2 values(1003, 'Cinemax', 'Landmark Rambuag', 'Mumbai', 400301);
insert into address2 values(1004, 'Rambuag', 'J.M Road', 'Navi Mumbai', 400506);


--Using select script for checking if records inserted correctly or not
select * from address2