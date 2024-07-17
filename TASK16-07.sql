USE School_System;

CREATE TABLE TeacherDetails(
	TeacherID int PRIMARY KEY,
	TeacherName varchar (30),
	TeacherPhone varchar (30),

);
CREATE TABLE Courses(
	courseID int PRIMARY KEY,
	courseName varchar (30),
);
CREATE TABLE Students(
	StudentID int PRIMARY KEY,
	StudentName varchar (30),
);
CREATE TABLE Teachers(
	TeacherID int,
	courseID int,
	FOREIGN KEY (TeacherID) REFERENCES TeacherDetails(TeacherID),
	FOREIGN KEY (courseID) REFERENCES Courses(courseID),
);


CREATE TABLE Teachers_Courses_Students(
	TeacherID INT,
	courseID INT,
	StudentID INT,
	FOREIGN KEY (TeacherID) REFERENCES TeacherDetails(TeacherID),
	FOREIGN KEY (courseID) REFERENCES Courses(courseID),
	FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
);

-- Insert entries into TeacherDetails table
INSERT INTO TeacherDetails 
VALUES
(1, 'teacher1', '123-456-7890'),
(2, 'teacher2', '234-567-8901'),
(3, 'teacher3', '345-678-9012'),
(4, 'teacher4', '456-789-0123'),
(5, 'teacher5', '567-890-1234');

-- Insert entries into Courses table
INSERT INTO Courses 
VALUES
(1, 'Mathematics'),
(2, 'Science'),
(3, 'History'),
(4, 'Art'),
(5, 'Music');

-- Insert entries into Students table
INSERT INTO Students 
VALUES
(1, 'student1'),
(2, 'student2'),
(3, 'student3'),
(4, 'student4'),
(5, 'student5');

-- Insert entries into Teachers table
INSERT INTO Teachers 
VALUES
(1, 1),
(1, 2),
(3, 3),
(4, 4),
(4, 5);

-- Insert entries into Teachers_Courses_Students table
INSERT INTO Teachers_Courses_Students 
VALUES
(1, 1, 1),
(1, 2, 1),
(3, 3, 2),
(4, 4, 3),
(4, 5, 3),
(1, 2, 3),
(1, 1, 4),
(3, 3, 5),
(4, 5, 1),
(4, 1, 2);





