CREATE TABLE student (
  student_id INT PRIMARY KEY,
  student_name varchar(30),
  DOB date,
  street varchar(30),
  city varchar(30),
  state varchar(20),
  pin int,
  course_id int
);

CREATE TABLE lecturer(
lecturer_id int PRIMARY KEY,
lecturer_name varchar(30),
course_id int
);
CREATE TABLE course(
course_id int PRIMARY KEY,
course_name varchar(30)
);


CREATE TABLE subject(
subject_id int PRIMARY KEY,
subject_name varchar(30),
lecturer_id int
);

CREATE TABLE student_hobby(
student_id int,
hobby varchar(30)
);

ALTER TABLE student_hobby
ADD FOREIGN KEY (student_id) REFERENCES student(student_id);

ALTER TABLE student
ADD FOREIGN KEY (course_id) REFERENCES course(course_id);

ALTER TABLE lecturer
ADD FOREIGN KEY (course_id) REFERENCES course(course_id);

ALTER TABLE subject
ADD FOREIGN KEY (lecturer_id) REFERENCES lecturer(lecturer_id);

insert into course values(101,"Data Analysis"),(102,"web Developement"),(103,"Data Science"),(104,"Cloud Computing"),(105,"Block Chain"),(106,"Android Developer");

INSERT INTO student  VALUES (1001, "Barge", "2004-5-30","nerul_road","Nerul","maharashtra",131108,101);
INSERT INTO student  VALUES (1002, "Atharv", "2004-6-30","Latur_road","Latur","maharashtra",131109,102);
INSERT INTO student  VALUES (1003, "Kshitij", "2004-7-30","nanded-ROAD","Nanded","maharashtra",131110,103);
INSERT INTO student  VALUES (1004, "Shubham", "2004-8-30","Pandharpur_road","Pandharpur","maharashtra",131111,104);
INSERT INTO student  VALUES (1005, "Vedu", "2004-9-30","Ahmed nagar road","Ahmed_nagar","maharashtra",131112,105);
INSERT INTO student  VALUES (1006, "Shubhu", "2004-10-30","Mumbai_way","Mumbai","maharashtra",131113,106);


INSERT INTO student_hobby VALUES(1001,"Cycling"),(1002,"Swimming"),(1003,"Riding"),(1004,"Reading"),(1005,"Dancing"),(1006,"Singing");

INSERT INTO lecturer VALUES(1,"Patil Sir",101),(2,"Jadhav Mam",102),(3,"Gawai Sir",103),(4,"Chandan Sir",104),(5,"Shraddha Mam",105),(6,"Chawre Sir",106);

INSERT INTO subject VALUES(11,"Python",1),(12,"HTML",2),(13,"R Language",3),(14,"Data Mining",4),(15,"Block Chain",5),(16,"Android",6);

ALTER TABLE lecturer ADD Salary INT default 50000;


SELECT * from student ;
select * from student_hobby;
select * from lecturer;
select * from course;
select * from subject;
SELECT * from student Where city="Pandharpur";

update lecturer set salary=100000 where lecturer_name ="Jadhav Mam"; 
select * from lecturer;

Create View New AS
select * from student;

select * from New;

select avg(salary) from lecturer;
select sum(salary) from lecturer;

 DELIMITER //
/*create trigger new
before insert on lecturer for each row
 begin
IF NEW.salary < 0 THEN SET NEW.salary = 0;
END IF;
END//
*/



 CREATE PROCEDURE FIND(sid int)
  BEGIN
 select *from lecturer where lecturer_id=sid;
 END //

call FIND(1)//



DELIMITER ;
select * from lecturer natural join course;

create function func(rad INT)
     returns INT
     DETERMINISTIC
     BEGIN
     DECLARE ar INT;
     SET ar = 0;
     SET ar = 3*rad*rad;
     return ar;
     END;
     //
     
     func(4);
     




    

    
    
    
    
    
    
    









