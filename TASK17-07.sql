CREATE TABLE Authors (
	authorID INT PRIMARY KEY IDENTITY(1,1),
	authorName varchar(30)

);
CREATE TABLE Sections (
	sectionID varchar (20) primary key
);
CREATE TABLE Categories (
	CategoriesID varchar (20) primary key,
	sectionID varchar (20),
	FOREIGN KEY (sectionID) REFERENCES Sections(sectionID)
);
CREATE TABLE BOOKS(
	BookID INT PRIMARY KEY IDENTITY(1,1),
	authorID INT,
	CategoriesID varchar (20),
	BookName varchar (50),
	copies varchar(20),
	FOREIGN KEY (authorID) REFERENCES Authors(authorID),
	FOREIGN KEY (CategoriesID) REFERENCES Categories(CategoriesID)
);


CREATE TABLE Employees (
	employeesID int PRIMARY KEY IDENTITY(1,1),
	employeeName varchar(30),
	sectionID varchar (20),
	FOREIGN KEY (sectionID) REFERENCES Sections(sectionID)

);

CREATE TABLE Users (
	UsersID int PRIMARY KEY IDENTITY(1,1),
	UsersName varchar(20)
);

CREATE TABLE BOOKS_USERS (
	UsersID int,
	BookID INT,
	FOREIGN KEY (UsersID) REFERENCES Users(UsersID),
	FOREIGN KEY (BookID) REFERENCES BOOKS(BookID)
);

INSERT INTO Authors (authorName) VALUES 
('J.K. Rowling'), 
('George R.R. Martin'), 
('J.R.R. Tolkien'), 
('Agatha Christie'), 
('Stephen King'),
('AYAH');

-- Insert data into Sections table
INSERT INTO Sections (sectionID) VALUES 
('Fiction'), 
('Non-Fiction'), 
('Sci-Fi'), 
('Mystery'), 
('Fantasy');

-- Insert data into Categories table
INSERT INTO Categories (CategoriesID, sectionID) VALUES 
('Fantasy', 'Fiction'), 
('Biography', 'Non-Fiction'), 
('Space Opera', 'Sci-Fi'), 
('Detective', 'Mystery'), 
('Epic Fantasy', 'Fantasy');

-- Insert data into Books table
INSERT INTO Books (authorID, CategoriesID, BookName, copies) VALUES 
(1, 'Fantasy', 'Harry Potter', '10'), 
(2, 'Epic Fantasy', 'Game of Thrones', '15'), 
(3, 'Epic Fantasy', 'The Hobbit', '20'), 
(4, 'Detective', 'Murder on the Orient Express', '5'), 
(5, 'Epic Fantasy', 'The Shining', '8');

-- Insert data into Employees table
INSERT INTO Employees (employeeName, sectionID) VALUES 
('Alice', 'Fiction'), 
('Bob', 'Non-Fiction'), 
('Charlie', 'Sci-Fi'), 
('Diana', 'Mystery'), 
('Eve', 'Fantasy');

-- Insert data into Users table
INSERT INTO Users (UsersName) VALUES 
('John Doe'), 
('Jane Smith'), 
('Michael Brown'), 
('Emily Davis'), 
('Daniel Wilson');

-- Insert data into Books_Users table
INSERT INTO Books_Users (UsersID, BookID) VALUES 
(1, 1), 
(2, 1), 
(5, 3), 
(4, 4), 
(4, 5);

SELECT A.authorName, B.BookName, B.copies
FROM Authors A 
INNER JOIN Books B ON A.authorID = B.authorID;

SELECT A.authorName, B.BookName, B.copies
FROM Authors A 
LEFT JOIN Books B ON A.authorID = B.authorID;

SELECT A.authorName, B.BookName, B.copies
FROM Authors A 
RIGHT JOIN Books B ON A.authorID = B.authorID;

SELECT A.authorName, B.BookName, B.copies
FROM Authors A 
FULL JOIN Books B ON A.authorID = B.authorID;


