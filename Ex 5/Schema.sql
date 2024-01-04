-- Create Table Department

CREATE TABLE Department (
   Dname VARCHAR(50) PRIMARY KEY,
   Building VARCHAR(30) NOT NULL CHECK (Building in ('A Block', 'B Block', 'C Block', 'D Block')),
   Budget INT NOT NULL CHECK (Budget > 0)
);

-- Create Table Instructor

CREATE TABLE Instructor (
   IID INT PRIMARY KEY NOT NULL,
   Iname VARCHAR(50) NOT NULL,
   Dname VARCHAR(30),
   Salary INT(20) NOT NULL,
   FOREIGN KEY (Dname) REFERENCES Department (Dname) ON DELETE SET NULL
);

-- Create Table Student

CREATE TABLE Student (
   SID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
   Sname VARCHAR(50) NOT NULL,
   Dname VARCHAR(30),
   Total_credit INT(10) NOT NULL CHECK (Total_credit > 0),
   FOREIGN KEY (Dname) REFERENCES Department (Dname) ON DELETE SET NULL
);

-- Insert into Department

INSERT INTO Department (Dname, Building, Budget)
VALUES ('CSE', 'A Block', 100000),
       ('AIDS', 'A Block', 100000),
       ('IT', 'B Block', 80000),
       ('ECE', 'C Block', 70000),
       ('EEE', 'D Block', 90000)
;

-- Insert into Instructor

INSERT INTO Instructor (IID, Iname, Dname, Salary)
VALUES (01, 'Princy', 'CSE', 100000),
       (02, 'Swathi', 'AIDS', 90000),
       (03, 'Arun', 'IT', 85000),
       (04, 'Shanthi', 'ECE', 80000),
       (05, 'Anushree', 'EEE', 95000)
;

-- Insert into Student

INSERT INTO Student (Sname, Dname, Total_credit)
VALUES ('Sha', 'CSE', 45),
       ('Shree', 'CSE', 50),
       ('Siva', 'AIDS', 50),
       ('Randhini', 'IT', 45),
       ('Priya', 'EEE', 65),
       ('Praveena', 'ECE', 60)
;
