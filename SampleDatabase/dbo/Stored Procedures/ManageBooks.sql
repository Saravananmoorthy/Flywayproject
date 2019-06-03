CREATE PROCEDURE [dbo].[ManageBooks]
	@BookID INT,
	@BookName nvarchar(50),
	@AuthorID int,
	@PublisherID int,
	@PublishedDate datetime,
	@Price decimal(18,2),
	@Operation nvarchar(50)
AS

IF @Operation = 'ADD'

	INSERT INTO Book VALUES (@BookName,@AuthorID,@PublisherID, @PublishedDate, @Price)

ELSE IF @Operation = 'UPDATE'

	UPDATE Book SET BookName = @BookName, AuthorID = @AuthorID , PublisherID = @PublisherID,
    PublishedDate = @PublishedDate, Price = @Price
	WHERE Id = @BookID

ELSE

	DELETE FROM Book WHERE Id = @BookID
	
RETURN 0
 