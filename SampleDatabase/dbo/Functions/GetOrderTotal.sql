CREATE FUNCTION [dbo].[GetOrderTotal]
(
	@OrderID int
)
RETURNS INT
AS
BEGIN

declare @total  decimal(18,2)

	 SELECT @total = SUM(OLI.TotalPrice)
	 FROM OrderLineItem OLI INNER JOIN OrderDetails O ON O.Id = OLI.OrderID
	 WHERE OLI.OrderID = @OrderID

	 return @total
END
