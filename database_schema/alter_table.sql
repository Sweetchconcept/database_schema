-- Add a column Category (VARCHAR2(20)) to the PRODUCT table
ALTER TABLE PRODUCT
ADD Category VARCHAR2(20);

-- Add a column OrderDate (DATE) to the ORDERS table with SYSDATE as the default value
ALTER TABLE ORDERS
ADD OrderDate DATE DEFAULT SYSDATE;
