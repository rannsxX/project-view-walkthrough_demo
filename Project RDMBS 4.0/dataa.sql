-- Create Database
CREATE DATABASE Rannx;

-- Use Database
USE Rannx;

CREATE TABLE students
(
  rollno INT PRIMARY KEY,
  name VARCHAR(62),
  marks INT NOT NULL,
  grade VARCHAR(12),
  city VARCHAR(16)
)
INSERT INTO students
  (rollno, name, marks, grade, city)
VALUES
  (101, 'Raaz', 72, 'A', 'Baneswor'),
  (102, 'Ramesh', 65, 'B', 'Lalitpur'),
  (103, 'Sita', 85, 'A', 'Kathmandu'),
  (104, 'Hari', 88, 'C', 'Pokhara'),
  (105, 'Gita', 99, 'A', 'Koteshwor'),
  (106, 'Ram', 66, 'D', 'Hetauda');

SELECT *
FROM students;


SELECT AVG(marks) AS Average_Marks
FROM students;


SELECT name, marks
FROM students
WHERE marks > 67;


SELECT name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
FROM students
);

-- Show tables (SQL Server)
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';