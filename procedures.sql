Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database data;
Query OK, 1 row affected (0.15 sec)

mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| Acc                 |
| BD4                 |
| DB                  |
| DB1                 |
| DB2                 |
| DM                  |
| aditya              |
| aggregate           |
| bank                |
| banking_system      |
| banks               |
| branch              |
| bro                 |
| bus                 |
| data                |
| db1                 |
| employes3           |
| employes_management |
| employs_management  |
| emplyos_management  |
| hospital_management |
| information_schema  |
| libraryManage       |
| mcompany            |
| me                  |
| mysql               |
| new2                |
| office_management   |
| performance_schema  |
| pratikk             |
| rakshabandhan       |
| reckon              |
| s                   |
| school              |
| scuttle             |
| shop                |
| shree               |
| stud                |
| student             |
| supplier            |
| sys                 |
| team                |
| university          |
| yash                |
| yashodeep           |
| yes                 |
| zandvoort           |
+---------------------+
47 rows in set (0.00 sec)

mysql> use school;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> use shree;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-----------------+
| Tables_in_shree |
+-----------------+
| product         |
| salesperson     |
+-----------------+
2 rows in set (0.00 sec)

mysql> select * from product;
Empty set (0.01 sec)

mysql> select * from salesperson;
+-----+----------+------+--------+
| sid | name     | age  | salary |
+-----+----------+------+--------+
|   1 | shree    |   19 | 150000 |
|   2 | om       |   20 | 160000 |
|   3 | dnynesh  |   21 | 170000 |
|   4 | siddhant |   22 | 180000 |
|   5 | shreyash |   23 | 190000 |
+-----+----------+------+--------+
5 rows in set (0.00 sec)

mysql> DELIMITER +
mysql> CREATE PROCEDURE proc()
    -> BEGIN
    -> insert into salesperson values(6,"DattaBhau",19,160000);
    -> END +
Query OK, 0 rows affected (0.13 sec)

mysql> call proc +
Query OK, 1 row affected (0.09 sec)

mysql> select * from salesperson;
    -> select * from salesperson +
+-----+-----------+------+--------+
| sid | name      | age  | salary |
+-----+-----------+------+--------+
|   1 | shree     |   19 | 150000 |
|   2 | om        |   20 | 160000 |
|   3 | dnynesh   |   21 | 170000 |
|   4 | siddhant  |   22 | 180000 |
|   5 | shreyash  |   23 | 190000 |
|   6 | DattaBhau |   19 | 160000 |
+-----+-----------+------+--------+
6 rows in set (0.00 sec)

+-----+-----------+------+--------+
| sid | name      | age  | salary |
+-----+-----------+------+--------+
|   1 | shree     |   19 | 150000 |
|   2 | om        |   20 | 160000 |
|   3 | dnynesh   |   21 | 170000 |
|   4 | siddhant  |   22 | 180000 |
|   5 | shreyash  |   23 | 190000 |
|   6 | DattaBhau |   19 | 160000 |
+-----+-----------+------+--------+
6 rows in set (0.00 sec)

mysql> CREATE PROCEDURE proce(sid int,name varchar(50),age int,salary int) BEGIN
 insert into salesperson values(sid,name,age,salary);End +
Query OK, 0 rows affected (0.21 sec)

mysql> call proce(7,"barge",20,22222)+
Query OK, 1 row affected (0.11 sec)

mysql> select * from salesperson +
+-----+-----------+------+--------+
| sid | name      | age  | salary |
+-----+-----------+------+--------+
|   1 | shree     |   19 | 150000 |
|   2 | om        |   20 | 160000 |
|   3 | dnynesh   |   21 | 170000 |
|   4 | siddhant  |   22 | 180000 |
|   5 | shreyash  |   23 | 190000 |
|   6 | DattaBhau |   19 | 160000 |
|   7 | barge     |   20 |  22222 |
+-----+-----------+------+--------+
7 rows in set (0.00 sec)

mysql> call proce(7,"barge",20,22222) +
ERROR 1062 (23000): Duplicate entry '7' for key 'salesperson.PRIMARY'
mysql> CREATE PROCEDURE FIND(sid int)
    -> BEGIN
    -> select *from salesperson where sid=sid;
    -> END +
Query OK, 0 rows affected (0.17 sec)

mysql> call FIND(7)+
+-----+-----------+------+--------+
| sid | name      | age  | salary |
+-----+-----------+------+--------+
|   1 | shree     |   19 | 150000 |
|   2 | om        |   20 | 160000 |
|   3 | dnynesh   |   21 | 170000 |
|   4 | siddhant  |   22 | 180000 |
|   5 | shreyash  |   23 | 190000 |
|   6 | DattaBhau |   19 | 160000 |
|   7 | barge     |   20 |  22222 |
+-----+-----------+------+--------+
7 rows in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> CREATE PROCEDURE FINDA(sid inta) BEGIN select *from salesperson where sid=inta; END+
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inta) BEGIN select *from salesperson where sid=inta; END' at line 1
mysql> CREATE PROCEDURE finds(id INT)
    -> BEGIN
    -> select *from salesperson where sid=id;
    -> END +
Query OK, 0 rows affected (0.14 sec)

mysql> call finds(7);
    -> call finds(7)+
+-----+-------+------+--------+
| sid | name  | age  | salary |
+-----+-------+------+--------+
|   7 | barge |   20 |  22222 |
+-----+-------+------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

+-----+-------+------+--------+
| sid | name  | age  | salary |
+-----+-------+------+--------+
|   7 | barge |   20 |  22222 |
+-----+-------+------+--------+
1 row in set (0.02 sec)

Query OK, 0 rows affected (0.02 sec)


mysql> CREATE PROCEDURE find_id(id INT) BEGIN select *from salesperson where sid=id; END+
Query OK, 0 rows affected (0.15 sec)

mysql> CREATE PROCEDURE find_name(names varchar(50)) BEGIN select *from salesper
son where name=names; END+
Query OK, 0 rows affected (0.13 sec)

mysql> CREATE PROCEDURE find_age(ages int) BEGIN select *from salesperson where
age=ages; END+
Query OK, 0 rows affected (0.16 sec)

mysql> CREATE PROCEDURE find_salary(salarys int) BEGIN select *from salesperson
where salary=salarys; END+
Query OK, 0 rows affected (0.13 sec)

mysql> call find_sid(6)+
ERROR 1305 (42000): PROCEDURE shree.find_sid does not exist
mysql> call find_id(6)+
+-----+-----------+------+--------+
| sid | name      | age  | salary |
+-----+-----------+------+--------+
|   6 | DattaBhau |   19 | 160000 |
+-----+-----------+------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> call find_name("barge")+
+-----+-------+------+--------+
| sid | name  | age  | salary |
+-----+-------+------+--------+
|   7 | barge |   20 |  22222 |
+-----+-------+------+--------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> ^C^C

