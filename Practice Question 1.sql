create database question1;
use question1;
Create Table company(
emp_id INT  PRIMARY KEY AUTO_INCREMENT,
emp_name VARCHAR (50) not null,
Department VARCHAR(20),
Salary INT default 20000 CHECK (Salary>=20000)
);
INSERT INTO company(emp_name,Department,Salary)
Values(	"Rahul","writing","30000");
INSERT INTO company(emp_name,Department,Salary)
Values ("Ram","hr","88000");
INSERT INTO company(emp_name,Department,Salary)
Values("Raman","hr","56000");

select * from company;
select * from company where salary>50000;
select  * from company where department = "hr";
select distinct department from company;
select * from company order by salary  limit 2;
SELECT * FROM Company WHERE salary BETWEEN 25000 AND 60000 ORDER BY salary;
SELECT department, COUNT(*) AS total_employees FROM Company GROUP BY department;
select * from company order by salary DESC limit 2;
DROP TABLE IF EXISTS Company;



create database question2;
use question2;
create table course (
course_id int Primary Key Auto_Increment,
course_name Varchar(50) Unique,
duration int not null,
fees int default 50000 check(fees<=100000)
);
insert into course (course_name,duration,fees)
values ("datascience","24","70000");
insert into course (course_name,duration,fees)
values ("cyber security ","36","85000");
insert into course (course_name,duration)
values ("datascience","12");
select * from course;
select * from course where duration>=6 ;
select * from course where fees<50000 or duration>12;
select distinct duration from course;
select * from course order by fees DESC limit 1;
SELECT * from course where duration between 6 and 12 order by fees;
select duration, count(*) as course_count from course group by duration;
SELECT * FROM Course ORDER BY fees ASC LIMIT 1;
drop table if exists course;


Create table hospital(
patient_id  int  Primary Key Auto_Increment,
patient_name varchar (50) not null,
disease varchar(30),
bill_amount int default 100000 check (bill_amount <= 200000));
insert into hospital (patient_name,disease,bill_amount)
values
("Rishant","Typhoid", 80000),
("Yahika","dengue",50000);
insert into hospital (patient_name,disease)
values ("natik","malaria");
select * from hospital;
select * from hospital where bill_amount >50000;
select distinct disease from hospital;
select * from hospital where disease = "malaria" or bill_amount<1000;
select * from hospital order by bill_amount DESC LIMIT 2 ;
SELECT * from hospital where bill_amount between 20000 and 80000 ORDER BY bill_amount ASC ;
select disease , count(*) as diease_count from hospital group by disease;
select * from disease order by bill_amount ASC limit 1;
drop table if exists  disease;


CREATE DATABASE employee;
USE employee;
Create table Orders(
order_id int  Primary Key Auto_Increment,
customer_name varchar(50) not null,
product varchar(40),
amount int default 50000 check (amount <= 50000));
insert into orders (customer_name,product,amount)
value 
("harshita","monitor",14000),
("khushi","speaker",5000);
insert into orders (customer_name,product)
value ("hanshika","PC");
select * from orders;
select * from orders where amount > 10000;
select * from orders where  product = "PC" OR amount <5000;
select distinct product from orders;
select * from orders order by amount DESC limit 2;
select * from orders where amount between 8000 and 30000 ;
select product , count(*) as orders_count from orders group by product;
select * from orders order by amount DESC limit 1;
drop table if exists orders;


create database library;
Create table Library2(
book_id int Primary Key Auto_Increment,
title  Varchar(50) unique not null,
author varchar(50),
price int default 600 check (price <= 1500));
insert into Library2 (title,author,price)
values 
("The_Guide","R_K_Narayan",600),
("Harry_potter","J_K_Rolling",1100);
insert into Library2 (title,author)
values ("Verity","Colleen_Hoover");
select * from Library2;
select * from Library2 where price> 1000;
select * from Library2  where  author = "R_K_Narayan" OR price <500;
select distinct authors from Library2;
select * from Library2 order by price DESC limit 2;
select * from Library2 where prize  between 400 and 1000 order by price ;
select books, count(*) as book_count from Library2 group by author;
select * from Library2 order by price ASC limit 1;
drop table if exists Library2;


Create table Teacher(
teacher_id INT Primary Key Auto_Increment,
teacher_name VARCHAR (50) not null,
subject varchar(30),
salary int default 55000 check (salary <= 80000));
insert into Teacher (teacher_name,subject,salary)
values
("harshita","maths",60000),
("khushi","science",67000);
insert into Teacher (teacher_name,subject)
values ("Hanshika","economics");
select * from Teacher;
select * from Teacher where salary> 50000;
select * from Teacher where  subject = "maths"  OR salary<30000;
select distinct subject from Teacher;
select * from Teacher order by salary DESC limit 1;
select * from Teacher where salary between 20000 and 70000 order by salary ASC;
select subject , count(*) as teacher_count from Teacher group by subject;
select * from Teacher order by salary ASC limit 1;
drop table if exists Teacher;

Create table Cinema(
movie_id  int Primary Key Auto_Increment,
movie_name Varchar(50) unique not null,
language varchar(20),
rating int default 5 check (rating <= 10));
insert  into Cinema (movie_name,language,rating)
values 
("dangal","hindi",9),
("chennai_express","hindi",7);
insert into Cinema (movie_name,language)
values ("shark_tales","english");
select * from Cinema;
select * from Cinema where rating > 7;
select * from Cinema where  language  = "hindi"  OR rating<5;
select distinct language from Cinema;
select * from Cinema order by rating  DESC limit 2;
select * from Cinema where rating between 5 and 9 ;
select language , count(*) as movie_count from Cinema group by language;
select * from Cinema order by rating  DESC limit 1;
drop table if exists Cinema;




Create table Bank_Account(
acc_id int Primary Key Auto_Increment,
holder_name Varchar(50) not null,
branch varchar(30),
balance int default 1000 check (balance >= 1000));
insert into Bank_Account (holder_name,branch,balance)
values
("Harshita","Delhi","15000"),
("khushi","Noida",16000);
insert into Bank_Account (holder_name,branch)
values("Rishika","Delhi");
 select * from Bank_Account;
select * from Bank_Account where balance > 20000;
select * from Bank_Account where  branch  = "Delhi"  OR balance<5000 ;
select distinct branch from Bank_Account;
select * from Bank_Account order by balance  DESC limit 2;
select * from Bank_Account where balance between 10000 and 30000 ;
select branch , count(*) as account_count from Bank_Account group by branch ;
select * from Bank_Account order by balance  ASC limit 1;
drop table if exists Bank_Account;





Create table Shop(
item_id int Primary Key Auto_Increment,
item_name Varchar (50) unique not null,
supplier varchar(40),
price int default 10000 check (price <= 20000));
insert into Shop (item_name,supplier,price)
values
("chips","haldiram",15000),
("namkeen","ABC_ltd",10000);
insert into Shop (item_name,supplier)
values ("stationary","apsara");
select * from Shop ;
select * from Shop where salary> 15000;
select * from Shop  where  supplier = "ABC_ltd"  OR salary<5000;
select distinct supplier from Shop ;
select * from Shop  order by price DESC limit 1;
select * from Shop  where salary between 7000 and 16000;
select item_name , count(*) as item_count from Shop  group by supplier;
select * from company order by price limit 1;
drop table if exists Shop ;



Create table Flights (
flight_id int Primary Key Auto_Increment,
airline Varchar(50) not null,
source varchar(30),
destination varchar(30),
fare int default 20000 check (fare <= 20000));
insert into Flights (airline,source,destination,fare)
values
("Air_India","Delhi","mumbai",8000),
("SpiceJet","Gurgaon","mumbai","15000");
insert into Flights (airline,source,destination)
values
(Akasa_Air,"Delhi","gurgaon");
select * from Flights ;
select * from Flights where fare> 10000;
select * from Flights where  source = "Delhi"  OR fare<5000;
select distinct airlines from Flights ;
select * from Flights order by fare DESC limit 2;
select * from Flights  where fare  between 8000 and 15000 order by fare ASC;
select source , count(*) as flight_count from Flights group by sorce;
select * from Flights order by fare DESC limit 1;
drop table if exists Flights;
set sgl_safe_updates = 0;
update Flights
set fare = "0"
where fare = "15000";
select * from Flights;
















