INSERT INTO Authors (name)
VALUES ('Antanas Baranauskas'),('J. Picoult');

INSERT INTO Books (title, year, authorId)
VALUE ('Anyksciu silelis', 1995, 8), ('My sisters keeper', 2017, 10), ('The Hunger games', 2007, 10);

UPDATE Books
SET Books.authorId = 10
WHERE Books.authorId = 8;

DELETE FROM Authors WHERE authorId IN (8, 10);

DELETE FROM Books WHERE  authorId is null;

CREATE TABLE `AuthorBookRel` (
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE Boks DROP COLUMN authorId;

INSERT INTO `AuthorBookRel`
(`authorId`,
`bookId`)
VALUES
(1,1), (2,2), (4,3), (6,4), (7,5), (10,9), (10,10), (10,11), (2,10);

ALTER TABLE Books CONVERT TO charset utf8;
