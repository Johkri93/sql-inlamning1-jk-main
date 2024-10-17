-- Skapa tabell för böcker
CREATE TABLE Book (
    book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    publication_year INTEGER CHECK (publication_year > 0),
    isbn TEXT NOT NULL UNIQUE CHECK (LENGTH(isbn) = 10 OR LENGTH(isbn) = 13)
);

-- Skapa tabell för låntagare
CREATE TABLE Borrower (
    borrower_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    phone TEXT NOT NULL CHECK (LENGTH(phone) > 0),
    email TEXT NOT NULL UNIQUE CHECK (email LIKE '%_@__%.__%')
);

-- Skapa tabell för utlåningar
CREATE TABLE Loan (
    loan_id INTEGER PRIMARY KEY AUTOINCREMENT,
    book_id INTEGER NOT NULL,
    borrower_id INTEGER NOT NULL,
    loan_date DATE NOT NULL,
    due_date DATE NOT NULL CHECK (due_date > loan_date),
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Book(book_id) ON DELETE CASCADE,
    FOREIGN KEY (borrower_id) REFERENCES Borrower(borrower_id) ON DELETE CASCADE
);
