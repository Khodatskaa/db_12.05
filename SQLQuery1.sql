USE [db_12.05]
GO

SELECT * FROM Stationery;

SELECT * FROM Sales;

UPDATE Stationery
SET Name = 'Updated Stationery', Type = 'Updated Type', Quantity = 200, Cost_per_Unit = 12.75
WHERE Stationery_ID = 1;

UPDATE Sales
SET Buyer_Company = 'Updated Buyer Company'
WHERE Buyer_Company = 'Old Buyer Company';

UPDATE Sales
SET Sales_Manager = 'Updated Sales Manager'
WHERE Sales_Manager = 'Old Sales Manager';

UPDATE Stationery
SET Type = 'Updated Type'
WHERE Type = 'Old Type';

DELETE FROM Sales
WHERE Stationery_ID = 1;

DELETE FROM Stationery
WHERE Stationery_ID = 1;

DELETE FROM Sales
WHERE Sales_Manager = 'Sales Manager to Remove';

DELETE FROM Stationery
WHERE Type = 'Type to Remove';

DELETE FROM Sales
WHERE Buyer_Company = 'Buyer Company to Remove';

SELECT TOP 1 Sales_Manager, SUM(Quantity_Sold) AS TotalUnitsSold
FROM Sales
GROUP BY Sales_Manager
ORDER BY TotalUnitsSold DESC;

SELECT TOP 1 Sales_Manager, SUM(Quantity_Sold * Price_Per_Unit) AS TotalProfit
FROM Sales
GROUP BY Sales_Manager
ORDER BY TotalProfit DESC;

SELECT TOP 1 Sales_Manager, SUM(Quantity_Sold * Price_Per_Unit) AS TotalProfit
FROM Sales
WHERE Sale_Date BETWEEN '2024-01-01' AND '2024-12-31' 
GROUP BY Sales_Manager
ORDER BY TotalProfit DESC;

SELECT TOP 1 Buyer_Company, SUM(Quantity_Sold * Price_Per_Unit) AS TotalPurchaseAmount
FROM Sales
GROUP BY Buyer_Company
ORDER BY TotalPurchaseAmount DESC;

SELECT TOP 1 Type, SUM(Quantity_Sold) AS TotalUnitsSold
FROM Stationery s
JOIN Sales sa ON s.Stationery_ID = sa.Stationery_ID
GROUP BY Type
ORDER BY TotalUnitsSold DESC;

SELECT TOP 1 Type, SUM(Quantity_Sold * Price_Per_Unit) AS TotalProfit
FROM Stationery s
JOIN Sales sa ON s.Stationery_ID = sa.Stationery_ID
GROUP BY Type
ORDER BY TotalProfit DESC;

SELECT TOP 1 Name, SUM(Quantity_Sold) AS TotalUnitsSold
FROM Stationery s
JOIN Sales sa ON s.Stationery_ID = sa.Stationery_ID
GROUP BY Name
ORDER BY TotalUnitsSold DESC;

SELECT Name
FROM Stationery
WHERE Stationery_ID NOT IN (SELECT DISTINCT Stationery_ID FROM Sales WHERE DATEDIFF(day, Sale_Date, GETDATE()) <= 30);
