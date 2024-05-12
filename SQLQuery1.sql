USE [db_12.05]
GO

INSERT INTO Stationery (Name, Type, Quantity, Cost_per_Unit) 
VALUES 
    ('Pens', 'Writing Instruments', 100, 0.5),
    ('Notebooks', 'Paper Products', 50, 1.5),
    ('Staplers', 'Desk Accessories', 20, 3.0);

INSERT INTO Sales (Stationery_ID, Sales_Manager, Buyer_Company, Manager_Selling, Quantity_Sold, Price_Per_Unit, Sale_Date) 
VALUES 
    (1, 'John Smith', 'ABC Company', 'Alice Johnson', 50, 1.0, '2024-05-01'),
    (2, 'Jane Doe', 'XYZ Corporation', 'Bob Williams', 30, 2.0, '2024-05-02'),
    (3, 'Michael Brown', '123 Inc.', 'Emily Davis', 10, 4.0, '2024-05-03');

INSERT INTO Stationery (Name, Type, Quantity, Cost_per_Unit) 
VALUES ('New Stationery', 'New Type', 100, 10.50);

INSERT INTO Stationery (Name, Type, Quantity, Cost_per_Unit)
VALUES ('New Stationery 2', 'New Type 2', 50, 8.75);

INSERT INTO Sales (Sales_Manager)
VALUES ('New Sales Manager');

INSERT INTO Sales (Buyer_Company)
VALUES ('New Buyer Company');