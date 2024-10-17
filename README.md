# Bibliotekssystem

## Databasdesign och normalisering
Systemet är normaliserat till minst 3NF. Tabellen `Loan` skapar relationer mellan `Book` och `Borrower`.

## Filer
- **create_tables.sql**: Skapar alla tabeller i databasen.
- **insert_data.sql**: Fyller databasen med exempeldata för böcker, låntagare och utlåningar.
- **queries.sql**: Innehåller SQL-frågor för CRUD-operationer, JOIN-frågor, subqueries och vyer.
- **security.sql**: Hanterar säkerhetsaspekter och inloggningsfunktionen.

## Instruktioner för att köra SQL-skript
1. Kör `create_tables.sql` för att skapa tabellerna.
2. Kör `insert_data.sql` för att fylla databasen med exempeldata.
3. Använd frågorna i `queries.sql` för att utföra CRUD-operationer och analysera data.
4. `security.sql` används för att skapa användartabellen och förstå säkerhetsaspekterna.

## Normalisering
Databasen är normaliserad till tredje normalform för att undvika redundans och säkerställa dataintegritet.

## Säkerhet
Prepared statements används för att skydda mot SQL-injektioner. 
