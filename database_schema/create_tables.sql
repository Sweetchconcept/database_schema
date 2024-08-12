-- Creating the PRODUCT table
CREATE TABLE PRODUCT (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    QuantityInStock INT
);

-- Creating the CUSTOMER table
CREATE TABLE CUSTOMER (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactEmail VARCHAR(100)
);

-- Creating the ORDERS table
CREATE TABLE ORDERS (
    OrderID INT PRIMARY KEY,
    OrderDate DATE DEFAULT SYSDATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID)
);

-- Creating the ORDER_ITEMS table
CREATE TABLE ORDER_ITEMS (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    QuantityOrdered INT,
    FOREIGN KEY (OrderID) REFERENCES ORDERS(OrderID),
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);
