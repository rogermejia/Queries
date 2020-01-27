USE [webAppTest]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[sp_product_id]

SELECT	'Return Value' = @return_value

GO

drop procedure sp_product_id;
create proc sp_product_id @id int
as
select * from Products as p
where p.id_product = @id

