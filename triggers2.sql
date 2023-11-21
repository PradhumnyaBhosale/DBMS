mysql>create table products(productID int,productCode varchar(20),name varchar(50),quantitiy int,price float);
mysql>insert into products values(1002,"PEN","Pen Blue",8000,1.25);
mysql>insert into products values(1003,"PEN","Pen Black",2000,1.25);
mysql>delemiter//
mysql> select * from products;
    -> select * from products//
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1002 | PEN         | Pen Blue  |     8000 |  1.25 |
|      1003 | PEN         | Pen Black |     2000 |  1.25 |
+-----------+-------------+-----------+----------+-------+
2 rows in set (0.00 sec)
mysql> create trigger triga 
      after update 
      on products 
      FOR EACH ROW 
      BEGIN 
      IF OLD.price < 0 THEN UPDATE products SET price = 0; 
      END IF; 
      END;//
mysql> create trigger trig  
        before insert 
        ON products 
        FOR EACH ROW 
        BEGIN 
        IF NEW.price < 0 THEN SET NEW.price = 0; END IF; END;//
        
mysql> insert into products values(1004,"BAG","BACKPACK",4,20)//
Query OK, 1 row affected (0.09 sec)

mysql> insert into products values(1005,"BAG","BACKPACK",4,-20)//
Query OK, 1 row affected (0.09 sec)

mysql> insert into products values(1006,"BAG","BACKPACK",4,-200)//
Query OK, 1 row affected (0.08 sec)

mysql> select *from products;
    -> //
+-----------+-------------+-----------+----------+-------+
| productID | productCode | name      | quantity | price |
+-----------+-------------+-----------+----------+-------+
|      1002 | PEN         | Pen Blue  |     8000 |  1.25 |
|      1003 | PEN         | Pen Black |     2000 |  1.25 |
|      1004 | BAG         | BACKPACK  |        4 | 20.00 |
|      1005 | BAG         | BACKPACK  |        4 |  0.00 |
|      1006 | BAG         | BACKPACK  |        4 |  0.00 |
+-----------+-------------+-----------+----------+-------+
5 rows in set (0.00 sec)


