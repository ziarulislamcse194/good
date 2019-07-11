CREATE DATABASE BusinessManagment

USE BusinessManagment

--DROP TABLE Categories

CREATE TABLE Categories(
ID int IDENTITY (1,1) PRIMARY KEY,
Code VARCHAR (50),
Name VARCHAR (50)
)


INSERT INTO Categories (Code, Name) VALUES ('Dhaka-1205', 'apple')

SELECT * FROM Categories


--DROP TABLE Products

CREATE TABLE Products(
ProductId int IDENTITY (1,1) PRIMARY KEY,
ProductCode VARCHAR(50),
ProductName VARCHAR (50),
CategoryName int foreign key (CategoryName) references Categories(ID),
ReorderLevel VARCHAR(50),
Description VARCHAR (150)
)

INSERT INTO Products (ProductCode, ProductName, CategoryName, ReorderLevel, Description) VALUES ('001', 'PHONE', '1', '100', 'Dhaka 1205')

SELECT * FROM Products


