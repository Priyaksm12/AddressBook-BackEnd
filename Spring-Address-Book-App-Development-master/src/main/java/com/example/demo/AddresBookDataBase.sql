mysql> show tables;
+------------------------+
| Tables_in_address_book |
+------------------------+
| address                |
| address_book           |
| hibernate_sequence     |
+------------------------+
3 rows in set (0.01 sec)

mysql> Select * from address;
+----+-------+---------------+------------+-----------+--------------+---------+--------+
| id | city  | email         | first_name | last_name | phone_number | state   | zip    |
+----+-------+---------------+------------+-----------+--------------+---------+--------+
|  1 | delhi | don@gmail.com | piyush     | verma     |   9898989898 | haryana | 121001 |
+----+-------+---------------+------------+-----------+--------------+---------+--------+
1 row in set (0.01 sec)

mysql> Select * from address;
+----+----------+-----------------+------------+-----------+--------------+---------+--------+
| id | city     | email           | first_name | last_name | phone_number | state   | zip    |
+----+----------+-----------------+------------+-----------+--------------+---------+--------+
|  1 | delhi    | don@gmail.com   | piyush     | verma     |   9898989898 | haryana | 121001 |
|  2 | delhi    | nikhilgmail.com | Nikhil     | Bhatia    |   9999998786 | haryana | 121001 |
|  3 | Fridabad | pankajgmail.com | Pankaj     | Verma     |   9878676765 | haryana | 121001 |
|  4 | Ambala   | vivekgmail.com  | Vivek      | Sharma    |   9876765545 | haryana | 120116 |
+----+----------+-----------------+------------+-----------+--------------+---------+--------+
4 rows in set (0.00 sec)
+----+----------+------------------+------------+-----------+--------------+---------+--------+
| id | city     | email            | first_name | last_name | phone_number | state   | zip    |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
|  1 | delhi    | don@gmail.com    | piyush     | verma     |   9898989898 | haryana | 121001 |
|  2 | delhi    | nikhilgmail.com  | Nikhil     | Bhatia    |   9999998786 | haryana | 121001 |
|  3 | Fridabad | pankajgmail.com  | Pankaj     | Verma     |   9878676765 | haryana | 121001 |
|  4 | Ambala   | vivekgmail.com   | Vivek      | Sharma    |   9876765545 | haryana | 120116 |
|  6 | Dubai    | vivek@gmail.com  | Nikhil     | Sharma    |   9876765545 | haryana | 120116 |
|  7 | Mumbai   | vivek@gmail.com  | Raj        | Sharma    |   9876765545 | Mumbai  | 120116 |
|  8 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
7 rows in set (0.04 sec)

mysql> select * from address_book order by city
                                               -> ;
Empty set (0.00 sec)

mysql> select * from address_book order by city;
Empty set (0.00 sec)

mysql> Select * from address_book;
Empty set (0.00 sec)

mysql> Select * from address;
+----+----------+------------------+------------+-----------+--------------+---------+--------+
| id | city     | email            | first_name | last_name | phone_number | state   | zip    |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
|  1 | delhi    | don@gmail.com    | piyush     | verma     |   9898989898 | haryana | 121001 |
|  2 | delhi    | nikhilgmail.com  | Nikhil     | Bhatia    |   9999998786 | haryana | 121001 |
|  3 | Fridabad | pankajgmail.com  | Pankaj     | Verma     |   9878676765 | haryana | 121001 |
|  4 | Ambala   | vivekgmail.com   | Vivek      | Sharma    |   9876765545 | haryana | 120116 |
|  6 | Dubai    | vivek@gmail.com  | Nikhil     | Sharma    |   9876765545 | haryana | 120116 |
|  7 | Mumbai   | vivek@gmail.com  | Raj        | Sharma    |   9876765545 | Mumbai  | 120116 |
|  8 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
|  9 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
8 rows in set (0.00 sec)

mysql> select * from address order by city;
+----+----------+------------------+------------+-----------+--------------+---------+--------+
| id | city     | email            | first_name | last_name | phone_number | state   | zip    |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
|  4 | Ambala   | vivekgmail.com   | Vivek      | Sharma    |   9876765545 | haryana | 120116 |
|  1 | delhi    | don@gmail.com    | piyush     | verma     |   9898989898 | haryana | 121001 |
|  2 | delhi    | nikhilgmail.com  | Nikhil     | Bhatia    |   9999998786 | haryana | 121001 |
|  6 | Dubai    | vivek@gmail.com  | Nikhil     | Sharma    |   9876765545 | haryana | 120116 |
|  3 | Fridabad | pankajgmail.com  | Pankaj     | Verma     |   9878676765 | haryana | 121001 |
|  8 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
|  9 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
|  7 | Mumbai   | vivek@gmail.com  | Raj        | Sharma    |   9876765545 | Mumbai  | 120116 |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
8 rows in set (0.00 sec)

mysql> select * from address order by city;
+----+----------+------------------+------------+-----------+--------------+---------+--------+
| id | city     | email            | first_name | last_name | phone_number | state   | zip    |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
|  4 | Ambala   | vivekgmail.com   | Vivek      | Sharma    |   9876765545 | haryana | 120116 |
|  1 | delhi    | don@gmail.com    | piyush     | verma     |   9898989898 | haryana | 121001 |
|  2 | delhi    | nikhilgmail.com  | Nikhil     | Bhatia    |   9999998786 | haryana | 121001 |
|  6 | Dubai    | vivek@gmail.com  | Nikhil     | Sharma    |   9876765545 | haryana | 120116 |
|  3 | Fridabad | pankajgmail.com  | Pankaj     | Verma     |   9878676765 | haryana | 121001 |
|  8 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
|  9 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
|  7 | Mumbai   | vivek@gmail.com  | Raj        | Sharma    |   9876765545 | Mumbai  | 120116 |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
8 rows in set (0.00 sec)

mysql> select * from address order by state;
+----+----------+------------------+------------+-----------+--------------+---------+--------+
| id | city     | email            | first_name | last_name | phone_number | state   | zip    |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
|  1 | delhi    | don@gmail.com    | piyush     | verma     |   9898989898 | haryana | 121001 |
|  2 | delhi    | nikhilgmail.com  | Nikhil     | Bhatia    |   9999998786 | haryana | 121001 |
|  3 | Fridabad | pankajgmail.com  | Pankaj     | Verma     |   9878676765 | haryana | 121001 |
|  4 | Ambala   | vivekgmail.com   | Vivek      | Sharma    |   9876765545 | haryana | 120116 |
|  6 | Dubai    | vivek@gmail.com  | Nikhil     | Sharma    |   9876765545 | haryana | 120116 |
|  8 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
|  9 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
|  7 | Mumbai   | vivek@gmail.com  | Raj        | Sharma    |   9876765545 | Mumbai  | 120116 |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
8 rows in set (0.00 sec)

mysql> select * from address order by zip;
+----+----------+------------------+------------+-----------+--------------+---------+--------+
| id | city     | email            | first_name | last_name | phone_number | state   | zip    |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
|  4 | Ambala   | vivekgmail.com   | Vivek      | Sharma    |   9876765545 | haryana | 120116 |
|  6 | Dubai    | vivek@gmail.com  | Nikhil     | Sharma    |   9876765545 | haryana | 120116 |
|  7 | Mumbai   | vivek@gmail.com  | Raj        | Sharma    |   9876765545 | Mumbai  | 120116 |
|  8 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
|  9 | Himachal | Robert@gmail.com | Bill       | Robert    |   9898998767 | Mandi   | 120145 |
|  1 | delhi    | don@gmail.com    | piyush     | verma     |   9898989898 | haryana | 121001 |
|  2 | delhi    | nikhilgmail.com  | Nikhil     | Bhatia    |   9999998786 | haryana | 121001 |
|  3 | Fridabad | pankajgmail.com  | Pankaj     | Verma     |   9878676765 | haryana | 121001 |
+----+----------+------------------+------------+-----------+--------------+---------+--------+
8 rows in set (0.00 sec)

