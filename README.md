# BOSTON-LIBRARY
## Overview 
The Boston_Library_db project is a relational database designed to efficiently manage library resources including books, members, and loan records. It supports typical library operations like tracking book availability, managing member information, and monitoring borrowing activity. The project incorporates SQL-based data retrieval and analysis, enabling insights into usage patterns, member behavior, and resource demand.
## Objectives 
#### To design and implement a normalized library database schema using SQL.
#### To store and manage information about:
•Books (titles, authors, genres, availability)
•Library members (names, join dates, membership types)
•Loans (borrowed dates, due dates, and return tracking)
•To perform analytical queries that answer meaningful questions such as:
•Which books are in high demand or fully checked out?
•Which members are active or inactive?
•What borrowing trends exist by age group, season, or genre?
•Which books are consistently borrowed by specific demographics (e.g., Adults only)?
•What books are borrowed frequently in summer or during specific weekdays?

## Database Creation
``` sql 
CREATE DATABASE Boston_Library_db;
```USE Boston_Library_db;

## Table Creation
### Table:Books
``` sql
CREATE TABLE Books(
    book_id          INT PRIMARY KEY,
    title            TEXT NOT NULL,
    author           VARCHAR(50) NOT NULL,
    isbn             VARCHAR(25) NOT NULL,
    genre            VARCHAR(50),
    published_year   INT,
    total_copies     INT,
    available_copies INT
);

SELECT * FROM Books;
```
### Table:Members
``` sql
CREATE TABLE Members(
    member_id       INT PRIMARY KEY,
    first_name      VARCHAR(25) NOT NULL,
    last_name       VARCHAR(25) NOT NULL,
    join_date       DATE,
    membership_type VARCHAR(50)
);

SELECT * FROM Members;
```
### Table:Loans
``` sql
CREATE TABLE Loans(
    loan_id     INT PRIMARY KEY,
    book_id     INT,
    member_id   INT,
    loan_date   DATE,
    due_date    DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

SELECT * FROM Loans;
```
## Key Queries 
#### 1. List books published in 2021 with fewer than 3 available copies (highlighting high-demand recent releases).
``` sql
SELECT * FROM Books
WHERE published_year=2021 AND available_copies<3
ORDER BY available_copies;
```
#### 2. Find books where the title contains the word "The" but is not the first word.
``` sql
SELECT * FROM Books
WHERE title LIKE '%The%' AND title NOT LIKE 'The%';
```
#### 3. Show books with exactly 5 total copies, sorted by publication year (newest first).
``` sql
SELECT * FROM Books
WHERE total_copies=5
ORDER BY published_year DESC;
```
#### 4. Count how many books have no available copies (fully checked out).
``` sql
SELECT COUNT(*) FROM Books
WHERE available_copies=0;
```
#### 5. Identify members who joined in 2023 but have never borrowed a book
``` sql
SELECT m.*,COUNT(l.loan_id) AS Total_Borrowings 
FROM Members m
LEFT JOIN Loans l
ON m.member_id=l.member_id
WHERE YEAR(m.join_date)=2023
GROUP BY m.member_id
HAVING Total_Borrowings =0;
```
#### 6. List child members (membership_type = 'Child') along with their borrowed book titles.
``` sql
SELECT m.*,b.title
FROM Members m
LEFT JOIN Loans l
ON m.member_id=l.member_id
LEFT JOIN Books b
ON l.book_id =b.book_id
WHERE m.membership_type='Child';
```
#### 7. Find members who have borrowed books from multiple genres (showing diverse readers).
``` sql
SELECT m.*, COUNT(DISTINCT b.genre) AS Total_Genre
 FROM Members m
JOIN Loans l
ON m.member_id=l.member_id
JOIN Books b
ON l.book_id =b.book_id
GROUP BY m.member_id
HAVING  Total_Genre>1;
```
#### 8. Calculate the average number of books borrowed per senior member (age 65+).
``` sql
SELECT AVG(Total_loans) AS Average_Borrowings 
FROM (
        SELECT m.member_id,COUNT(*) AS Total_loans
    FROM Members m
    LEFT JOIN Loans l 
    ON m.member_id=l.member_id
    WHERE membership_type='Senior'
    GROUP BY m.member_id
) AS Sub;
```
#### 9. Show books that have been borrowed more than twice but never returned late.
``` sql
SELECT b.* ,COUNT(l.loan_id) AS Total_Borrowed
FROM Books b
JOIN Loans l 
ON b.book_id=l.book_id
WHERE return_date<=due_date AND return_date IS NULL
GROUP BY b.book_id
HAVING Total_Borrowed>2;
```
#### 10. List all currently overdue books (where due_date < current_date AND return_date IS NULL).
``` sql
SELECT b.*,l.due_date,l.return_date
FROM Books b
JOIN Loans l 
ON b.book_id=l.book_id
WHERE return_date IS NULL AND due_date<CURRENT_DATE();
```
#### 11. Find books that share the same author but are in different genres.
``` sql
SELECT  
        b1.author,
    b1.title AS Book1,
    b1.genre AS Genre1,
     b2.title AS Book2,
    b2.genre AS Genre2
FROM Books b1
JOIN Books b2
ON b1.author=b2.author
AND b1.genre <> b2.genre 
AND b1.book_id<b2.book_id
ORDER BY b1.author;
```
#### 12. List members who borrowed the same book more than once (repeat readers).
``` sql
SELECT m.*,b.title,COUNT(*) AS Total_Borrowings
FROM Members m
LEFT JOIN Loans l
ON m.member_id=l.member_id
LEFT JOIN Books b
ON l.book_id =b.book_id
GROUP BY m.member_id,b.title
HAVING COUNT(*)>1;
```
#### 13. Identify books that are always checked out by adult members (never by students/children).
``` sql
SELECT b.*
FROM Books b
WHERE NOT EXISTS (
        SELECT 1 
    FROM Loans l 
        JOIN Members m 
        ON m.member_id=l.member_id
        WHERE l.book_id=b.book_id AND m.membership_type <>'Adult'
);
```
#### 14. Show members who borrowed books published the same year they joined.
``` sql
SELECT m.* ,b.published_year
FROM Members m
JOIN Loans l 
ON l.member_id=m.member_id
JOIN Books b 
ON b.book_id=l.book_id
WHERE YEAR(join_date)=b.published_year;
```
#### 16. Identify genres that only have one book in the collection.
``` sql
SELECT genre, COUNT(*) AS Total_Books FROM Books
GROUP BY genre
HAVING COUNT(*)=1;
```
#### 17. Count loans by month to identify seasonal borrowing trends.
``` sql
SELECT MONTH(loan_date) AS Month, MONTHNAME(loan_date) AS Month_name,COUNT(*) AS Total_Loans FROM Loans
GROUP BY Month,Month_name;
```
#### 18. Find books borrowed during summer months (June-August) more than 3 times.
``` sql
SELECT 
        b.*,COUNT(l.loan_id) AS Total_loans
FROM Books b
JOIN Loans l
ON b.book_id=l.book_id
WHERE MONTH(l.loan_date) IN (6,7,8)
GROUP BY b.book_id
HAVING Total_loans>3;
```
#### 19. List members who borrowed books within their first week of joining.
``` sql
SELECT m.* 
FROM Members m 
JOIN Loans l 
ON l.member_id=m.member_id
WHERE l.loan_date BETWEEN m.join_date AND DATE_ADD(m.join_date,INTERVAL 7 DAY);
```
#### 20. Show the day of the week with the highest number of loans (e.g., weekends vs. weekdays).
``` sql
SELECT
        CASE 
                WHEN DAYNAME(loan_date) BETWEEN 'Saturday' AND 'Sunday' THEN 'Weekends'
        ELSE 'Weekdays'
        END AS DAYS,
    DAYNAME(loan_date) AS Day_of_week,
    COUNT(*) AS Total_loans
FROM Loans
GROUP BY DAYS,Day_of_week
ORDER BY Total_loans DESC
LIMIT 2;
```
## Conclusion
The Boston Library Database project demonstrates the power of SQL in organizing, managing, and analyzing library operations. The database schema allows clear relationships between books, members, and loans, enabling accurate tracking of resource use. 


