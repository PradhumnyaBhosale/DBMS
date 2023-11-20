create database mine;
Query OK, 1 row affected (0.13 sec)

mysql> show databese;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'databese' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| COLLEGE            |
| College            |
| DB                 |
| aarya              |
| college            |
| college50          |
| company            |
| information_schema |
| mine               |
| mybgmi             |
| myparth            |
| mysql              |
| new                |
| new1               |
| performance_schema |
| pranjali           |
| sys                |
| xyz                |
+--------------------+
18 rows in set (0.00 sec)

mysql> use mine;
Database changed
mysql> CREATE TABLE employee(  
    ->     name varchar(45) NOT NULL,    
    ->     occupation varchar(35) NOT NULL,    
    ->     working_date date,  
    ->     working_hours varchar(10)  
    -> );  
Query OK, 0 rows affected (0.57 sec)

mysql> INSERT INTO employee VALUES    
    -> ('Robin', 'Scientist', '2020-10-04', 12),  
    -> ('Warner', 'Engineer', '2020-10-04', 10),  
    -> ('Peter', 'Actor', '2020-10-04', 13),  
    -> ('Marco', 'Doctor', '2020-10-04', 14),  
    -> ('Brayden', 'Teacher', '2020-10-04', 12),  
    -> ('Antonio', 'Business', '2020-10-04', 11); 
Query OK, 6 rows affected (0.11 sec)
Records: 6  Duplicates: 0  Warnings: 0
mysql> DELIMITER //
mysql> create trigger new
    -> before insert on employee for each row
    -> begin
    -> IF NEW.working_hours < 0 THEN SET NEW.working_hours = 0;
    -> END IF;
    -> END//
Query OK, 0 rows affected (0.13 sec)
mysql> INSERT INTO employee VALUES    
    -> ('Markus', 'Former', '2020-10-08', 14);  
    -> 
    -> //
Query OK, 1 row affected (0.15 sec)

mysql> INSERT INTO employee VALUES    
    -> ('Alexander', 'Actor', '2020-10-012', -13);  
    -> //
Query OK, 1 row affected (0.11 sec)

mysql> select * from employee;
    -> //
+-----------+------------+--------------+---------------+
| name      | occupation | working_date | working_hours |
+-----------+------------+--------------+---------------+
| Robin     | Scientist  | 2020-10-04   | 12            |
| Warner    | Engineer   | 2020-10-04   | 10            |
| Peter     | Actor      | 2020-10-04   | 13            |
| Marco     | Doctor     | 2020-10-04   | 14            |
| Brayden   | Teacher    | 2020-10-04   | 12            |
| Antonio   | Business   | 2020-10-04   | 11            |
| Markus    | Former     | 2020-10-08   | 14            |
| Alexander | Actor      | 2020-10-12   | 0             |
+-----------+------------+--------------+---------------+
8 rows in set (0.00 sec)

mysql> 


