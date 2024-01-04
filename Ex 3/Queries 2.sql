-- Change the datatype of product PID from integer to varchar.

 /*
Here PID is a foreign key in both Sale and `Order` table. So 1st drop that foreign key.
- Get the name of the foreign key
- Drop the foreign key
 */
SELECT constraint_name FROM information_schema.KEY_COLUMN_USAGE WHERE table_name = 'Sale' AND referenced_table_name = 'Product';
/*
+-----------------+
| constraint_name |
+-----------------+
| sale_ibfk_2     |
+-----------------+
*/
ALTER TABLE Sale DROP FOREIGN KEY sale_ibfk_2;

SELECT constraint_name FROM information_schema.KEY_COLUMN_USAGE WHERE table_name = '`Order`' AND referenced_table_name = 'Product';
/*
+-----------------+
| constraint_name |
+-----------------+
| order_ibfk_1    |
+-----------------+
*/
ALTER TABLE `Order` DROP FOREIGN KEY order_ibfk_1;

ALTER TABLE Product MODIFY PID varchar(10);
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

-- It will only alter the datatype of PID in Product table. The same in Sale & `Order` table remains same.
