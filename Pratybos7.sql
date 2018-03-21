# tarpines lenteles kurimas (relationship)
CREATE TABLE `AuthorBookRel` (
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Istrina autrhorID stulpeli is Books lentos
ALTER TABLE Boks DROP COLUMN authorId;

#irasu pridejimas i nauja lentele
INSERT INTO `AuthorBookRel`
(`authorId`,
`bookId`)
VALUES
(1,1), (2,2), (4,3), (6,4), (7,5), (10,9), (10,10), (10,11), (2,10);

# irasu atrinkimas, atvaizduojant knygas su autoriais
SELECT GROUP_CONCAT(Authors.name SEPARATOR ' , '), Books.title FROM Books
JOIN AuthorBookRel ON Books.bookId = AuthorBookRel.bookId 
JOIN Authors ON Authors.authorId =AuthorBookRel.authorId
GROUP BY Books.title;

Alte

# utf 8 koduotes pakeitimas
ALTER TABLE Books CONVERT TO charset utf8;
