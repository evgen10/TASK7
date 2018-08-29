CREATE TABLE [dbo].[Сredit cards] (
    [Cart number]     INT  IDENTITY (1, 1) NOT NULL,
    [Expiration date] DATE NULL,
    [Card holder]     INT  NULL,
    CONSTRAINT [PK_CartNumber_СreditCards] PRIMARY KEY CLUSTERED ([Cart number] ASC),
    CONSTRAINT [FK_CartHolder_EmployeeID] FOREIGN KEY ([Card holder]) REFERENCES [dbo].[Employees] ([EmployeeID])
);

