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
insert into customer values ('Raju','Delhi',1234567898,'raju@gmail,com',34,'AC','Indian')
insert into customer values ('Raju','Delhi',1234567898,'raju@gmail,com',34,'AC','Indian')
insert into customer values ('Raju','Delhi',1234567898,'raju@gmail,com',34,'AC','Indian')
insert into customer values ('Raju','Delhi',1234567898,'raju@gmail,com',34,'AC','Indian')
insert into customer values ('Raju','Delhi',1234567898,'raju@gmail,com',34,'AC','Indian')
insert into customer values ('Raju','Delhi',1234567898,'raju@gmail,com',34,'AC','Indian')
insert into customer values ('Raju','Delhi',1234567898,'raju@gmail,com',34,'AC','Indian')
insert into customer values ('Raju','Delhi',1234567898,'raju@gmail,com',34,'AC','Indian')
insert into customer values ('Raju','Delhi',1234567898,'raju@gmail,com',34,'AC','Indian')

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
insert into flight values ('AC',400,'21/08/2000','chennai','delhi','kashmir')
insert into flight values ('AC',400,'21/08/2000','chennai','delhi','kashmir')
insert into flight values ('AC',400,'21/08/2000','chennai','delhi','kashmir')
insert into flight values ('AC',400,'21/08/2000','chennai','delhi','kashmir')
insert into flight values ('AC',400,'21/08/2000','chennai','delhi','kashmir')
insert into flight values ('AC',400,'21/08/2000','chennai','delhi','kashmir')
insert into flight values ('AC',400,'21/08/2000','chennai','delhi','kashmir')
insert into flight values ('AC',400,'21/08/2000','chennai','delhi','kashmir')
insert into flight values ('AC',400,'21/08/2000','chennai','delhi','kashmir')

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
insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')
insert into employee values ('shalu',9876543210,'shalu@gmail.com','pilot',5000000,45,90,'indian')

select * from employee

create table booking(
b_id int primary key identity,
c_id int,
f_id int,
trans_amount int)

insert into booking values (8000)
insert into booking values (8000)
insert into booking values (8000)
insert into booking values (8000)
insert into booking values (8000)
insert into booking values (8000)
insert into booking values (8000)
insert into booking values (8000)
insert into booking values (8000)
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
insert into booking values (8000)


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


