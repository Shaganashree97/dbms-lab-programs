-- Change the datatype of dateofsale from Date to timestamp.
ALTER TABLE Sale MODIFY dateofsales TIMESTAMP;
DESC Sale;

/*
Output:
+---------------+-----------+------+-----+---------------------+-------------------------------+
| Field         | Type      | Null | Key | Default             | Extra                         |
+---------------+-----------+------+-----+---------------------+-------------------------------+
| CID           | int(11)   | YES  | MUL | NULL                |                               |
| PID           | int(11)   | YES  | MUL | NULL                |                               |
| dateofsales   | timestamp | NO   |     | current_timestamp() | on update current_timestamp() |
| quantity_sold | int(11)   | YES  |     | NULL                |                               |
+---------------+-----------+------+-----+---------------------+-------------------------------+
*/

-- Make OID as auto increment in order table.
ALTER TABLE `Order` MODIFY OID INT AUTO_INCREMENT;
DESC `Order`;

/*
Output:
+-------------+---------+------+-----+---------+----------------+
| Field       | Type    | Null | Key | Default | Extra          |
+-------------+---------+------+-----+---------+----------------+
| OID         | int(11) | NO   | PRI | NULL    | auto_increment |
| PID         | int(11) | YES  | MUL | NULL    |                |
| SID         | int(11) | YES  | MUL | NULL    |                |
| dateoforder | date    | YES  |     | NULL    |                |
+-------------+---------+------+-----+---------+----------------+
*/

-- Set default value of Quantity to 10 in the Supplier table.
ALTER TABLE Supplier ALTER Quantity SET DEFAULT 10;
DESC Supplier;

/*
Output:
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| SID       | int(11)     | NO   | PRI | NULL    |       |
| sname     | varchar(50) | YES  |     | NULL    |       |
| slocation | varchar(50) | YES  |     | NULL    |       |
| Quantity  | int(11)     | YES  |     | 10      |       |
+-----------+-------------+------+-----+---------+-------+
*/

-- Ensure quantity_available is not less than 10 when entry is made in Product table.
ALTER TABLE Product ADD CONSTRAINT CHECK (quantity_available >= 10); -- ALTER TABLE Product ADD CHECK (quantity_available >= 10);
DESC Product;

/*
Output:
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| PID                | varchar(10) | NO   | PRI | NULL    |       |
| pname              | varchar(50) | YES  |     | NULL    |       |
| quantity_available | int(11)     | YES  |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
*/
