1. SELECT Books.* FROM Books;

2. SELECT Books.title FROM Books ORDER BY title ASC;

3.SELECT COUNT(Books.authorID), Authors.name FROM Books
JOIN Authors ON Books.authorID=Authors.authorID
GROUP BY Authors.authorId;

