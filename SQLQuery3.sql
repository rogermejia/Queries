drop procedure sp_all_products;
create procedure sp_all_products
AS
SELECT *
  FROM webAppTest.dbo.products
  Go;


exec sp_columns products;

