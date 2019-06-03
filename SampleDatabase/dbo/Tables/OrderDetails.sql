CREATE TABLE [dbo].[OrderDetails]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [CustomerID] INT NULL, 
    [OrderTotal] DECIMAL(18, 2) NULL, 
    [OrderStatusID] INT NULL
)
