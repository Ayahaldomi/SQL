use Library;
--CREATE TABLE Books
--(
--	BookID Int,
--	Title varchar(30),
--	AuthorID Int,
--	PublishedYear Int,
--	CopiesAvailable Int,
--	BookCategory Varchar(30),
--)
--CREATE TABLE Authors 
--(
--	AuthorID Int,
--	FirstName Varchar(30),
--	LastName Varchar(30),
--	BirthYear Varchar(20),
--)
--INSERT into Books
--values (1, 'To Kill a Mockingbird', 101, 1960 , 5 , 'Fiction'),
--(2, '1984', 102, 1949 , 8 , 'Dystopian'),
--(3, 'The Great Gatsby', 103, 1925, 3 , 'Classic'),
--(4, 'The Catcher in the Rye', 104, 1951, 4 , 'Fiction'),
--(5, 'Moby Dick', 105, 1851, 6 , 'Adventure');

--INSERT into Authors
--values (101, 'Harper', 'Lee', '1926'),
--(102, 'George', 'Orwell', '1903'),
--(103, 'F. Scott', 'Fitzgerald', '1896'),
--(104, 'J.D.', 'Salinger', '1919'),
--(105, 'Herman', 'Melville', '1819');

--select * FROM Books;
--select * FROM Authors;

--SELECT MAX(CopiesAvailable) AS MaxBook
--FROM Books;

--SELECT MIN(CopiesAvailable) AS MinBook
--FROM Books;

--SELECT AVG(PublishedYear) AS AVGPublishedYear
--FROM Books;

--SELECT SUM(CopiesAvailable) AS SumCopiesAvailable
--FROM Books;

DELETE FROM Books;

DROP TABLE Authors;

