### Create Table with appropriate Key Constraints for the following schema and execute given queries.

### Schema:
  - `Customer (CID, cname, street, city, phonenumber)`
  - `Product (PID, phame, quantity_available, unitprice)`
  - `Sale (CID, PID, dateofsales)`    Make dateofsale as not NULL  Hint : Use “date” datatype.
  - `Order (OID, PID, SID, dateoforder)`
  - `Supplier (SID, sname, slocation, Quantity)`

### Create a table order if it doesn’t exists with the fields OID, PID, SID, and dateoforder.

## Queries

1.	Add the column name in the sales table as quantitysold.
2.	In the product table, change the datatype of unitprice to float.
3.	Rename the phonenumber as mobilenumber in customer table.
4.	Delete the unitprice column in product table.
5.	Change the datatype of product PID from integer to varchar.
6.	Check the difference between delete and truncate.
7.	Change the datatype of dateofsale from Date to timestamp.
8.	Make OID as auto increment in order table.
9.	Set default value of Quantity to 10 in the Supplier table.
10.	Ensure quantity_available is not less than 10 when entry is made in Product table.
