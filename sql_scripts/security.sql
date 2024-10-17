-- Skapa tabell för användare för inloggning
CREATE TABLE User (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL
);

-- Exempel på prepared statement (används för att undvika SQL-injektion)
INSERT INTO Book (title, author, publication_year, isbn)
VALUES (?, ?, ?, ?);
