
  create procedure sp_product

  @id int(4)
  AS
SELECT *
  FROM webAppTest.dbo.products
  WHERE id_product = @id
  Go;