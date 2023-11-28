CREATE TABLE jspm (
    ->    ID INT PRIMARY KEY,
    ->    TITLE VARCHAR(100),
    ->    AUTHOR VARCHAR(40),
    ->    DATE VARCHAR(40)
    -> );//
Query OK, 0 rows affected (1.33 sec)

insert into jspm values(1, 'Java', 'Sharad', '2019-07-01');
    -> insert into tutorials values(2, 'WEb', 'Barge', '2020-05-01');
    -> insert into tutorials values(3, 'JavaS', 'Amit', '2020-05-01');
    -> insert into tutorials values(4, 'Android', 'Parth', '2020-03-01');
    -> insert into tutorials values(5, 'R language', 'Pruthvi', '2021-05-08');
CREATE TABLE backup (
    ->    ID INT,
    ->    TITLE VARCHAR(100),
    ->    AUTHOR VARCHAR(40),
    ->    DATE VARCHAR(40)
    -> )//
DELIMITER //
mysql> CREATE PROCEDURE ExampleProc()
    ->    BEGIN
    ->       DECLARE done INT DEFAULT 0;
    ->       DECLARE T_ID INTEGER;
    ->       DECLARE T_Title, T_Author, T_Date VARCHAR(20);
    ->       DECLARE cur CURSOR FOR SELECT * FROM jspm;
    ->       DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    ->       OPEN cur;
    ->       label: LOOP
    ->       FETCH cur INTO T_ID, T_Title, T_Author, T_Date;
    ->       INSERT INTO backup VALUES(T_ID, T_Title, T_Author, T_Date);
    ->       IF done = 1 THEN LEAVE label;
    ->       END IF;
    ->       END LOOP;
    ->       CLOSE cur;
    ->    END//
Query OK, 0 rows affected (0.26 sec)
mysql> DELIMITER ;
mysql> CALL ExampleProc;
Query OK, 1 row affected (1.12 sec)

mysql> select *from backup
    -> ;
+------+-------------+---------+------------+
| ID   | TITLE       | AUTHOR  | DATE       |
+------+-------------+---------+------------+
|    1 | Java        | Krishna | 2019-09-01 |
|    2 | JFreeCharts | Satish  | 2019-05-01 |
|    3 | JavaSprings | Amit    | 2019-05-01 |
|    4 | Android     | Ram     | 2019-03-01 |
|    5 | Cassandra   | Pruthvi | 2019-04-06 |
|    5 | Cassandra   | Pruthvi | 2019-04-06 |
+------+-------------+---------+------------+
6 rows in set (0.00 sec)

