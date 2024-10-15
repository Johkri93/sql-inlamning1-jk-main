-- Hämta alla böcker
SELECT * FROM Book;

-- Uppdatera en bok
UPDATE Book SET title = 'Ny Titel' WHERE book_id = 1;

-- Avancerad JOIN för att visa utlånade böcker och låntagare
SELECT Borrower.name, Book.title, Loan.loan_date
FROM Loan
JOIN Borrower ON Loan.borrower_id = Borrower.borrower_id
JOIN Book ON Loan.book_id = Book.book_id;
