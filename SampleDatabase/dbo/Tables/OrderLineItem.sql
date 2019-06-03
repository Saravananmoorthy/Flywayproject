CREATE TABLE [dbo].[OrderLineItem]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [OrderID] INT NULL, 
    [BookID] INT NULL, 
    [Quantity] INT NULL, 
    [TotalPrice] DECIMAL(18, 2) NULL
)
