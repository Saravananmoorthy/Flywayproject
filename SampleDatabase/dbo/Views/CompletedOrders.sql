CREATE VIEW [dbo].[CompletedOrders]
	AS SELECT * FROM OrderDetails where OrderStatusID = ( SELECT Id from OrderStatus where StatusDesc = 'Completed')
