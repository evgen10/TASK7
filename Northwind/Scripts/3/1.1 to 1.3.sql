IF EXISTS (SELECT * 
		   FROM sys.tables
		   WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
BEGIN

	EXECUTE SP_RENAME 'Region', 'Regions'

END


IF NOT EXISTS (SELECT *
			   FROM  sys.columns 
			   WHERE Name = N'Foundation date' AND
					 Object_ID = Object_ID(N'Customers'))
BEGIN

ALTER TABLE Customers
   ADD [Foundation date] DATETIME NULL

END


