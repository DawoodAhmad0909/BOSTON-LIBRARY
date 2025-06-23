CREATE DATABASE Boston_Library_db;
USE Boston_Library_db;

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

INSERT INTO Books VALUES
	(1, 'The Silent Patient', 'Alex Michaelides', '9781250301697', 'Psychological Thriller', 2019, 3, 2),
	(2, 'Where the Crawdads Sing', 'Delia Owens', '9780735219090', 'Mystery', 2018, 5, 3),
	(3, 'Educated', 'Tara Westover', '9780399590504', 'Memoir', 2018, 2, 1),
	(4, 'The Guest List', 'Lucy Foley', '9780062868930', 'Thriller', 2020, 4, 2),
	(5, 'Project Hail Mary', 'Andy Weir', '9780593135204', 'Science Fiction', 2021, 3, 0),
	(6, 'Malibu Rising', 'Taylor Jenkins Reid', '9781524798659', 'Historical Fiction', 2021, 3, 2),
	(7, 'The Midnight Library', 'Matt Haig', '9780525559474', 'Fantasy', 2020, 6, 4),
	(8, 'The Vanishing Half', 'Brit Bennett', '9780525536291', 'Literary Fiction', 2020, 3, 1),
	(9, 'Circe', 'Madeline Miller', '9780316556347', 'Mythology', 2018, 4, 3),
	(10, 'The Invisible Life of Addie LaRue', 'V.E. Schwab', '9780765387561', 'Fantasy', 2020, 5, 2),
	(11, 'Klara and the Sun', 'Kazuo Ishiguro', '9780593318171', 'Science Fiction', 2021, 3, 1),
	(12, 'The Push', 'Ashley Audrain', '9781984881663', 'Psychological Thriller', 2021, 2, 0),
	(13, 'The Four Winds', 'Kristin Hannah', '9781250178602', 'Historical Fiction', 2021, 4, 2),
	(14, 'The Sanatorium', 'Sarah Pearse', '9780593296677', 'Thriller', 2021, 3, 1),
	(15, 'The Last Thing He Told Me', 'Laura Dave', '9781501171345', 'Mystery', 2021, 5, 3),
	(16, 'People We Meet on Vacation', 'Emily Henry', '9781984806758', 'Romance', 2021, 4, 2),
	(17, 'The Song of Achilles', 'Madeline Miller', '9780062060624', 'Mythology', 2012, 3, 1),
	(18, 'The House in the Cerulean Sea', 'TJ Klune', '9781250217318', 'Fantasy', 2020, 5, 3),
	(19, 'Black Buck', 'Mateo Askaripour', '9780358380887', 'Satire', 2021, 2, 0),
	(20, 'The Paris Library', 'Janet Skeslien Charles', '9781982134198', 'Historical Fiction', 2021, 3, 2),
	(21, 'The Anthropocene Reviewed', 'John Green', '9780525555216', 'Essays', 2021, 4, 3),
	(22, 'No One Is Talking About This', 'Patricia Lockwood', '9780593189580', 'Literary Fiction', 2021, 2, 1),
	(23, 'The Prophets', 'Robert Jones Jr.', '9780593085684', 'Historical Fiction', 2021, 3, 0),
	(24, 'The Rose Code', 'Kate Quinn', '9780062943477', 'Historical Fiction', 2021, 5, 2),
	(25, 'The Maidens', 'Alex Michaelides', '9781250304452', 'Psychological Thriller', 2021, 3, 1),
	(26, 'The Lincoln Highway', 'Amor Towles', '9780735222359', 'Literary Fiction', 2021, 4, 2),
	(27, 'Cloud Cuckoo Land', 'Anthony Doerr', '9781982168438', 'Historical Fiction', 2021, 3, 1),
	(28, 'Harlem Shuffle', 'Colson Whitehead', '9780385545136', 'Historical Fiction', 2021, 5, 3),
	(29, 'Matrix', 'Lauren Groff', '9781594634499', 'Historical Fiction', 2021, 2, 0),
	(30, 'The Sentence', 'Louise Erdrich', '9780062671127', 'Literary Fiction', 2021, 3, 2),
	(31, 'Beautiful World, Where Are You', 'Sally Rooney', '9780374602604', 'Literary Fiction', 2021, 4, 1),
	(32, 'The Book of Form and Emptiness', 'Ruth Ozeki', '9780399563645', 'Magical Realism', 2021, 3, 0),
	(33, 'Crossroads', 'Jonathan Franzen', '9780374181178', 'Literary Fiction', 2021, 5, 2),
	(34, 'Oh William!', 'Elizabeth Strout', '9780812989515', 'Literary Fiction', 2021, 3, 1),
	(35, 'The Love Songs of W.E.B. Du Bois', 'Honorée Fanonne Jeffers', '9780062942968', 'Historical Fiction', 2021, 4, 2),
	(36, 'The Final Revival of Opal & Nev', 'Dawnie Walton', '9781982140168', 'Historical Fiction', 2021, 3, 0),
	(37, 'Great Circle', 'Maggie Shipstead', '9781984856029', 'Historical Fiction', 2021, 5, 3),
	(38, 'The Other Black Girl', 'Zakiya Dalila Harris', '9781982160135', 'Satire', 2021, 2, 1),
	(39, 'Light Perpetual', 'Francis Spufford', '9781509873166', 'Historical Fiction', 2021, 3, 2),
	(40, 'Second Place', 'Rachel Cusk', '9780374604486', 'Literary Fiction', 2021, 4, 1),
	(41, 'The Plot', 'Jean Hanff Korelitz', '9781250790767', 'Thriller', 2021, 3, 0),
	(42, 'The Paper Palace', 'Miranda Cowley Heller', '9780593329825', 'Literary Fiction', 2021, 5, 2),
	(43, 'The Sweetness of Water', 'Nathan Harris', '9780316362481', 'Historical Fiction', 2021, 3, 1),
	(44, 'The Five Wounds', 'Kirstin Valdez Quade', '9780393242779', 'Literary Fiction', 2021, 4, 2),
	(45, 'The Night Watchman', 'Louise Erdrich', '9780062671189', 'Historical Fiction', 2020, 3, 0),
	(46, 'Transcendent Kingdom', 'Yaa Gyasi', '9780525658184', 'Literary Fiction', 2020, 5, 3),
	(47, 'Deacon King Kong', 'James McBride', '9780735216723', 'Historical Fiction', 2020, 3, 1),
	(48, 'Hamnet', "Maggie O'Farrell", '9780525657606', 'Historical Fiction', 2020, 4, 2),
	(49, 'The Glass Hotel', 'Emily St. John Mandel', '9780525521143', 'Literary Fiction', 2020, 3, 0),
	(50, 'Mexican Gothic', 'Silvia Moreno-Garcia', '9780525620785', 'Gothic Horror', 2020, 5, 2);

CREATE TABLE Members(
    member_id       INT PRIMARY KEY,
    first_name      VARCHAR(25) NOT NULL,
    last_name       VARCHAR(25) NOT NULL,
    join_date       DATE,
    membership_type VARCHAR(50)
);

SELECT * FROM Members;

INSERT INTO Members VALUES
	(1, 'Emma', 'Johnson', '2022-01-15', 'Adult'),
	(2, 'Liam', 'Smith', '2022-02-20', 'Student'),
	(3, 'Olivia', 'Williams', '2022-03-10', 'Adult'),
	(4, 'Noah', 'Brown', '2022-04-05', 'Senior'),
	(5, 'Ava', 'Jones', '2022-05-12', 'Adult'),
	(6, 'William', 'Garcia', '2022-06-18', 'Student'),
	(7, 'Sophia', 'Miller', '2022-07-22', 'Adult'),
	(8, 'Benjamin', 'Davis', '2022-08-30', 'Senior'),
	(9, 'Isabella', 'Rodriguez', '2022-09-14', 'Adult'),
	(10, 'James', 'Martinez', '2022-10-25', 'Student'),
	(11, 'Charlotte', 'Hernandez', '2022-11-03', 'Adult'),
	(12, 'Lucas', 'Lopez', '2022-12-08', 'Child'),
	(13, 'Amelia', 'Gonzalez', '2023-01-17', 'Adult'),
	(14, 'Henry', 'Wilson', '2023-02-21', 'Senior'),
	(15, 'Mia', 'Anderson', '2023-03-05', 'Adult'),
	(16, 'Alexander', 'Thomas', '2023-04-10', 'Student'),
	(17, 'Harper', 'Taylor', '2023-05-15', 'Adult'),
	(18, 'Ethan', 'Moore', '2023-06-20', 'Senior'),
	(19, 'Evelyn', 'Jackson', '2023-07-25', 'Adult'),
	(20, 'Daniel', 'Martin', '2023-08-30', 'Student'),
	(21, 'Abigail', 'Lee', '2023-09-05', 'Adult'),
	(22, 'Matthew', 'Perez', '2023-10-10', 'Child'),
	(23, 'Emily', 'Thompson', '2023-11-15', 'Adult'),
	(24, 'David', 'White', '2023-12-20', 'Senior'),
	(25, 'Elizabeth', 'Harris', '2024-01-25', 'Adult'),
	(26, 'Joseph', 'Sanchez', '2024-02-01', 'Student'),
	(27, 'Sofia', 'Clark', '2024-03-05', 'Adult'),
	(28, 'Jackson', 'Ramirez', '2024-04-10', 'Senior'),
	(29, 'Avery', 'Lewis', '2024-05-15', 'Adult'),
	(30, 'Samuel', 'Robinson', '2024-06-20', 'Student'),
	(31, 'Camila', 'Walker', '2024-07-25', 'Adult'),
	(32, 'Sebastian', 'Young', '2024-08-30', 'Child'),
	(33, 'Scarlett', 'Allen', '2024-09-05', 'Adult'),
	(34, 'Jack', 'King', '2024-10-10', 'Senior'),
	(35, 'Victoria', 'Wright', '2024-11-15', 'Adult'),
	(36, 'Owen', 'Scott', '2024-12-20', 'Student'),
	(37, 'Madison', 'Torres', '2025-01-25', 'Adult'),
	(38, 'Gabriel', 'Nguyen', '2025-02-01', 'Senior'),
	(39, 'Luna', 'Hill', '2025-03-05', 'Adult'),
	(40, 'Julian', 'Flores', '2025-04-10', 'Student'),
	(41, 'Grace', 'Green', '2025-05-15', 'Adult'),
	(42, 'Wyatt', 'Adams', '2025-06-20', 'Child'),
	(43, 'Chloe', 'Nelson', '2025-07-25', 'Adult'),
	(44, 'Carter', 'Baker', '2025-08-30', 'Senior'),
	(45, 'Penelope', 'Hall', '2025-09-05', 'Adult'),
	(46, 'Jayden', 'Rivera', '2025-10-10', 'Student'),
	(47, 'Layla', 'Campbell', '2025-11-15', 'Adult'),
	(48, 'Grayson', 'Mitchell', '2025-12-20', 'Senior'),
	(49, 'Riley', 'Carter', '2026-01-25', 'Adult'),
	(50, 'Levi', 'Roberts', '2026-02-01', 'Student');

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

INSERT INTO Loans VALUES
	(1, 5, 1, '2023-01-10', '2023-01-24', '2023-01-22'),
	(2, 12, 2, '2023-01-15', '2023-01-29', '2023-01-28'),
	(3, 19, 3, '2023-02-05', '2023-02-19', '2023-02-18'),
	(4, 23, 4, '2023-02-10', '2023-02-24', '2023-02-23'),
	(5, 29, 5, '2023-03-01', '2023-03-15', '2023-03-14'),
	(6, 32, 6, '2023-03-05', '2023-03-19', '2023-03-18'),
	(7, 36, 7, '2023-04-10', '2023-04-24', '2023-04-22'),
	(8, 41, 8, '2023-04-15', '2023-04-29', '2023-04-28'),
	(9, 45, 9, '2023-05-01', '2023-05-15', '2023-05-14'),
	(10, 49, 10, '2023-05-05', '2023-05-19', '2023-05-18'),
	(11, 2, 11, '2023-06-10', '2023-06-24', '2023-06-22'),
	(12, 7, 12, '2023-06-15', '2023-06-29', '2023-06-28'),
	(13, 11, 13, '2023-07-01', '2023-07-15', '2023-07-14'),
	(14, 16, 14, '2023-07-05', '2023-07-19', '2023-07-18'),
	(15, 20, 15, '2023-08-10', '2023-08-24', '2023-08-22'),
	(16, 25, 16, '2023-08-15', '2023-08-29', '2023-08-28'),
	(17, 30, 17, '2023-09-01', '2023-09-15', '2023-09-14'),
	(18, 35, 18, '2023-09-05', '2023-09-19', '2023-09-18'),
	(19, 40, 19, '2023-10-10', '2023-10-24', '2023-10-22'),
	(20, 44, 20, '2023-10-15', '2023-10-29', '2023-10-28'),
	(21, 1, 21, '2023-11-01', '2023-11-15', NULL),
	(22, 6, 22, '2023-11-05', '2023-11-19', NULL),
	(23, 10, 23, '2023-12-10', '2023-12-24', NULL),
	(24, 15, 24, '2023-12-15', '2023-12-29', NULL),
	(25, 21, 25, '2024-01-01', '2024-01-15', '2024-01-14'),
	(26, 26, 26, '2024-01-05', '2024-01-19', '2024-01-18'),
	(27, 31, 27, '2024-02-10', '2024-02-24', '2024-02-22'),
	(28, 37, 28, '2024-02-15', '2024-02-29', '2024-02-28'),
	(29, 42, 29, '2024-03-01', '2024-03-15', '2024-03-14'),
	(30, 47, 30, '2024-03-05', '2024-03-19', '2024-03-18'),
	(31, 3, 31, '2024-04-10', '2024-04-24', '2024-04-22'),
	(32, 8, 32, '2024-04-15', '2024-04-29', '2024-04-28'),
	(33, 13, 33, '2024-05-01', '2024-05-15', '2024-05-14'),
	(34, 18, 34, '2024-05-05', '2024-05-19', '2024-05-18'),
	(35, 24, 35, '2024-06-10', '2024-06-24', '2024-06-22'),
	(36, 28, 36, '2024-06-15', '2024-06-29', '2024-06-28'),
	(37, 33, 37, '2024-07-01', '2024-07-15', '2024-07-14'),
	(38, 38, 38, '2024-07-05', '2024-07-19', '2024-07-18'),
	(39, 43, 39, '2024-08-10', '2024-08-24', '2024-08-22'),
	(40, 48, 40, '2024-08-15', '2024-08-29', '2024-08-28'),
	(41, 4, 41, '2024-09-01', '2024-09-15', NULL),
	(42, 9, 42, '2024-09-05', '2024-09-19', NULL),
	(43, 14, 43, '2024-10-10', '2024-10-24', NULL),
	(44, 17, 44, '2024-10-15', '2024-10-29', NULL),
	(45, 22, 45, '2024-11-01', '2024-11-15', '2024-11-14'),
	(46, 27, 46, '2024-11-05', '2024-11-19', '2024-11-18'),
	(47, 34, 47, '2024-12-10', '2024-12-24', '2024-12-22'),
	(48, 39, 48, '2024-12-15', '2024-12-29', '2024-12-28'),
	(49, 46, 49, '2025-01-01', '2025-01-15', '2025-01-14'),
	(50, 50, 50, '2025-01-05', '2025-01-19', '2025-01-18');

-- 1. List books published in 2021 with fewer than 3 available copies (highlighting high-demand recent releases).
SELECT * FROM Books
WHERE published_year=2021 AND available_copies<3
ORDER BY available_copies;

-- 2. Find books where the title contains the word "The" but is not the first word.
SELECT * FROM Books
WHERE title LIKE '%The%' AND title NOT LIKE 'The%';

-- 3. Show books with exactly 5 total copies, sorted by publication year (newest first).
SELECT * FROM Books
WHERE total_copies=5
ORDER BY published_year DESC;

-- 4. Count how many books have no available copies (fully checked out).
SELECT COUNT(*) FROM Books
WHERE available_copies=0;

-- 5. Identify members who joined in 2023 but have never borrowed a book.
SELECT m.*,COUNT(l.loan_id) AS Total_Borrowings 
FROM Members m
LEFT JOIN Loans l
ON m.member_id=l.member_id
WHERE YEAR(m.join_date)=2023
GROUP BY m.member_id
HAVING Total_Borrowings =0;

-- 6. List child members (membership_type = 'Child') along with their borrowed book titles.
SELECT m.*,b.title
FROM Members m
LEFT JOIN Loans l
ON m.member_id=l.member_id
LEFT JOIN Books b
ON l.book_id =b.book_id
WHERE m.membership_type='Child';

-- 7. Find members who have borrowed books from multiple genres (showing diverse readers).
SELECT m.*, COUNT(DISTINCT b.genre) AS Total_Genre
 FROM Members m
JOIN Loans l
ON m.member_id=l.member_id
JOIN Books b
ON l.book_id =b.book_id
GROUP BY m.member_id
HAVING  Total_Genre>1;

-- 8. Calculate the average number of books borrowed per senior member (age 65+).
SELECT AVG(Total_loans) AS Average_Borrowings 
FROM (
	SELECT m.member_id,COUNT(*) AS Total_loans
    FROM Members m
    LEFT JOIN Loans l 
    ON m.member_id=l.member_id
    WHERE membership_type='Senior'
    GROUP BY m.member_id
) AS Sub;

-- 9. Show books that have been borrowed more than twice but never returned late.
SELECT b.* ,COUNT(l.loan_id) AS Total_Borrowed
FROM Books b
JOIN Loans l 
ON b.book_id=l.book_id
WHERE return_date<=due_date AND return_date IS NULL
GROUP BY b.book_id
HAVING Total_Borrowed>2;

-- 10. List all currently overdue books (where due_date < current_date AND return_date IS NULL).
SELECT b.*,l.due_date,l.return_date
FROM Books b
JOIN Loans l 
ON b.book_id=l.book_id
WHERE return_date IS NULL AND due_date<CURRENT_DATE();

-- 11. Find books that share the same author but are in different genres.
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

-- 12. List members who borrowed the same book more than once (repeat readers).
SELECT m.*,b.title,COUNT(*) AS Total_Borrowings
FROM Members m
LEFT JOIN Loans l
ON m.member_id=l.member_id
LEFT JOIN Books b
ON l.book_id =b.book_id
GROUP BY m.member_id,b.title
HAVING COUNT(*)>1;

-- 13. Identify books that are always checked out by adult members (never by students/children).
SELECT b.*
FROM Books b
WHERE NOT EXISTS (
	SELECT 1 
    FROM Loans l 
	JOIN Members m 
	ON m.member_id=l.member_id
	WHERE l.book_id=b.book_id AND m.membership_type <>'Adult'
);

-- 14. Show members who borrowed books published the same year they joined.
SELECT m.* ,b.published_year
FROM Members m
JOIN Loans l 
ON l.member_id=m.member_id
JOIN Books b 
ON b.book_id=l.book_id
WHERE YEAR(join_date)=b.published_year;

-- 16. Identify genres that only have one book in the collection.
SELECT genre, COUNT(*) AS Total_Books FROM Books
GROUP BY genre
HAVING COUNT(*)=1;

-- 17. Count loans by month to identify seasonal borrowing trends.
SELECT MONTH(loan_date) AS Month, MONTHNAME(loan_date) AS Month_name,COUNT(*) AS Total_Loans FROM Loans
GROUP BY Month,Month_name;

-- 18. Find books borrowed during summer months (June-August) more than 3 times.
SELECT 
	b.*,COUNT(l.loan_id) AS Total_loans
FROM Books b
JOIN Loans l
ON b.book_id=l.book_id
WHERE MONTH(l.loan_date) IN (6,7,8)
GROUP BY b.book_id
HAVING Total_loans>3;

-- 19. List members who borrowed books within their first week of joining.
SELECT m.* 
FROM Members m 
JOIN Loans l 
ON l.member_id=m.member_id
WHERE l.loan_date BETWEEN m.join_date AND DATE_ADD(m.join_date,INTERVAL 7 DAY);

-- 20. Show the day of the week with the highest number of loans (e.g., weekends vs. weekdays).
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