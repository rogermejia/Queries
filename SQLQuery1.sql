create procedure sp_all_categories
AS
SELECT TOP 1000 [id_category]
      ,[name]
  FROM [webAppTest].[dbo].[Categories]

Go;