Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE IF NOT EXISTS example_db;
Query OK, 1 row affected (0.16 sec)

mysql> CREATE DATABASE IF NOT EXISTS example_db;
Query OK, 1 row affected, 1 warning (0.05 sec)

mysql> USE example_db;
Database changed
mysql> CREATE TABLE IF NOT EXISTS users (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     name VARCHAR(255) NOT NULL,
    ->     age INT
    -> );
Query OK, 0 rows affected (0.55 sec)

mysql> INSERT INTO users (name, age) VALUES ('Alice Johnson', 28);
Query OK, 1 row affected (0.09 sec)

mysql> INSERT INTO users (name, age) VALUES ('Bob Williams', 35);
Query OK, 1 row affected (0.11 sec)

mysql> SELECT * FROM users;
+----+---------------+------+
| id | name          | age  |
+----+---------------+------+
|  1 | Alice Johnson |   28 |
|  2 | Bob Williams  |   35 |
+----+---------------+------+
2 rows in set (0.00 sec)

mysql> UPDATE users SET age = 29 WHERE name = 'Alice Johnson';
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM users WHERE name = 'Bob Williams';
Query OK, 1 row affected (0.08 sec)

mysql> SELECT * FROM users WHERE age > 30;
Empty set (0.00 sec)

mysql> SELECT * FROM users ORDER BY age DESC;
+----+---------------+------+
| id | name          | age  |
+----+---------------+------+
|  1 | Alice Johnson |   29 |
+----+---------------+------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) FROM users;
+----------+
| COUNT(*) |
+----------+
|        1 |
+----------+
1 row in set (0.02 sec)

mysql> SELECT age, COUNT(*) FROM users GROUP BY age;
+------+----------+
| age  | COUNT(*) |
+------+----------+
|   29 |        1 |
+------+----------+
1 row in set (0.00 sec)

mysql> CREATE TABLE IF NOT EXISTS example_table (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     name VARCHAR(255) NOT NULL,
    ->     age INT,
    ->     height FLOAT,
    ->     is_student BOOLEAN,
    ->     birth_date DATE,
    ->     registration_time TIMESTAMP,
    ->     profile_image BLOB,
    ->     email VARCHAR(255) UNIQUE,
    ->     phone_number VARCHAR(15)
    -> //
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '//
)' at line 12
mysql> CREATE TABLE IF NOT EXISTS example_table (     id INT AUTO_INCREMENT PRIMARY KEY,     name VARCHAR(255) NOT NULL,     age INT,     height FLOAT,     is_student BOOLEAN,     birth_date DATE,     registration_time TIMESTAMP,     profile_image BLOB,     email VARCHAR(255) UNIQUE,     phone_number VARCHAR(15)  );
Query OK, 0 rows affected (1.14 sec)

mysql> mysql> CREATE TABLE IF NOT EXISTS example_table (
    ->     ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     ->     name VARCHAR(255) NOT NULL,
    ->     ->     age INT,
    ->     ->     height FLOAT,
    ->     ->     is_student BOOLEAN,
    ->     ->     birth_date DATE,
    ->     ->     registration_time TIMESTAMP,
    ->     ->     profile_image BLOB,
    ->     ->     email VARCHAR(255) UNIQUE,
    ->     ->     phone_number VARCHAR(15)
    ->     -> //
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> CREATE TABLE IF NOT EXISTS example_table (
    ->     id INT AUTO_INCREME' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    '> )' at line 12
    -> mysql> CREATE TABLE IF NOT EXISTS example_table (     id INT AUTO_INCREMENT PRIMARY KEY,     name VARCHAR(255) NOT NULL,     age INT,     height FLOAT,     is_student BOOLEAN,     birth_date DATE,     registration_time TIMESTAMP,     profile_image BLOB,     email VARCHAR(255) UNIQUE,     phone_number VARCHAR(15)  );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> Query OK, 0 rows affected (1.14 sec)
    -> 
    -> mysql> 
    -> 
    -> mysql> CREATE TABLE IF NOT EXISTS example_table (
    ->     ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     ->     name VARCHAR(255) NOT NULL,
    ->     ->     age INT,
    ->     ->     height FLOAT,
    ->     ->     is_student BOOLEAN,
    ->     ->     birth_date DATE,
    ->     ->     registration_time TIMESTAMP,
    ->     ->     profile_image BLOB,
    ->     ->     email VARCHAR(255) UNIQUE,
    ->     ->     phone_number VARCHAR(15)
    ->     -> //
    ->     -> );
mysql> Query OK, 0 rows affected (1.14 sec)
