
Setting environment for using XAMPP for Windows.
ADMIN@DESKTOP-I1A3D2Q c:\mysql
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database dmlactivity;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> use dmlactivity
Database changed
MariaDB [dmlactivity]> create table students (
    -> student_id int primary key not null,
    -> name varchar(100) not null,
    -> year_level int default null
    -> );
Query OK, 0 rows affected (0.019 sec)

MariaDB [dmlactivity]> insert into students (student_id, name, year_level) values
    -> (1, 'Joeroz Vicariato', 2),
    -> (2, 'Sander Perejan', 2),
    -> (3, 'Jason Dave Monopollo', 3),
    -> (4, 'Samantha Gabitano', 2),
    -> (5, 'Alliah Shane Salvo', 2),
    -> (6, 'Arfael Baldesco', 1),
    -> (7, 'Kylle Taal', 1),
    -> (8, 'Bianca Ligmon', 1),
    -> (9, 'Maristhel Pondulan', 2),
    -> (10, 'Oscar Jay Ellevera', 2);
Query OK, 10 rows affected (0.037 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [dmlactivity]> select * from students
    -> ;
+------------+----------------------+------------+
| student_id | name                 | year_level |
+------------+----------------------+------------+
|          1 | Joeroz Vicariato     |          2 |
|          2 | Sander Perejan       |          2 |
|          3 | Jason Dave Monopollo |          3 |
|          4 | Samantha Gabitano    |          2 |
|          5 | Alliah Shane Salvo   |          2 |
|          6 | Arfael Baldesco      |          1 |
|          7 | Kylle Taal           |          1 |
|          8 | Bianca Ligmon        |          1 |
|          9 | Maristhel Pondulan   |          2 |
|         10 | Oscar Jay Ellevera   |          2 |
+------------+----------------------+------------+
10 rows in set (0.001 sec)

MariaDB [dmlactivity]> create table courses (
    -> course_id varchar(10) primary key not null,
    -> course_name varchar(100) not null,
    -> units int default null
    -> );
Query OK, 0 rows affected (0.020 sec)

MariaDB [dmlactivity]> insert into courses (course_id, course_name, units) values
    -> ('IT26', 'Fundamentals of Database', 3),
    -> ('IT22', 'Fundamentals of Programming', 3),
    -> ('BA45', 'Business Management', 3);
Query OK, 3 rows affected (0.016 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [dmlactivity]> create table schedule (
    -> schedule_id int primary key auto_increment not null,
    -> student_id int default null,
    -> course_id varchar(10) default null,
    -> day varchar(10) default null,
    -> time_slot varchar(20) default null
    -> );
Query OK, 0 rows affected (0.023 sec)

MariaDB [dmlactivity]> insert into schedule (student_id, course_id, day, time_slot) values
    -> (1, 'IT26', 'Monday', '1:00-2:30'),
    -> (2, 'IT26', 'Monday', '1:00-2:30'),
    -> (3, 'BA45', 'Tuesday', '7:00-9:00'),
    -> (4, 'IT26', 'Monday', '1:00-2:30'),
    -> (5, 'IT26', 'Monday', '1:00-2:30'),
    -> (6, 'IT22', 'Wednesday', '2:30-4:00'),
    -> (7, 'IT22', 'Wednesday', '2:30-4:00'),
    -> (8, 'IT22', 'Wednesday', '2:30-4:00'),
    -> (9, 'BA45', 'Tuesday', '7:00-9:00'),
    -> (10, 'IT26', 'Monday', '1:00-2:30');
Query OK, 10 rows affected (0.016 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [dmlactivity]> select * from schedule
    -> ;
+-------------+------------+-----------+-----------+-----------+
| schedule_id | student_id | course_id | day       | time_slot |
+-------------+------------+-----------+-----------+-----------+
|           1 |          1 | IT26      | Monday    | 1:00-2:30 |
|           2 |          2 | IT26      | Monday    | 1:00-2:30 |
|           3 |          3 | BA45      | Tuesday   | 7:00-9:00 |
|           4 |          4 | IT26      | Monday    | 1:00-2:30 |
|           5 |          5 | IT26      | Monday    | 1:00-2:30 |
|           6 |          6 | IT22      | Wednesday | 2:30-4:00 |
|           7 |          7 | IT22      | Wednesday | 2:30-4:00 |
|           8 |          8 | IT22      | Wednesday | 2:30-4:00 |
|           9 |          9 | BA45      | Tuesday   | 7:00-9:00 |
|          10 |         10 | IT26      | Monday    | 1:00-2:30 |
+-------------+------------+-----------+-----------+-----------+
10 rows in set (0.001 sec)

MariaDB [dmlactivity]> select * from schedule where day = 'Monday';
+-------------+------------+-----------+--------+-----------+
| schedule_id | student_id | course_id | day    | time_slot |
+-------------+------------+-----------+--------+-----------+
|           1 |          1 | IT26      | Monday | 1:00-2:30 |
|           2 |          2 | IT26      | Monday | 1:00-2:30 |
|           4 |          4 | IT26      | Monday | 1:00-2:30 |
|           5 |          5 | IT26      | Monday | 1:00-2:30 |
|          10 |         10 | IT26      | Monday | 1:00-2:30 |
+-------------+------------+-----------+--------+-----------+
5 rows in set (0.001 sec)

MariaDB [dmlactivity]> select * from schedule
    -> ;
+-------------+------------+-----------+-----------+-----------+
| schedule_id | student_id | course_id | day       | time_slot |
+-------------+------------+-----------+-----------+-----------+
|           1 |          1 | IT26      | Monday    | 1:00-2:30 |
|           2 |          2 | IT26      | Monday    | 1:00-2:30 |
|           3 |          3 | BA45      | Tuesday   | 7:00-9:00 |
|           4 |          4 | IT26      | Monday    | 1:00-2:30 |
|           5 |          5 | IT26      | Monday    | 1:00-2:30 |
|           6 |          6 | IT22      | Wednesday | 2:30-4:00 |
|           7 |          7 | IT22      | Wednesday | 2:30-4:00 |
|           8 |          8 | IT22      | Wednesday | 2:30-4:00 |
|           9 |          9 | BA45      | Tuesday   | 7:00-9:00 |
|          10 |         10 | IT26      | Monday    | 1:00-2:30 |
+-------------+------------+-----------+-----------+-----------+
10 rows in set (0.001 sec)

MariaDB [dmlactivity]> update schedule
    -> set day = 'Thursday', time_slot = '10:00-12:00'
    -> where student_id = '3' and course_id = 'BA45';
Query OK, 1 row affected (0.011 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [dmlactivity]> select * from schedule
    -> ;
+-------------+------------+-----------+-----------+-------------+
| schedule_id | student_id | course_id | day       | time_slot   |
+-------------+------------+-----------+-----------+-------------+
|           1 |          1 | IT26      | Monday    | 1:00-2:30   |
|           2 |          2 | IT26      | Monday    | 1:00-2:30   |
|           3 |          3 | BA45      | Thursday  | 10:00-12:00 |
|           4 |          4 | IT26      | Monday    | 1:00-2:30   |
|           5 |          5 | IT26      | Monday    | 1:00-2:30   |
|           6 |          6 | IT22      | Wednesday | 2:30-4:00   |
|           7 |          7 | IT22      | Wednesday | 2:30-4:00   |
|           8 |          8 | IT22      | Wednesday | 2:30-4:00   |
|           9 |          9 | BA45      | Tuesday   | 7:00-9:00   |
|          10 |         10 | IT26      | Monday    | 1:00-2:30   |
+-------------+------------+-----------+-----------+-------------+
10 rows in set (0.001 sec)

MariaDB [dmlactivity]> select * from schedule
    -> ;
+-------------+------------+-----------+-----------+-------------+
| schedule_id | student_id | course_id | day       | time_slot   |
+-------------+------------+-----------+-----------+-------------+
|           1 |          1 | IT26      | Monday    | 1:00-2:30   |
|           2 |          2 | IT26      | Monday    | 1:00-2:30   |
|           3 |          3 | BA45      | Thursday  | 10:00-12:00 |
|           4 |          4 | IT26      | Monday    | 1:00-2:30   |
|           5 |          5 | IT26      | Monday    | 1:00-2:30   |
|           6 |          6 | IT22      | Wednesday | 2:30-4:00   |
|           7 |          7 | IT22      | Wednesday | 2:30-4:00   |
|           8 |          8 | IT22      | Wednesday | 2:30-4:00   |
|           9 |          9 | BA45      | Tuesday   | 7:00-9:00   |
|          10 |         10 | IT26      | Monday    | 1:00-2:30   |
+-------------+------------+-----------+-----------+-------------+
10 rows in set (0.001 sec)

MariaDB [dmlactivity]> delete from schedule
    -> where student_id = '9'  and course_id = 'BA45';
Query OK, 1 row affected (0.009 sec)

MariaDB [dmlactivity]> select * from schedule
    -> ;
+-------------+------------+-----------+-----------+-------------+
| schedule_id | student_id | course_id | day       | time_slot   |
+-------------+------------+-----------+-----------+-------------+
|           1 |          1 | IT26      | Monday    | 1:00-2:30   |
|           2 |          2 | IT26      | Monday    | 1:00-2:30   |
|           3 |          3 | BA45      | Thursday  | 10:00-12:00 |
|           4 |          4 | IT26      | Monday    | 1:00-2:30   |
|           5 |          5 | IT26      | Monday    | 1:00-2:30   |
|           6 |          6 | IT22      | Wednesday | 2:30-4:00   |
|           7 |          7 | IT22      | Wednesday | 2:30-4:00   |
|           8 |          8 | IT22      | Wednesday | 2:30-4:00   |
|          10 |         10 | IT26      | Monday    | 1:00-2:30   |
+-------------+------------+-----------+-----------+-------------+
9 rows in set (0.001 sec)

MariaDB [dmlactivity]> delete from students where student_id = '8';
Query OK, 1 row affected (0.010 sec)

MariaDB [dmlactivity]> select * from students
    -> ;
+------------+----------------------+------------+
| student_id | name                 | year_level |
+------------+----------------------+------------+
|          1 | Joeroz Vicariato     |          2 |
|          2 | Sander Perejan       |          2 |
|          3 | Jason Dave Monopollo |          3 |
|          4 | Samantha Gabitano    |          2 |
|          5 | Alliah Shane Salvo   |          2 |
|          6 | Arfael Baldesco      |          1 |
|          7 | Kylle Taal           |          1 |
|          9 | Maristhel Pondulan   |          2 |
|         10 | Oscar Jay Ellevera   |          2 |
+------------+----------------------+------------+
9 rows in set (0.000 sec)

MariaDB [dmlactivity]> alter table 'students'
    -> add primary key ('student_id');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''students'
add primary key ('student_id')' at line 1
MariaDB [dmlactivity]>
