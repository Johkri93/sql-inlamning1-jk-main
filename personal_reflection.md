# Reflektioner

## Designval
Jag delade upp databasen i tabellerna `Book`, `Borrower`, och `Loan` för att hålla ordning på olika delar av bibliotekssystemet. `Loan` kopplar samman böcker och låntagare, vilket gör att allt blir enkelt att söka i och underhålla.

## Normalisering
Databasen är normaliserad till 3NF, vilket minskar duplicering och håller datan ren och effektiv. Det hjälper också till att undvika inkonsekvenser.

## Säkerhet
För att skydda databasen använder jag `prepared statements` mot SQL-injektioner, samt hashade lösenord i `User`-tabellen. Detta minimerar riskerna för intrång och håller användarinformation säker.

## Förbättringar
Telefonnumrets `CHECK`-restriktion kunde vara striktare (t.ex. med regex) för att säkerställa giltiga nummer. Jag kan också lägga till indexering på vissa kolumner (som `title` och `loan_date`) för snabbare sökningar, samt införa roller för olika användarbehörigheter i framtiden.

## Skalbarhet
Med vyerna `ActiveLoans` och `AllLoans` blir det enklare att få en överblick av aktuella och tidigare lån. Det gör systemet mer användarvänligt och redo för fler användare och data i framtiden.
