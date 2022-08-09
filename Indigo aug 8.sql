create database airline
use airline

create table customer(
c_id int primary key identity,
c_name varchar(20),
c_addrss varchar(20),
c_phone numeric(10),
c_email varchar(20),
age int,
f_type varchar(20),
nationality varchar(20))

insert into customer values ('Raju','Delhi',1234567898,'raju@gmail,com',34,'AC','Indian')
insert into customer values ('Rahul','Goa',1234567898,'rahul@gmail,com',36,'AC','Indian')
insert into customer values ('Ram','ayodhya',1234567898,'ram@gmail,com',45,'AC','Indian')
insert into customer values ('shyam','banaras',1234567898,'shyam@gmail,com',87,'AC','Indian')
insert into customer values ('gopal','Delhi',1234567898,'gopal@gmail,com',98,'AC','Indian')
insert into customer values ('kishor','chennai',1234567898,'kishor@gmail,com',34,'AC','Indian')
insert into customer values ('modi','vellore',1234567898,'modi@gmail,com',14,'AC','Indian')
insert into customer values ('amit','goa',1234567898,'amit@gmail,com',36,'AC','Indian')
insert into customer values ('prem','ranchi',1234567898,'prem@gmail,com',55,'AC','Indian')
insert into customer values ('sonia','patna',1234567898,'sonia@gmail,com',34,'AC','Indian')

select * from customer

create table flight(
f_id int primary key identity(100,1),
f_type varchar(20),
capacity int,
f_date varchar(20),
departure varchar(20),
arrival varchar(20),
f_route varchar(20))

insert into flight values ('AC',400,'21/08/2000','chennai','delhi','kashmir')
insert into flight values ('AC',500,'12/07/2000','pune','hyderabad','bhopal')
insert into flight values ('AC',800,'25/06/2000','ranchi','pune','delhi')
insert into flight values ('AC',200,'16/07/2000','goa','delhi','kolkata')
insert into flight values ('AC',300,'27/04/2000','banars','mumbai','pune')
insert into flight values ('AC',400,'11/05/2000','konchi','howrah','jaipur')
insert into flight values ('AC',700,'01/05/2000','patna','nellore','nellore')
insert into flight values ('AC',100,'31/02/2000','jaipur','goa','delhi')
insert into flight values ('AC',400,'22/08/2000','kashmir','delhi','kashmir')
insert into flight values ('AC',500,'15/02/2000','chennai','indore','indore')

select * from flight


create table employee(
emp_id int primary key identity(1000,1),
emp_name varchar(20),
emp_phone numeric(10),
emp_mail varchar(20),
department varchar(20),
salary numeric(10),
age int,
wt int,
nationality varchar(20))

insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('raja',9876543210,'raja@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('prince',9876543210,'prince@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('vishal',9876543210,'vishal@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('chand',9876543210,'chand@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('amit',9876543210,'amit@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('mohit',9876543210,'mohit@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('dharam',9876543210,'dharam@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('bittu',9876543210,'bittu@gmail.com','pilot',5000000,45,90,'indian')

select * from employee

create table booking(
b_id int primary key identity,
c_id int,
f_id int,
trans_amount int)

insert into booking values (8000)
insert into booking values (9000)
insert into booking values (7500)
insert into booking values (5500)
insert into booking values (4500)
insert into booking values (8500)
insert into booking values (9300)
insert into booking values (9800)
insert into booking values (3500)
insert into booking values (8000)

create table booking_log(
loginid int,
b_id int,
c_id int,
operation varchar(20),
updateddate date)

create trigger Booking_done
on booking
for insert
as
insert into booking_log(b_id,c_id,operation,updateddate)
select b_id,c_id,'Booking Done',GETDATE() FROM inserrted

insert into booking values (8000)
insert into booking values (7700)


create procedure sp_customerbooking
as
begin
Select b.b_id, b.c_id, b.f_id, c.c_name 
from customer c
right join bookig b
on c.c_id = b.c_id
end
exec sp_customerbooking

create view flight_assignment
as
select c.c_id,c.c_name,f.f_id 
from customer c
right join flight f
on c.f_type= f.f_type
having f.departure = f.f_route
select * from flight_assignment


