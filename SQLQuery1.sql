CREATE DATABASE [db_12.05]
GO
USE [db_12.05]
GO

CREATE TABLE Stationery (
    Stationery_ID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100),
    Type VARCHAR(100),
    Quantity INT,
    Cost_per_Unit DECIMAL(10,2)
);

CREATE TABLE Sales (
    Sale_ID INT PRIMARY KEY IDENTITY(1,1),
    Stationery_ID INT,
    Sales_Manager VARCHAR(100),
    Buyer_Company VARCHAR(100),
    Manager_Selling VARCHAR(100),
    Quantity_Sold INT,
    Price_Per_Unit DECIMAL(10,2),
    Sale_Date DATE,
    FOREIGN KEY (Stationery_ID) REFERENCES Stationery(Stationery_ID)
);
