
-- 1. Count total number of books
SELECT COUNT(*) AS TotalBooks FROM Books;

-- 2. Count books by each category
SELECT Categories.CategoryName, COUNT(Books.BookID) AS BookCount
FROM Books
JOIN Categories ON Books.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName;

-- 3. Average published year of books by category
SELECT Categories.CategoryName, AVG(Books.PublishedYear) AS AvgYear
FROM Books
JOIN Categories ON Books.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName;

-- 4. Sum of books issued per member
SELECT Members.Name, COUNT(IssuedBooks.BookID) AS TotalIssued
FROM IssuedBooks
JOIN Members ON IssuedBooks.MemberID = Members.MemberID
GROUP BY Members.Name;

-- 5. Filter groups having more than 1 issued book
SELECT Members.Name, COUNT(IssuedBooks.BookID) AS TotalIssued
FROM IssuedBooks
JOIN Members ON IssuedBooks.MemberID = Members.MemberID
GROUP BY Members.Name
HAVING COUNT(IssuedBooks.BookID) > 1;

-- 6. Count distinct authors who have books
SELECT COUNT(DISTINCT AuthorID) AS DistinctAuthors FROM Books;

-- 7. Round the average published year to nearest whole number
SELECT Categories.CategoryName, ROUND(AVG(Books.PublishedYear)) AS RoundedAvgYear
FROM Books
JOIN Categories ON Books.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName;
