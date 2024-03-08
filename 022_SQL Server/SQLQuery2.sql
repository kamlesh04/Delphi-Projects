CREATE procedure CustomerExcphandle @Cust_Id varchar(6),@Amt numeric(12,2)
as
--begin
begin TRY
	update CUSTOMER set OUTSTANDING_AMT=@Amt
	where CUST_CODE=@Cust_Id;  
	select 'No Error';	
END TRY  
BEGIN CATCH  
	select 'Error Occur that is:'  
	select Error_Message()  
END CATCH
Go  
--end

exec CustomerExcphandle @Cust_Id='C00001',@Amt='6000c' 
drop procedure CustomerExcphandle
 
CREATE  function CustomereDtlsPopulate_NoPara()
returns @t TABLE(id varchar(6),City varchar(35))
as
--return
begin
	insert into @t
	SELECT CUST_CODE,CUST_CITY FROM CUSTOMER;
	return
end
CREATE  function CustomereDtlsPopulate_NoPara()
returns TABLE
as
return
	SELECT CUST_CODE,CUST_CITY FROM CUSTOMER;

 drop function CustomereDtlsPopulate;
 drop function CustomereCrossedLimit

select * from CUSTOMER cut

select  coalesce(dbo.CustomereCrossedLimit('C00001','New York'),'No Record Found')
select * from dbo.CustomereDtlsPopulate_NoPara();



SELECT CUST_NAME, CUST_CITY,case when ORD_AMOUNT is null  then 0.00
else ORD_AMOUNT end ,ORD_DATE, AGENT_NAME
FROM    CUSTOMER cut  
INNER JOIN AGENTS  agt ON agt.AGENT_CODE = cut.AGENT_CODE 
INNER JOIN ORDERS ord ON ord.AGENT_CODE = agt.AGENT_CODE AND cut.CUST_CODE = ord.CUST_CODE
	where OUTSTANDING_AMT>11000 AND OUTSTANDING_AMT<14000;

CREATE  INDEX iNDEXOUTSTANDING_AMT ON CUSTOMER(OUTSTANDING_AMT)
DROP INDEX iNDEXOUTSTANDING_AMT ON CUSTOMER

ALTER INDEX iNDEXOUTSTANDING_AMT  
ON CUSTOMER  
REBUILD;  


EXEC sp_rename  
   iNDEXOUTSTANDING_AMT,  
   INDEXOUTSTANDING_AMT,  
   N'INDEX'; 
	

	 

