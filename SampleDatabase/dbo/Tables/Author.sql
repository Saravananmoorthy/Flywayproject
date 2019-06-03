CREATE TABLE [dbo].[Author]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [DateOfBirth] DATETIME NULL, 
    [Place] NVARCHAR(50) NULL
)
