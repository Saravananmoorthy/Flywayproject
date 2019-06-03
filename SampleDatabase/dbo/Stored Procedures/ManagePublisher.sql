CREATE PROCEDURE [dbo].[ManagePublisher]
	@PublisherID INT,
	@PublisherName nvarchar(50),
	@Address nvarchar(500),
	@IsActive bit,
	@Operation nvarchar(50)
AS

IF @Operation = 'ADD'

	INSERT INTO Publisher VALUES (@PublisherName,@Address,@IsActive)

ELSE IF @Operation = 'UPDATE'

	UPDATE Publisher SET PublisherName = @PublisherName, [Address] = @Address , IsActive = @IsActive
   	WHERE Id = @PublisherID

ELSE

	DELETE FROM Publisher WHERE Id = @PublisherID
RETURN 0
