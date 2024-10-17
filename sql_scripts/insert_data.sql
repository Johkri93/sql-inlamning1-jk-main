-- Lägger till böcker
INSERT INTO Book (title, author, publication_year, isbn)
VALUES 
('Boktitel1', 'Författare1', 2020, '1234567890'),
('Boktitel2', 'Författare2', 2019, '0987654321');

-- Lägger till låntagare
INSERT INTO Borrower (name, phone, email)
VALUES 
('John Doe', '123-456-7890', 'john.doe@example.com'),
('Jane Smith', '987-654-3210', 'jane.smith@example.com');

-- Lägger till utlåning
INSERT INTO Loan (book_id, borrower_id, loan_date, due_date)
VALUES 
(1, 1, '2024-10-15', '2024-11-15'),
(2, 2, '2024-10-17', '2024-11-17');
