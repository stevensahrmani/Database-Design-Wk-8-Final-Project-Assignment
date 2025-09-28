## Question 2: CRUD Application with Node.js or FastAPI

## Objective:
Develop a simple CRUD (Create, Read, Update, Delete) application that interacts with a database.

## Instructions:
1. Choose Node.js (Express) or FastAPI (Python).
2. Connect your application to the database you designed in Question 1 (or design a simpler schema if preferred).
3. Implement CRUD operations for at least two entities (e.g., Students & Courses, Patients & Appointments, Products & Orders).

CREATE DATABASE SchoolDB;
USE SchoolDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100),
    Description TEXT,
    Credits INT
);

CREATE TABLE StudentCourses (
    StudentCourseID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);  
