use aaft;
DROP TABLE IF EXISTS Classes;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Teachers;
DROP TABLE IF EXISTS Dept;

CREATE TABLE Dept (
  dept_id INT PRIMARY KEY AUTO_INCREMENT,
  department_name VARCHAR(100) NOT NULL,
  head_teacher_id INT
);

INSERT INTO Dept (department_name, head_teacher_id)
VALUES
('Computer Science', 501),
('Mathematics', 502),
('Physics', 503),
('Chemistry', 504),
('Biology', 505),
('English Literature', 506),
('History', 507),
('Economics', 508),
('Psychology', 509),
('Fine Arts', 510);

CREATE TABLE Teachers (
  teacher_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(120) UNIQUE NOT NULL,
  dept_id INT NOT NULL,
  hire_date DATE,
  FOREIGN KEY (dept_id) REFERENCES Dept(dept_id)
);

INSERT INTO Teachers (teacher_id, first_name, last_name, email, hire_date, dept_id)
VALUES 
(101, 'Harshita', 'Verma', 'harshita.verma@school.edu', '2018-06-10', 1),
(102, 'Hanshika', 'Singh', 'hanshika.singh@school.edu', '2019-07-15', 2),
(103, 'Harsh', 'Patel', 'harsh.patel@school.edu','2020-01-20', 3),
(104, 'Neha', 'Rao', 'neha.rao@school.edu', '2017-09-05', 4),
(105, 'Riya', 'Sharma', 'riya.sharma@school.edu', '2016-08-01', 5),
(106, 'Arjun', 'Mehta', 'arjun.mehta@school.edu','2015-02-12', 6),
(107, 'Pooja', 'Nair', 'pooja.nair@school.edu','2014-04-25', 7),
(108, 'Rahul', 'Iyer', 'rahul.iyer@school.edu', '2013-11-11', 8),
(109, 'Maya', 'Kapoor', 'maya.kapoor@school.edu','2019-03-17', 9),
(110, 'Vikas', 'Chawla', 'vikas.chawla@school.edu', '2021-12-20', 10);


CREATE TABLE Students (
  student_id  VARCHAR(10) PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  dob DATE,
  enrollment_year INT,
  email VARCHAR(120) UNIQUE);
INSERT INTO Students (student_id, first_name, last_name, dob, enrollment_year, email)
VALUES
  ('S001', 'Aarav', 'Sharma', '2007-03-15', 2024, 'aarav.sharma@student.edu'),
  ('S002', 'Isha', 'Patel', '2008-07-10', 2025, 'isha.patel@student.edu'),
  ('S003', 'Vihaan', 'Reddy', '2006-12-05', 2023, 'vihaan.reddy@student.edu'),
  ('S004', 'Anaya', 'Singh', '2007-11-18', 2024, 'anaya.singh@student.edu'),
  ('S005', 'Krishna', 'Nair', '2008-05-09', 2025, 'krishna.nair@student.edu'),
  ('S006', 'Sara', 'Kumar', '2007-02-25', 2024, 'sara.kumar@student.edu'),
  ('S007', 'Aditya', 'Rao', '2006-10-12', 2023, 'aditya.rao@student.edu'),
  ('S008', 'Maya', 'Iyer', '2008-09-03', 2025, 'maya.iyer@student.edu'),
  ('S009', 'Rohan', 'Verma', '2007-06-22', 2024, 'rohan.verma@student.edu'),
  ('S010', 'Diya', 'Kapoor', '2006-01-14', 2023, 'diya.kapoor@student.edu');

CREATE TABLE Courses (
  course_id INT PRIMARY KEY AUTO_INCREMENT,
  dept_id INT NOT NULL,
  course_code VARCHAR(20) NOT NULL UNIQUE,
  title VARCHAR(200) NOT NULL,
  credits DECIMAL(3,1) DEFAULT 3.0,
  FOREIGN KEY (dept_id) REFERENCES Dept(dept_id)
);

INSERT INTO Courses (dept_id, course_code, title, credits)
VALUES
(1, 'CS101', 'Introduction to Programming', 3.0),
(1, 'CS201', 'Data Structures and Algorithms', 3.0),
(1, 'CS301', 'Database Management Systems', 3.0),
(2, 'MATH101', 'Calculus I', 4.0),
(2, 'MATH202', 'Linear Algebra', 3.0),
(3, 'PHY101', 'General Physics', 4.0),
(5, 'BIO101', 'Botany', 3.0),
(5, 'BIO305', 'Zoology', 3.0),
(6, 'ENG101', 'English Composition', 3.0),
(6, 'ENG205', 'Creative Writing', 3.0);

CREATE TABLE Classes (
  class_id INT PRIMARY KEY AUTO_INCREMENT,
  course_id INT NOT NULL,
  teacher_id INT NOT NULL,
  term VARCHAR(20) NOT NULL,
  capacity INT DEFAULT 30,
  status VARCHAR(20) DEFAULT 'Open',
  FOREIGN KEY (course_id) REFERENCES Courses(course_id),
  FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

INSERT INTO Classes (course_id, teacher_id, term, capacity, status)
VALUES
(1, 101, 'Spring 2025', 40, 'Open'),
(1, 101, 'Fall 2025', 35, 'Open'),
(2, 102, 'Spring 2025', 40, 'Open'),
(3, 103, 'Spring 2025', 45, 'Open'),
(3, 103, 'Fall 2025', 40, 'Open'),
(4, 104, 'Spring 2025', 35, 'Open'),
(5, 105, 'Spring 2025', 30, 'Open'),
(6, 106, 'Spring 2025', 30, 'Open'),
(7, 107, 'Fall 2025', 30, 'Open'),
(8, 108, 'Spring 2025', 25, 'Open');
drop table rooms;
CREATE TABLE Rooms (      
  room_id INT PRIMARY KEY,
  building VARCHAR(50),
  room_number VARCHAR(10),
  capacity INT
 );

INSERT INTO Rooms (room_id, building, room_number, capacity)
VALUES
(1, 'Science Block', 'S101', 40),
(2, 'Science Block', 'S102', 35),
(3, 'Main Building', 'M201', 50),
(4, 'Main Building', 'M202', 45),
(5, 'Main Building', 'M203', 40),
(6, 'Arts Block', 'A101', 30),
(7, 'Arts Block', 'A102', 25),
(8, 'Commerce Block', 'C101', 50),
(9, 'Library Wing', 'L201', 20),
(10, 'Library Wing', 'L202', 20);





CREATE TABLE Schedules (
  schedule_id INT PRIMARY KEY auto_increment,
  class_id INT NOT NULL,
  room_id INT NOT NULL,
  day_of_week VARCHAR(10) NOT NULL, -- e.g. 'Mon', 'Tue'
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  FOREIGN KEY (class_id) REFERENCES Classes(class_id),
  FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);
INSERT INTO Schedules (class_id, room_id, day_of_week, start_time, end_time)
VALUES
(1, 1, 'Monday', '09:00:00', '10:30:00'),
(2, 2, 'Wednesday', '11:00:00', '12:30:00'),
(3, 3, 'Tuesday', '10:00:00', '11:30:00'),
(4, 4, 'Thursday', '09:00:00', '10:30:00'),
(5, 5, 'Friday', '11:00:00', '12:30:00'),
(6, 6, 'Monday', '14:00:00', '15:30:00'),
(7, 7, 'Tuesday', '09:00:00', '10:30:00'),
(8, 8, 'Wednesday', '13:00:00', '14:30:00'),
(9, 9, 'Thursday', '11:00:00', '12:30:00'),
(10, 10, 'Friday', '09:00:00', '10:30:00');
drop table schedules;

CREATE TABLE Enrollments (
  enrollment_id INT PRIMARY KEY,
  student_id VARCHAR(10) NOT NULL,
  class_id INT NOT NULL,
  enroll_date DATE not null,
  status VARCHAR(20) DEFAULT 'Enrolled', 
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
INSERT INTO Enrollments (enrollment_id ,Class_id, Student_id, enroll_date, status,grade)
VALUES
(1001,1, "S001", '2025-01-10', "Enrolled",'A'),
(1002,2, "S002", '2025-01-10', "Enrolled",'A-'),
(1003,2,"S003" , '2025-01-12', "wait_listed",'B+'),
(1004,2, "S004", '2025-01-12', "dropped",'A'),
(1005,3, "S005", '2025-01-15'," wait-listed",'B');
INSERT INTO Enrollments (enrollment_id ,class_id, student_id, enroll_date,grade)
VALUES
(1006,3, "S006", '2025-01-15', 'A'),
(1007,4, "S007", '2025-01-18', 'B+'),
(1008,4, "S008", '2025-01-18', 'A-'),
(1009,5, "S009", '2025-01-20', 'A'),
(1010,5, "S010", '2025-01-20', 'B');


 CREATE TABLE Assignments (
  assignment_id INT PRIMARY KEY,
  class_id  INT NOT NULL,
  title VARCHAR(200) NOT NULL,
  due_date DATE NOT NULL,
  max_points DECIMAL(5,2) DEFAULT 100,
  FOREIGN KEY (class_id) REFERENCES Classes(class_id));
  
INSERT INTO Assignments (assignment_id, class_id, title, description, due_date, max_points)
VALUES
(1, 1, 'Intro Programming Quiz 1',  '2025-02-05', 25.00),
(2, 1, 'Programming Project 1',  '2025-02-20', 100.00),
(3, 2, 'Data Structures Assignment',  '2025-03-01', 50.00),
(4, 3, 'Database Design Project',  '2025-03-10', 100.00),
(5, 4, 'Calculus I Quiz',  '2025-02-12', 20.00),
(6, 5, 'Linear Algebra Midterm', '2025-03-15', 100.00),
(7, 6, 'Physics Lab Report 1',  '2025-02-25', 30.00),
(8, 7, 'Botany Project', '2025-03-18', 80.00),
(9, 8, 'English Composition Essay',  '2025-02-28', 50.00),
(10, 9, 'Creative Writing Portfolio', '2025-03-20', 100.00);
  
  
 



