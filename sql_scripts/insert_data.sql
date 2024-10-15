-- Lägger till böcker
INSERT INTO Book (title, author, publication_year, isbn)
VALUES ('Boktitel1', 'Författare1', 2020, '1234567890');

-- Lägger till låntagare
INSERT INTO Borrower (name, phone, email)
VALUES ('John Doe', '123-456-7890', 'john.doe@example.com');

-- Lägger till utlåning
INSERT INTO Loan (book_id, borrower_id, loan_date, due_date)
VALUES (1, 1, '2024-10-15', '2024-11-15');
