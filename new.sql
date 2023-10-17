Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| DB1                 |
| DB2                 |
| MYDBL               |
| aarya               |
| ash                 |
| bank_info           |
| bank_management     |
| db1                 |
| db2                 |
| db3                 |
| hospital_management |
| ht1                 |
| information_schema  |
| jspm                |
| k                   |
| khb                 |
| khb1                |
| my                  |
| myQB                |
| mybank_info         |
| mydb                |
| mys                 |
| mysql               |
| new1                |
| performance_schema  |
| pradhumna           |
| pranit              |
| suyash              |
| sys                 |
| vj3                 |
+---------------------+
30 rows in set (0.03 sec)

mysql> use jspm
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+----------------+
| Tables_in_jspm |
+----------------+
| course         |
| employee       |
| student        |
+----------------+
3 rows in set (0.00 sec)

mysql> select *from course;
+------------+--------------+------+
| weekday    | scheduletime | e_id |
+------------+--------------+------+
| Mon to Wed | 8AM to 9AM   |    1 |
| Tue to Thu | 10AM to 11AM |    2 |
| Mon to Sun | 12AM to 1PM  |    3 |
| Tue to Sat | 12AM to 2PM  |    4 |
+------------+--------------+------+
4 rows in set (0.00 sec)

mysql> select *from employee;
+------+-----------+---------+--------+----------------+
| e_id | name      | address | gender | marital_status |
+------+-----------+---------+--------+----------------+
|    1 | pranav    | nanded  | M      |              1 |
|    2 | shubham   | Beed    | M      |              1 |
|    3 | shriyansh | vadgaon | M      |              0 |
|    4 | shahid    | paltan  | M      |              1 |
|    5 | prachi    | pune    | F      |              0 |
+------+-----------+---------+--------+----------------+
5 rows in set (0.00 sec)

mysql> select *from student;
+------+-------+------+
| e_id | class | age  |
+------+-------+------+
|    1 | FYIT  |   19 |
|    2 | SYIT  |   20 |
|    3 | TYCS  |   18 |
|    4 | FYIT  |   19 |
+------+-------+------+
4 rows in set (0.00 sec)

mysql> select *from student,employee;
+------+-------+------+------+-----------+---------+--------+----------------+
| e_id | class | age  | e_id | name      | address | gender | marital_status |
+------+-------+------+------+-----------+---------+--------+----------------+
|    4 | FYIT  |   19 |    1 | pranav    | nanded  | M      |              1 |
|    3 | TYCS  |   18 |    1 | pranav    | nanded  | M      |              1 |
|    2 | SYIT  |   20 |    1 | pranav    | nanded  | M      |              1 |
|    1 | FYIT  |   19 |    1 | pranav    | nanded  | M      |              1 |
|    4 | FYIT  |   19 |    2 | shubham   | Beed    | M      |              1 |
|    3 | TYCS  |   18 |    2 | shubham   | Beed    | M      |              1 |
|    2 | SYIT  |   20 |    2 | shubham   | Beed    | M      |              1 |
|    1 | FYIT  |   19 |    2 | shubham   | Beed    | M      |              1 |
|    4 | FYIT  |   19 |    3 | shriyansh | vadgaon | M      |              0 |
|    3 | TYCS  |   18 |    3 | shriyansh | vadgaon | M      |              0 |
|    2 | SYIT  |   20 |    3 | shriyansh | vadgaon | M      |              0 |
|    1 | FYIT  |   19 |    3 | shriyansh | vadgaon | M      |              0 |
|    4 | FYIT  |   19 |    4 | shahid    | paltan  | M      |              1 |
|    3 | TYCS  |   18 |    4 | shahid    | paltan  | M      |              1 |
|    2 | SYIT  |   20 |    4 | shahid    | paltan  | M      |              1 |
|    1 | FYIT  |   19 |    4 | shahid    | paltan  | M      |              1 |
|    4 | FYIT  |   19 |    5 | prachi    | pune    | F      |              0 |
|    3 | TYCS  |   18 |    5 | prachi    | pune    | F      |              0 |
|    2 | SYIT  |   20 |    5 | prachi    | pune    | F      |              0 |
|    1 | FYIT  |   19 |    5 | prachi    | pune    | F      |              0 |
+------+-------+------+------+-----------+---------+--------+----------------+
20 rows in set (0.00 sec)

mysql> select *from student,employee on employee.eid=student.eid;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on employee.eid=student.eid' at line 1
mysql> select *from student,employee on employee.e_id=student.e_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on employee.e_id=student.e_id' at line 1
mysql> select *from student,employee on employee.e_id=student.e_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on employee.e_id=student.e_id' at line 1
mysql> select *from student,employee where employee.e_id=student.e_id;
+------+-------+------+------+-----------+---------+--------+----------------+
| e_id | class | age  | e_id | name      | address | gender | marital_status |
+------+-------+------+------+-----------+---------+--------+----------------+
|    1 | FYIT  |   19 |    1 | pranav    | nanded  | M      |              1 |
|    2 | SYIT  |   20 |    2 | shubham   | Beed    | M      |              1 |
|    3 | TYCS  |   18 |    3 | shriyansh | vadgaon | M      |              0 |
|    4 | FYIT  |   19 |    4 | shahid    | paltan  | M      |              1 |
+------+-------+------+------+-----------+---------+--------+----------------+
4 rows in set (0.00 sec)

mysql> select *from student natural join employee on employee.e_id=student.e_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on employee.e_id=student.e_id' at line 1
mysql> select *from student natural join employee where employee.e_id=student.e_id;
+------+-------+------+-----------+---------+--------+----------------+
| e_id | class | age  | name      | address | gender | marital_status |
+------+-------+------+-----------+---------+--------+----------------+
|    1 | FYIT  |   19 | pranav    | nanded  | M      |              1 |
|    2 | SYIT  |   20 | shubham   | Beed    | M      |              1 |
|    3 | TYCS  |   18 | shriyansh | vadgaon | M      |              0 |
|    4 | FYIT  |   19 | shahid    | paltan  | M      |              1 |
+------+-------+------+-----------+---------+--------+----------------+
4 rows in set (0.00 sec)

mysql> select *from student natural join employee;
+------+-------+------+-----------+---------+--------+----------------+
| e_id | class | age  | name      | address | gender | marital_status |
+------+-------+------+-----------+---------+--------+----------------+
|    1 | FYIT  |   19 | pranav    | nanded  | M      |              1 |
|    2 | SYIT  |   20 | shubham   | Beed    | M      |              1 |
|    3 | TYCS  |   18 | shriyansh | vadgaon | M      |              0 |
|    4 | FYIT  |   19 | shahid    | paltan  | M      |              1 |
+------+-------+------+-----------+---------+--------+----------------+
4 rows in set (0.00 sec)

mysql> select name,address from student natural join employee where class="FYIT";
+--------+---------+
| name   | address |
+--------+---------+
| pranav | nanded  |
| shahid | paltan  |
+--------+---------+
2 rows in set (0.00 sec)

mysql> select *from employee where e_id in(select e_id from student where class in("FYIT","SYIT");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select *from employee where e_id in(select e_id from student where class in("FYIT","SYIT"));
+------+---------+---------+--------+----------------+
| e_id | name    | address | gender | marital_status |
+------+---------+---------+--------+----------------+
|    1 | pranav  | nanded  | M      |              1 |
|    2 | shubham | Beed    | M      |              1 |
|    4 | shahid  | paltan  | M      |              1 |
+------+---------+---------+--------+----------------+
3 rows in set (0.01 sec)

mysql> select *from employee where marital_status=1 group by gender;
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'jspm.employee.e_id' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
mysql> select gender from employee where marital_status=1 group by gender;
+--------+
| gender |
+--------+
| M      |
+--------+
1 row in set (0.00 sec)

mysql> select *from student where e_id in(select e_id from employee where gender ="M" );
+------+-------+------+
| e_id | class | age  |
+------+-------+------+
|    1 | FYIT  |   19 |
|    2 | SYIT  |   20 |
|    3 | TYCS  |   18 |
|    4 | FYIT  |   19 |
+------+-------+------+
4 rows in set (0.00 sec)

mysql> select *from student where e_id in(select e_id from employee where gender ="M" ) ORDER BY age;
+------+-------+------+
| e_id | class | age  |
+------+-------+------+
|    3 | TYCS  |   18 |
|    1 | FYIT  |   19 |
|    4 | FYIT  |   19 |
|    2 | SYIT  |   20 |
+------+-------+------+
4 rows in set (0.00 sec)

mysql> 

