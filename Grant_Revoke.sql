CREATE TABLE articles (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  content TEXT,
  author_id INT,
  FOREIGN KEY (author_id) REFERENCES authors(id)
);

Query OK, 0 rows affected (0.01 sec)


GRANT SELECT, INSERT, UPDATE, DELETE ON articles TO 'editor1'@'localhost';
Query OK, 0 rows affected (0.00 sec)

REVOKE UPDATE, DELETE ON articles FROM 'editor1'@'localhost';

Query OK, 0 rows affected (0.00 sec)


GRANT SELECT ON articles TO 'reader'@'%';

Query OK, 0 rows affected (0.00 sec)

REVOKE ALL PRIVILEGES ON articles FROM 'reader'@'%';
Use code with caution. Learn more

Query OK, 0 rows affected (0.00 sec)
