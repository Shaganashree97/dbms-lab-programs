-- Creating the 'Customer' table
CREATE TABLE IF NOT EXISTS customer (
    CID INT PRIMARY KEY NOT NULL,
    cname VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    phonenumber VARCHAR(20)
);

-- Creating the 'Product' table
CREATE TABLE IF NOT EXISTS Product (
    PID INT PRIMARY KEY NOT NULL,
    pname VARCHAR(50),
    quantity_available INT,
    unitprice DECIMAL(10, 2)
);

-- Creating the 'Sale' table
CREATE TABLE IF NOT EXISTS Sale (
    CID INT,
    PID INT,
    dateofsales DATE NOT NULL,
    FOREIGN KEY (CID) REFERENCES customer(CID),
    FOREIGN KEY (PID) REFERENCES Product(PID)
);

-- Creating the 'Supplier' table
CREATE TABLE IF NOT EXISTS Supplier (
    SID INT PRIMARY KEY,
    sname VARCHAR(50),
    slocation VARCHAR(50),
    Quantity INT
);

-- Creating the 'order' table if it doesn't exist
CREATE TABLE IF NOT EXISTS `Order` (
    OID INT PRIMARY KEY NOT NULL,
    PID INT,
    SID INT,
    dateoforder DATE,
    FOREIGN KEY (PID) REFERENCES Product(PID),
    FOREIGN KEY (SID) REFERENCES Supplier(SID)
);
