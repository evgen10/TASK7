


IF NOT EXISTS (SELECT * 
			   FROM sys.objects
			   WHERE object_id = OBJECT_ID(N'[dbo].[Сredit cards]') AND type in (N'U'))
BEGIN
	CREATE TABLE [Сredit cards](
	[Cart number] INT IDENTITY NOT NULL,
	[Expiration date] DATE NULL,
	[Card holder] INT NULL
	
	CONSTRAINT [PK_CartNumber_СreditCards] PRIMARY KEY([Cart number]),
	CONSTRAINT [FK_CartHolder_EmployeeID] FOREIGN KEY([Card holder]) REFERENCES Employees(EmployeeID))
END
