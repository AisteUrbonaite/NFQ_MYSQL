1. INSERT INTO Authors (name)
VALUES ('Antanas Baranauskas'),('J. Picoult');

2. INSERT INTO Books (title, year, authorId)
VALUE ('Anyksciu silelis', 1995, 8), ('My sisters keeper', 2017, 10), ('The Hunger games', 2007, 10);

3.UPDATE Books
SET Books.authorId = 10
WHERE Books.authorId = 8;
