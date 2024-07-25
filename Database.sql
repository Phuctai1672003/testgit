CREATE DATABASE THIGIUAKIMVC
GO

USE THIGIUAKIMVC
GO

CREATE TABLE Category (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL
);

CREATE TABLE Supplier (
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierName VARCHAR(255) NOT NULL
);

CREATE TABLE Product (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Description TEXT,
    Price DECIMAL(18,2),
    CategoryID INT,
    SupplierID INT,
    Image VARCHAR(255),
    Stock INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);



INSERT INTO Category (CategoryName) VALUES
('Iphone'),
('Ipad'),
('Mac');

INSERT INTO Supplier (SupplierName) VALUES
('Apple'),
('Shopdunk'),
('CellphoneS');

-- Iphone 15 Series
INSERT INTO Product (ProductName, Description, Price, CategoryID, SupplierID, Image, Stock) VALUES
('iPhone 15 Pro Max', 'Apple iPhone 15 Pro Max with 1TB storage, Space Black', 1399.00, 1, 1, 'iphone-15-pro-max.jpg', 10),
('iPhone 15 Pro', 'Apple iPhone 15 Pro with 512GB storage, Silver', 1099.00, 1, 1, 'iphone-15-pro.jpg', 15),
('iPhone 15', 'Apple iPhone 15 with 256GB storage, Blue', 799.00, 1, 1, 'iphone-15.jpg', 20),
('iPhone 15 Plus', 'Apple iPhone 15 Plus with 256GB storage, Pink', 899.00, 1, 1, 'iphone-15-plus.jpg', 12);

-- Iphone 14 Series
INSERT INTO Product (ProductName, Description, Price, CategoryID, SupplierID, Image, Stock) VALUES
('iPhone 14 Pro Max', 'Apple iPhone 14 Pro Max with 1TB storage, Space Black', 1299.00, 1, 1, 'iphone-14-pro-max.jpg', 8),
('iPhone 14 Pro', 'Apple iPhone 14 Pro with 512GB storage, Silver', 999.00, 1, 1, 'iphone-14-pro.jpg', 10),
('iPhone 14', 'Apple iPhone 14 with 256GB storage, Blue', 699.00, 1, 1, 'iphone-14.jpg', 15),
('iPhone 14 Plus', 'Apple iPhone 14 Plus with 256GB storage, Pink', 799.00, 1, 1, 'iphone-14-plus.jpg', 12);

-- Ipad Pro Series
INSERT INTO Product (ProductName, Description, Price, CategoryID, SupplierID, Image, Stock) VALUES
('iPad Pro 12.9-inch', 'Apple iPad Pro 12.9-inch with 1TB storage, Space Gray', 1099.00, 2, 1, 'ipad-pro-12.9.jpg', 5),
('iPad Pro 11-inch', 'Apple iPad Pro 11-inch with 512GB storage, Silver', 799.00, 2, 1, 'ipad-pro-11.jpg', 8);

-- Ipad Air Series
INSERT INTO Product (ProductName, Description, Price, CategoryID, SupplierID, Image, Stock) VALUES
('iPad Air 5th Generation', 'Apple iPad Air 5th Generation with 256GB storage, Space Gray', 699.00, 2, 1, 'ipad-air-5.jpg', 10);

-- Mac Pro Series
INSERT INTO Product (ProductName, Description, Price, CategoryID, SupplierID, Image, Stock) VALUES
('Mac Pro', 'Apple Mac Pro with 32-core Intel Xeon W processor', 5999.00, 3, 1, 'mac-pro.jpg', 2),
('Mac Pro (2019)', 'Apple Mac Pro (2019) with 8-core Intel Xeon W processor', 2499.00, 3, 1, 'mac-pro-2019.jpg', 4);

-- Mac Air Series
INSERT INTO Product (ProductName, Description, Price, CategoryID, SupplierID, Image, Stock) VALUES
('MacBook Air M2', 'Apple MacBook Air with M2 chip, 8-core CPU', 1199.00, 3, 1, 'macbook-air-m2.jpg', 12);
