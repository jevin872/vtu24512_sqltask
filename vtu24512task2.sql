CREATE DATABASE CollegeDB;
USE CollegeDB;
-- 2. Create Tables
-- Student Table
CREATE TABLE Student (
    VTU_Number VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Phone VARCHAR(15),
    Department VARCHAR(30)
);
-- Course Table
CREATE TABLE Course (
    Course_Code VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(50),
    Faculty_Id VARCHAR(20),
    Student_ID VARCHAR(20),
    Faculty_Email VARCHAR(50),
    FOREIGN KEY (Student_ID) REFERENCES Student(VTU_Number)
);
-- 3. Insert Minimum 5 Records
-- Insert Records into Student Table
INSERT INTO Student VALUES
('1VTU20CS001', 'Amit', 'amit@gmail.com', '9876543210', 'CSE'),
('1VTU20CS002', 'Bhavya', 'bhavya@gmail.com', '9876543211', 'CSE'),
('1VTU20EC003', 'Charan', 'charan@gmail.com', '9876543212', 'ECE'),
('1VTU20ME004', 'Divya', 'divya@gmail.com', '9876543213', 'ME'),
('1VTU20CS005', 'Esha', 'esha@gmail.com', '9876543214', 'CSE');
-- Insert Records into Course Table
INSERT INTO Course VALUES
('CS101', 'DBMS', 'F001', '1VTU20CS001', 'dbms@college.com'),
('CS102', 'OS', 'F002', '1VTU20CS002', 'os@college.com'),
('EC101', 'Signals', 'F003', '1VTU20EC003', 'signals@college.com'),
('ME101', 'Thermodynamics', 'F004', '1VTU20ME004', 'thermo@college.com'),
('CS103', 'CN', 'F005', '1VTU20CS005', 'cn@college.com');

