CREATE TABLE books (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  year_published INT
);

Query OK, 0 rows affected (0.00 sec)

INSERT INTO books (title, author, publication_year) VALUES ("The Lord of the Rings", "J. R. R. Tolkien", 1954);
INSERT INTO books (title, author, publication_year) VALUES ("Pride and Prejudice", "Jane Austen", 1813);
INSERT INTO books (title, author, publication_year) VALUES ("Moby Dick", "Herman Melville", 1851);

Query OK, 1 row affected (0.00 sec)
Query OK, 1 row affected (0.00 sec)
Query OK, 1 row affected (0.00 sec)

UPDATE books SET title = "The Hobbit" WHERE id = 1;

Query OK, 1 row affected (0.00 sec)

DELETE FROM books WHERE id = 2;

Query OK, 1 row affected (0.00 sec)
SELECT * FROM books;

id	title	author	publication_year
1	The Hobbit	J. R. R. Tolkien	1954
3	Moby Dick	Herman Melville	1851


SELECT COUNT(*) AS total_books FROM books;

total_books |
|---|---|
| 2 |

SELECT title, publication_year FROM books ORDER BY publication_year ASC LIMIT 1;

title	publication_year
Moby Dick	1851

SELECT STDDEV_SAMP(publication_year) AS publication_year_stddev FROM books;

| publication_year_stddev |
|---|---|
| 36.74 |


SELECT title, price FROM books ORDER BY price DESC LIMIT 1;

title	                  price
The Lord of the Rings	29.99


SELECT MEDIAN(publication_year) AS median_publication_year FROM books;
Use code with caution. Learn more


| median_publication_year |
|---|---|
| 1902.5 |

5. Group books by publication year and sum their prices:

SQL
SELECT publication_year, SUM(price) AS total_price_by_year FROM books GROUP BY publication_year;


publication_year	total_price_by_year
1954	29.99
1851	19.9

SQL
SELECT author, COUNT(*) AS book_count FROM books GROUP BY author ORDER BY book_count DESC LIMIT 1;


author	book_count
J. R. R. Tolkien	1

ALTER TABLE books ADD price DECIMAL(10,2) DEFAULT 0.00;
Use code with caution. Learn more


Query OK, 0 rows affected (0.01 sec)


ALTER TABLE books MODIFY COLUMN title VARCHAR(300) NOT NULL;

Output:

Query OK, 0 rows affected (0.01 sec)


ALTER TABLE books RENAME COLUMN publication_date publication_year;

Query OK, 0 rows affected (0.00 sec)

Query OK, 2 rows affected (0.00 sec)
5. Insert data with a subquery:

INSERT INTO books (title, author, publication_year, price)
SELECT title, author, publication_year, price * 1.1
FROM books WHERE price > 20.00;

Query OK, 2 rows affected (0.00 sec)



ALTER TABLE books ADD category VARCHAR(50);

INSERT INTO books (title, author, publication_year, price, category)
VALUES ("The Lord of the Rings", "J. R. R. Tolkien", 1954, 29.99, "Fantasy");



Query OK, 0 rows affected (0.01 sec)
Query OK, 1 row affected (0.00 sec)








