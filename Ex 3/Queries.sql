-- Add the column name in the sales table as quantitysold.
ALTER TABLE Sale ADD Quantity_sold INT;
DESC Sale;

/*
Output:
+---------------+---------+------+-----+---------+-------+
| Field         | Type    | Null | Key | Default | Extra |
+---------------+---------+------+-----+---------+-------+
| CID           | int(11) | YES  | MUL | NULL    |       |
| PID           | int(11) | YES  | MUL | NULL    |       |
| dateofsales   | date    | NO   |     | NULL    |       |
| Quantity_sold | int(11) | YES  |     | NULL    |       |
+---------------+---------+------+-----+---------+-------+
*/

-- In the product table, change the datatype of unitprice to float.
ALTER TABLE Product MODIFY unitprice FLOAT;
DESC Product;

/*
Output:
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| PID                | int(11)     | NO   | PRI | NULL    |       |
| pname              | varchar(50) | YES  |     | NULL    |       |
| quantity_available | int(11)     | YES  |     | NULL    |       |
| unitprice          | float       | YES  |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
*/

-- Rename the phonenumber as mobilenumber in customer table.
ALTER TABLE Customer CHANGE phonenumber mobilenumber varchar(15);
DESC Customer;

/*
Output:
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| CID          | int(11)     | NO   | PRI | NULL    |       |
| cname        | varchar(50) | YES  |     | NULL    |       |
| street       | varchar(50) | YES  |     | NULL    |       |
| city         | varchar(50) | YES  |     | NULL    |       |
| mobilenumber | varchar(15) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
*/

-- Delete the unitprice column in product table.
ALTER TABLE Product DROP unitprice;
DESC Product;

/*
Output:
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| PID                | int(11)     | NO   | PRI | NULL    |       |
| pname              | varchar(50) | YES  |     | NULL    |       |
| quantity_available | int(11)     | YES  |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
*/

-- Change the datatype of product PID from integer to varchar.


/*
Output:

*/
/*
Check the difference between delete and truncate.
*/
-- Change the datatype of dateofsale from Date to timestamp.


/*
Output:

*/
-- Make OID as auto increment in order table.


/*
Output:

*/
-- Set default value of Quantity to 10 in the Supplier table.


/*
Output:

*/
-- Ensure quantity_available is not less than 10 when entry is made in Product table.


/*
Output:

*/
