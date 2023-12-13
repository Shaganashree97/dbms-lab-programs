# Data Types in MySQL

1. **Int (Integer)**
   - **Description:** Represents whole numbers (positive or negative) without any fractional part.
   - **Syntax:** `INT`
   - **Example:** `age INT`

2. **Float**
   - **Description:** Represents approximate numeric values with a decimal point.
   - **Syntax:** `FLOAT`
   - **Example:** `price FLOAT`

3. **Number**
   - **Description:** Typically represents a numeric value with precision and scale.
   - **Syntax:** `NUMBER(precision, scale)`
   - **Example:** `amount NUMBER(8,2)`

4. **Decimal**
   - **Description:** Represents fixed-point numbers with a specific precision and scale.
   - **Syntax:** `DECIMAL(precision, scale)`
   - **Example:** `salary DECIMAL(10,2)`

5. **Double**
   - **Description:** Represents double-precision floating-point numbers.
   - **Syntax:** `DOUBLE`
   - **Example:** `measurement DOUBLE`

6. **Boolean**
   - **Description:** Represents true or false values.
   - **Syntax:** `BOOLEAN` or `BOOL`
   - **Example:** `is_active BOOLEAN`

7. **Binary**
   - **Description:** Stores binary data, such as images or files.
   - **Syntax:** `BINARY`
   - **Example:** `image_data BINARY`

8. **Yes/No**
   - **Description:** Represents binary or Boolean data often used for yes/no or true/false options.
   - **Syntax:** `YES/NO` or `TRUE/FALSE`
   - **Example:** `is_approved YES/NO`

9. **Enum**
   - **Description:** Represents a set of predefined values that a column can hold.
   - **Syntax:** `ENUM(value1, value2, ...)`
   - **Example:** `status ENUM('active', 'inactive', 'pending')`

10. **Text**
    - **Description:** Stores variable-length character data.
    - **Syntax:** `TEXT`
    - **Example:** `description TEXT`

11. **Char**
    - **Description:** Stores fixed-length character strings.
    - **Syntax:** `CHAR(length)`
    - **Example:** `initial CHAR(1)`

12. **Varchar**
    - **Description:** Stores variable-length character strings with a maximum length.
    - **Syntax:** `VARCHAR(length)`
    - **Example:** `username VARCHAR(50)`

13. **Date**
    - **Description:** Stores date values (year, month, day).
    - **Syntax:** `DATE`
    - **Example:** `dob DATE`

14. **Datetime**
    - **Description:** Stores date and time values.
    - **Syntax:** `DATETIME`
    - **Example:** `created_at DATETIME`

15. **Timestamp**
    - **Description:** Records a timestamp when data is inserted or updated.
    - **Syntax:** `TIMESTAMP`
    - **Example:** `last_updated TIMESTAMP`

16. **Time**
    - **Description:** Stores time values (hour, minute, second).
    - **Syntax:** `TIME`
    - **Example:** `start_time TIME`

17. **Year**
    - **Description:** Stores year values in a two-digit or four-digit format.
    - **Syntax:** `YEAR` or `YEAR(length)`
    - **Example:** `joining_year YEAR(4)`


SQL data types define the kind of data that can be stored in a column of a database table, specifying the range of values and the operations that can be done on those values. The specific syntax might vary slightly between different database management systems (DBMS) like MySQL, PostgreSQL, SQL Server, etc.
