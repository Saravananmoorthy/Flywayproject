CREATE TABLE [dbo].[Publisher]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [PublisherName] NVARCHAR(50) NULL, 
    [Address] NVARCHAR(500) NULL, 
    [IsActive] BIT NULL
)
