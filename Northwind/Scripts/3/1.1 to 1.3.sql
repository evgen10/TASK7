IF EXISTS (SELECT * 
			   FROM sys.tables
			   WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
BEGIN

	EXECUTE SP_RENAME 'Region', 'Regions'

END
