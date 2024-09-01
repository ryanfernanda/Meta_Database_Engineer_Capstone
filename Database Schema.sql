CREATE DATABASE LittleLemonDB;

USE LittleLemonDB;

-- Create the Customer table
CREATE TABLE Customer (
    CustomerID VARCHAR(15) PRIMARY KEY,  -- Example: '72-055-7985'
    CustomerName VARCHAR(100),            -- Example: 'Laney Fadden'
    City VARCHAR(50),                     -- Example: 'Daruoyan'
    Country VARCHAR(50),                  -- Example: 'China'
    PostalCode VARCHAR(10),               -- Example: '993-0031'
    CountryCode VARCHAR(5)                -- Example: 'CN'
);

-- Create the Order table
CREATE TABLE Orders (
    OrderID VARCHAR(15) PRIMARY KEY,      -- Example: '54-366-6861'
    OrderDate DATE,                       -- Example: '2020-06-15'
    DeliveryDate DATE,                    -- Example: '2020-03-26'
    Cost DECIMAL(10,2),                   -- Example: 125.00
    Sales DECIMAL(10,2),                  -- Example: 187.50
    Quantity INT,                         -- Example: 2
    Discount DECIMAL(5,2),                -- Example: 20.00
    DeliveryCost DECIMAL(10,2),           -- Example: 60.51
    CustomerID VARCHAR(15),               -- Foreign Key
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Create the Course table
CREATE TABLE Course (
    CourseName VARCHAR(100),              -- Example: 'Greek salad'
    CuisineName VARCHAR(50),              -- Example: 'Greek'
    OrderID VARCHAR(15),                  -- Foreign Key
    PRIMARY KEY (CourseName, OrderID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Create the Meal table
CREATE TABLE Meal (
    OrderID VARCHAR(15) PRIMARY KEY,      -- Foreign Key
    StarterName VARCHAR(100),             -- Example: 'Olives'
    DesertName VARCHAR(100),              -- Example: 'Greek yoghurt'
    Drink VARCHAR(50),                    -- Example: 'Athens White wine'
    Sides VARCHAR(50),                    -- Example: 'Tapas'
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
