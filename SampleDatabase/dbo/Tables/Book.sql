CREATE TABLE [dbo].[Book]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [BookName] NVARCHAR(50) NULL, 
    [AuthorID] INT NULL, 
    [PublisherID] INT NULL, 
    [PublishedDate] DATETIME NULL, 
    [Price] DECIMAL(18, 2) NULL, 
    CONSTRAINT [FK_Book_Author] FOREIGN KEY (AuthorID) REFERENCES Author(ID), 
    CONSTRAINT [FK_Book_Publisher] FOREIGN KEY (PublisherID) REFERENCES Publisher([Id])
)
