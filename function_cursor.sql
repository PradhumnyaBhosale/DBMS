

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| Book_Store         |
| Music_Database     |
| RBT22IT008         |
| Vishal_Ent         |
| aarya              |
| area               |
| bank               |
| bankmanagement     |
| college            |
| dhanu              |
| emmp               |
| information_schema |
| khb                |
| meenu              |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
17 rows in set (0.01 sec)

mysql> create database new
Query OK, 1 row affected (0.11 sec)

mysql> use new;
Database changed
mysql> create table employee(name varchar(30),occupation varchar(30),working_date date,working_hours varchar(10));
Query OK, 0 rows affected (0.49 sec)

mysql> insert into employee values('sharad','student','2023-10-4',12),
    -> ;

mysql> insert into employee values('barge','dancer','2023-10-4',12);
Query OK, 1 row affected (0.07 sec)

mysql> insert into employee values('omkar','actor','2023-10-4',13);
Query OK, 1 row affected (0.08 sec)

mysql> insert into employee values('santosh','engineer','2023-10-4',8);
Query OK, 1 row affected (0.09 sec)

mysql> insert into employee values('kunal','doctor','2023-10-4',14);
Query OK, 1 row affected (0.11 sec)


mysql> insert into employee values('kartik','businessman','2023-10-4',11);
Query OK, 1 row affected (0.15 sec)

mysql> select *from employee;
+--------+-------------+--------------+---------------+
| name   | occupation  | working_date | working_hours |
+--------+-------------+--------------+---------------+
| sharad  | student     | 2023-10-04   | 12            |
| barge   | adancer      | 2023-10-04   | 13            |
| omkar  | engineer    | 2023-10-04   | 8             |
| santosh | doctor      | 2023-10-04   | 14            |
| kunal | scientist   | 2023-10-04   | 22            |
| kartik |businessman     | 2023-10-04   | 11            |
+--------+-------------+--------------+---------------+
6 rows in set (0.00 sec)

mysql> insert into employee values('aniket','doctor','2023-10-4',24);
    -> //
Query OK, 1 row affected (0.07 sec)

mysql> select *from employee;
    -> //
+--------+-------------+--------------+---------------+
| name   | occupation  | working_date | working_hours |
+--------+-------------+--------------+---------------+
| sharad  | student     | 2023-10-04   | 12            |
| barge   | actor       | 2023-10-04   | 13            |
| omkar| engineer    | 2023-10-04   | 8             |
| santosh| doctor      | 2023-10-04   | 14            |
| kunal| scientist   | 2023-10-04   | 22            |
| kartik | businessman | 2023-10-04   | 11            |
| aniket | doctor      | 2023-10-04   | 22            |
+--------+-------------+--------------+--------------
   
mysql> create function bonuss(rad int)
    -> returns int
    -> DETERMINISTIC
    -> begin
    -> declare bn int;
    -> declare bonu int;
    -> set bn=rad-8;
    -> set bonu=1000*bn;
    -> return bonu;
    -> end;
    -> //
Query OK, 0 rows affected (0.11 sec)

mysql> select bonuss(12)
    -> //
+------------+
| bonuss(12) |
+------------+
|       4000 |
+------------+
1 row in set (0.00 sec)

mysql> select bonuss(working_hours) from employee;//
+-----------------------+
| bonuss(working_hours) |
+-----------------------+
|                  4000 |
|                  5000 |
|                     0 |
|                  6000 |
|                 14000 |
|                 3000 |
|                 14000 |
+-----------------------+




mysql> update employee set bonus = bonuss(working_hours);
    -> //
Query OK, 7 rows affected (0.08 sec)
Rows matched: 7  Changed: 7  Warnings: 0

mysql> select *from employee;//
+--------+-------------+--------------+---------------+-------+
| name   | occupation  | working_date | working_hours | bonus |
+--------+-------------+--------------+---------------+-------+
| rohan  | student     | 2023-10-04   | 12            |  4000 |
| raj    | actor       | 2023-10-04   | 13            |  5000 |
| raju   | engineer    | 2023-10-04   | 8             |     0 |
| rajesh | doctor      | 2023-10-04   | 14            |  6000 |
| ramesh | scientist   | 2023-10-04   | 22            | 14000 |
| kartik | businessman | 2023-10-04   | 6             | 3000 |
| aniket | doctor      | 2023-10-04   | 22            | 14000 |
+--------+-------------+--------------+---------------+-------+
7 rows in set (0.00 sec)


mysql> create trigger trigs
    -> before insert on employee for each row
    -> begin
    -> if
    -> new.bonus < 0 then set new.bonus =0;
    -> end if;
    -> end;
    -> //
Query OK, 0 rows affected (0.15 sec)


mysql> select *from employee;//
+--------+-------------+--------------+---------------+-------+
| name   | occupation  | working_date | working_hours | bonus |
+--------+-------------+--------------+---------------+-------+
| rohan  | student     | 2023-10-04   | 12            |  4000 |
| raj    | actor       | 2023-10-04   | 13            |  5000 |
| raju   | engineer    | 2023-10-04   | 8             |     0 |
| rajesh | doctor      | 2023-10-04   | 14            |  6000 |
| ramesh | scientist   | 2023-10-04   | 22            | 14000 |
| kartik | businessman | 2023-10-04   | 6             |     0 |
| aniket | doctor      | 2023-10-04   | 22            | 14000 |
+--------+-------------+--------------+---------------+-------+
7 rows in set (0.00 sec)
