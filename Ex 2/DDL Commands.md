# DDL - Data Definition Language
- It is a subset of SQL (Structured Query Language) used for defining and managing the structure of a database.
- DDL statements are responsible for creating, altering, and dropping database objects, such as databases, tables, indexes, views, procedures, triggers, and more.

## Key characteristics of DDL include:

- *Defining Structure:* DDL allows users to define the structure and organization of data in a database.

- *Irreversible Changes:* DDL statements result in permanent changes to the database structure, and some operations, like dropping a table, cannot be undone.

- *Schema Manipulation:* DDL statements are used to define the schema or structure of the database, including tables, their columns, data types, constraints, etc.


### 1. CREATE
- **Purpose:** Used to create a database or table structure.
  - **Syntax for Database:** `CREATE DATABASE <database_name>;`
    - *Example:* `CREATE DATABASE student;`
  - **Syntax for Table:** `CREATE TABLE <table_name> (column_name_1 column_definition, column_name_2 column_definition, ..., column_name_n column_definition);`
    - *Example:* `CREATE TABLE student(SNo number(5), name varchar(15), dob date, address varchar(20));`

### 2. ALTER
- **Purpose:** Modify the structure of a table.
  - **a) MODIFY:** Alter the column definition.
    - *Syntax:* `ALTER TABLE <table_name> MODIFY column_name_1 column_definition, MODIFY column_name_2 column_definition;`
    - *Example:* `ALTER TABLE student MODIFY name varchar(20), MODIFY age int(3);`
  - **b) CHANGE:** Modify column name and definition.
    - *Syntax:* `ALTER TABLE <table_name> CHANGE old_column_name new_column_name_1 column_definition, CHANGE old_column_name_2 new_column_name_2 column_definition;`
    - *Example:* `ALTER TABLE student CHANGE name firstname varchar(20);`
  - **c) ADD:** Add new fields to the table.
    - *Syntax:* `ALTER TABLE <table_name> ADD column_name_1 column_definition, ... ADD column_name_n column_definition;`
    - *Example:* `ALTER TABLE student ADD mark number(5);`
  - **d) DROP:** Remove existing fields from the table.
    - *Syntax:* `ALTER TABLE <table_name> DROP column_name;`
    - *Example:* `ALTER TABLE student DROP name;`
  - **e) RENAME TO:** Rename the table in the database.
    - *Syntax:* `ALTER TABLE <old_table_name> RENAME TO <new_table_name>;`
    - *Example:* `ALTER TABLE tb1 RENAME TO tb2;`

### 3. TRUNCATE
- **Purpose:** Delete all records from a table while retaining the table's structure.
  - **Syntax:** `TRUNCATE TABLE <table_name>;`
  - *Example:* `TRUNCATE TABLE student;`

### 4. DROP
- **Purpose:** Remove the table from the database.
  - **Syntax:** `DROP TABLE <table_name>;`
  - *Example:* `DROP TABLE student;`

Mastering these commands and understanding their syntax and use cases will greatly assist in managing and altering the structure of database objects effectively in MySQL.
