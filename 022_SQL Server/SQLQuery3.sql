CREATE procedure CustomerRollBack @Cust_Id VARCHAR(6),@Amt VARCHAR(6)
as
begin tran t
	begin TRY
		UPDATE  CUSTOMER SET OUTSTANDING_AMT=@Amt
		WHERE CUST_CODE = @Cust_Id ;
		if @Amt>11000
		begin
			print 'Amt cannot more than 10000/-,entry will rollback'
			rollback tran t
		end
		else
		begin
			select 'Data Updated';
			commit tran t
		end 
	END TRY  
	BEGIN CATCH   
		select Error_Message()  
	END CATCH;		



exec CustomerRollBack @Cust_Id='C00001',@Amt='13000'
drop procedure CustomerRollBack

select * from CUSTOMER
SELECT * FROM   
(SELECT CUST_COUNTRY, OUTSTANDING_AMT,GRADE FROM CUSTOMER )Tab1  
PIVOT  
(  
SUM(OUTSTANDING_AMT) FOR CUST_COUNTRY IN (USA,CANADA,INDIA)) AS Tab2  




CREATE PROCEDURE PivotTest
as
begin
	DECLARE  @columns NVARCHAR(MAX) = '';
	DECLARE  @sql     NVARCHAR(MAX) = '';

SELECT 
    @columns += QUOTENAME(CUST_COUNTRY) + ','
FROM 
    CUSTOMER
GROUP BY CUST_COUNTRY
ORDER BY 
    CUST_COUNTRY;

SET @columns = LEFT(@columns, LEN(@columns) - 1);
SET @sql ='SELECT * FROM   
(SELECT CUST_COUNTRY, OUTSTANDING_AMT,GRADE FROM CUSTOMER )Tab1  
PIVOT  
(  
SUM(OUTSTANDING_AMT) FOR CUST_COUNTRY IN ('+@columns+')) AS Tab2';
EXECUTE sp_executesql @sql;
PRINT @columns;
end

SET STATISTICS IO ON
SET STATISTICS TIME ON
exec PivotTest
SET STATISTICS IO off
SET STATISTICS TIME off
drop procedure PivotTest















DECLARE 
    @columns NVARCHAR(MAX) = '', 
    @sql     NVARCHAR(MAX) = '';

-- select the category names
SELECT 
    @columns+=QUOTENAME(category_name) + ','
FROM 
    production.categories
ORDER BY 
    category_name;

-- remove the last comma
SET @columns = LEFT(@columns, LEN(@columns) - 1);

-- construct dynamic SQL
SET @sql ='
SELECT * FROM   
(
    SELECT 
        category_name, 
        model_year,
        product_id 
    FROM 
        production.products p
        INNER JOIN production.categories c 
            ON c.category_id = p.category_id
) t 
PIVOT(
    COUNT(product_id) 
    FOR category_name IN ('+ @columns +')
) AS pivot_table;';

-- execute the dynamic SQL
EXECUTE sp_executesql @sql;


select *,ROW_NUMBER()over(PARTITION BY CUST_CITY order by CUST_NAME ) from CUSTOMER cut
select *,MAX(OUTSTANDING_AMT) over(PARTITION BY GRADE) from CUSTOMER cut
select *,MAX(OUTSTANDING_AMT) over(PARTITION BY CUST_CITY order by CUST_NAME ) from CUSTOMER cut


WITH C_CTE (ROW,C_NAME,C_CITY)
AS
(
 --SELECT *
 -- FROM CUSTOMER
 select ROW_NUMBER()over(PARTITION BY CUST_CITY order by CUST_NAME ),CUST_NAME,CUST_CITY from CUSTOMER
)
--INSERT INTO CUSTOMER_BK
select * FROM C_CTE


WITH CUST_CTE 
AS
(
  SELECT CUST_CODE,CUST_NAME,CUST_CITY
  FROM CUSTOMER
 -- WHERE CUST_CODE='C00001'   
),ORD_CTE
AS
(	
	SELECT CUST_CODE FROM ORDERS
)

SELECT CUST_NAME,CUST_CITY
  FROM CUST_CTE CCTE
  INNER JOIN ORD_CTE OCTE ON OCTE.CUST_CODE=CCTE.CUST_CODE





DELETE FROM C_CTE
WHERE CUST_CODE='C00001'

select * FROM C_CTE

select * FROM CUSTOMER_BK

DELETE FROM CUSTOMER_BK