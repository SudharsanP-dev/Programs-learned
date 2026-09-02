-- Basic SQL Practice Queries
-- Programs-learned repository

CREATE DATABASE college_db;
USE college_db;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    marks INT
);

INSERT INTO students (id, name, age, department, marks) VALUES
(1, 'Arun', 21, 'MCA', 85),
(2, 'Priya', 22, 'MCA', 92),
(3, 'Kumar', 21, 'BCA', 78),
(4, 'Divya', 23, 'BSc CS', 88),
(5, 'Rahul', 22, 'MCA', 75);

-- Display all records
SELECT * FROM students;

-- Select specific columns
SELECT name, department, marks FROM students;

-- Find students with marks greater than 80
SELECT * FROM students WHERE marks > 80;

-- Find MCA students
SELECT * FROM students WHERE department = 'MCA';

-- Sort students by marks in descending order
SELECT * FROM students ORDER BY marks DESC;

-- Count the number of students
SELECT COUNT(*) AS total_students FROM students;

-- Find the highest marks
SELECT MAX(marks) AS highest_marks FROM students;

-- Find the average marks
SELECT AVG(marks) AS average_marks FROM students;

-- Update a student's marks
UPDATE students SET marks = 80 WHERE id = 5;

-- Delete a student
DELETE FROM students WHERE id = 3;
