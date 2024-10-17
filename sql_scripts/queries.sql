-- Hämta alla böcker
SELECT * FROM Book;

-- Uppdatera en bok
UPDATE Book SET title = 'Ny Titel' WHERE book_id = 1;

-- Ta bort en bok
DELETE FROM Book WHERE book_id = 2;

-- Hämta alla låntagare
SELECT * FROM Borrower;

-- Lägg till en ny låntagare
INSERT INTO Borrower (name, phone, email)
VALUES ('Jane Doe', '555-1234', 'jane.doe@example.com');

-- Uppdatera en låntagare
UPDATE Borrower SET phone = '555-4321' WHERE borrower_id = 1;

-- Ta bort en låntagare
DELETE FROM Borrower WHERE borrower_id = 2;

-- Avancerad JOIN för att visa utlånade böcker och låntagare
SELECT Borrower.name, Book.title, Loan.loan_date, Loan.due_date
FROM Loan
JOIN Borrower ON Loan.borrower_id = Borrower.borrower_id
JOIN Book ON Loan.book_id = Book.book_id;

-- Subquery för att hämta böcker som fortfarande är utlånade
SELECT title FROM Book
WHERE book_id IN (SELECT book_id FROM Loan WHERE return_date IS NULL);

-- Analysera data med GROUP BY och HAVING för att visa antal lån per låntagare
SELECT Borrower.name, COUNT(Loan.loan_id) AS num_loans
FROM Borrower
JOIN Loan ON Borrower.borrower_id = Loan.borrower_id
GROUP BY Borrower.name
HAVING COUNT(Loan.loan_id) > 1;

-- Skapa vyer
CREATE VIEW ActiveLoans AS
SELECT Borrower.name, Book.title, Loan.loan_date, Loan.due_date
FROM Loan
JOIN Borrower ON Loan.borrower_id = Borrower.borrower_id
JOIN Book ON Loan.book_id = Book.book_id
WHERE Loan.return_date IS NULL;

CREATE VIEW AllLoans AS
SELECT Borrower.name, Book.title, Loan.loan_date, Loan.return_date
FROM Loan
JOIN Borrower ON Loan.borrower_id = Borrower.borrower_id
JOIN Book ON Loan.book_id = Book.book_id;
