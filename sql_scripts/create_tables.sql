-- Skapa tabell för böcker
CREATE TABLE Book (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    publication_year INTEGER,
    isbn TEXT NOT NULL UNIQUE
);

-- Skapa tabell för låntagare
CREATE TABLE Borrower (
    borrower_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    phone TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

-- Skapa tabell för utlåningar
CREATE TABLE Loan (
    loan_id INTEGER PRIMARY KEY,
    book_id INTEGER,
    borrower_id INTEGER,
    loan_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (borrower_id) REFERENCES Borrower(borrower_id)
);
