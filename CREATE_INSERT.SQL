--Create table
create table persons (id primary key default nextval(seq_persons_id),
first_name varchar(50) not null,
last_name varchar(50) not null,
gender varchar(7) not null,
city varchar(20) not null,
country varchar(50) not null);

/*or*/

create table persons (id bigserial not null primary key ,
first_name varchar(50) not null,
last_name varchar(50) not null,
gender varchar(7) not null,
city varchar(20) not null,
country varchar(50) not null);

--insert query

insert into persons values(1,'suchit','khadtar','male','mumbai','India');
insert into persons values(2,'pranay','pawar','male','thane','India');
insert into persons values(3,'suraj','lokhande','male','thane','India');
insert into persons values(4,'priya','mestry','female','thane','India');
insert into persons values( 5,'Akhil','Tawde','male','kolkata','India');
insert into persons values( 6,'sakshi','sawant','female','Jaipur','India');
insert into persons values( 7,'riya','sawant','female','Bangaluru','India');
insert into persons values( 8,'abhi','yadav','male','Bangaluru','India');
insert into persons values( 9,'suru','mena','male','Hyderabad','India');
insert into persons values( 10,'moksha','mehata','female','surat','India');




--Create table person
create table person(id int primary key default nextval('per_seq'),first_name varchar(20) NOT NULL,last_name varchar(20) NOT NULL,address1 varchar(40),address2 varchar(40),city varchar(30),state varchar(20));

--insert table person
insert into person values(nextval('per_seq'),'prem','patil','blue heaven appt','near dominoz','badlapur','maharashtra');

insert into person values(nextval('per_seq'),'kunal','dinkar','002 godrej hill','shivaji chowk','kalyan','maharashtra');
insert into person values(nextval('per_seq'),'ramesh','jadhav','sector 20 vasant valley','near mcd','panvel','maharashtra');
insert into person values(nextval('per_seq'),'nigel','daniel','006 alka prime apt','burger factory','anjuna','goa');
insert into person values(nextval('per_seq'),'avani','sathe','teen haath naka','cadbury junction','thane','maharashtra');
insert into person values(nextval('per_seq'),'tripti','shrivastav','004 mohan alteza','near honda showroom','indore','madhya pradesh');
insert into person values(nextval('per_seq'),'vaibhav','jadhav','sector','skyline heights','vashi','maharashtra');
insert into person values(nextval('per_seq'),'yash','goyal',null,null,null,null);
insert into person values(nextval('per_seq'),'sakshi','more','sector14 mohan alteza','near bmw showroom','patna','uttar pradesh');
insert into person values(nextval('per_seq'),'suchit','khadtar',null,null,null,null);

--select person
select * from person;
