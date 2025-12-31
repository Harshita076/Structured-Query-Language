use employee;

CREATE TABLE employees ( 
emp_id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(50),
 department VARCHAR(30),
 experience INT,
 salary INT,
 bonus int,
 joining_date DATE );
INSERT INTO employees (name, department, experience, salary,bonus,joining_date)
 VALUES 
 ('Amit','IT', 6, 60000,10000, '2018-07-10'), 
 ('Priya', 'HR', 3, 40000,12000, '2021-05-14'), 
 ('Ravi', 'Sales', 8, 75000,14000,'2016-11-23'), 
 ('Sneha', 'IT', 2, 35000, 10000,'2023-02-18'),
 ('Karan', 'Finance', 10, 90000,15000, '2014-04-05'),
('Tina', 'Sales', 5, 55000,11000,'2019-09-12');

select * from employees;
select * from employees where department = "IT";
set sql_safe_updates=0;
 update employees set bonus=bonus*1.20 where salary>70000;
 select name,salary, case
 when salary>=80000 then 'High'
 when salary between 50000 and 80000 then 'Medium'
 else 'Low'
 end as level from employees;
  select department,avg(bonus) from employees group by department;
  select department,avg(bonus) from employees group by department having avg(bonus)>4000;
 select department,sum(salary+bonus) from employees group by department;
 update employees set salary=salary*1.10 where department='Finance';
 select max(salary),min(salary) from employees;
 select * from employees order by bonus desc;
 select department,count(*) from employees group by department having count(*)>1;
 
 
 
 CREATE TABLE students ( 
 student_id INT PRIMARY KEY AUTO_INCREMENT, 
 name VARCHAR(50),
 course VARCHAR(20), 
 marks INT,
 attendance INT,
 grade VARCHAR(1) ); 
  INSERT INTO students (name, course, marks, attendance, grade) 
  VALUES
('Aarav', 'Maths', 85, 90, 'A'),
('Riya', 'Science', 72, 88, 'B'),
('Kabir', 'English', 60, 70, 'C'),
('Neha', 'Maths', 95, 92, 'A'), 
('Rahul', 'Science', 50, 65, 'D');
 select * from students where course='Maths';
 set sql_safe_updates=0;
 update students set marks=marks*1.2 where attendance>75;
 select name,marks, case
 when marks>= 90 then 'High'
 when marks between 70 and 90 then 'Medium'
 else 'Low'
 end as level from students;
 select marks,avg(marks) from students group by marks;
 select attendance,avg(attendance) from students group by attendance having avg(attendance)>75;
 select course,sum(marks) from students group by course;
 update students set marks=marks*1.20 where course='Maths';
 select max(grade),min(grade) from students;
 select * from students order by grade desc;
 select grade,count(*) from students group by grade having count(*)>1;
 
 
 
 
 
 

 
 
 
 
