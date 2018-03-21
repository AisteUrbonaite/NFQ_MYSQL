1. SELECT Authors.name,
COUNT(Books.bookId) FROM Books 
LEFT JOIN Authors ON Authors.authorId=Books.authorId 
GROUP BY Books.authorId;

SELECT Authors.name,
COUNT(Books.bookId) FROM Books 
INNER JOIN Authors ON Authors.authorId=Books.authorId 
GROUP BY Books.authorId;

2.DELETE FROM Books WHERE  authorId is null;


