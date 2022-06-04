declare @counter int =1;
--select @counter =COUNT(id) from users
select @counter =COUNT(id) from users group by RoleId having roleid=1;
select @counter= Count(id)  
from Users
group by RoleId
having RoleId=1;

select [numri i Perdorusve] = COUNT(id) from users;
select [numri i perdoruesve]= @counter;

 select abs(-70)
 select SQRT(4)
 select SQUARE(7)

 declare @Variabla1 int 
 declare @Variabla2 int
 set @Variabla1=20
 set @Variabla2=0
 if(@Variabla2=0)
 begin
 RAISERROR ('Emeruesi duhet te jet i ndryshem nga 0',17,1);-- 17,1 E IDENTIFIKON SE QFAR LEVELI DHE QFAR STATE O ERRORI
 end
 ELSE
 BEGIN
 SELECT @Variabla1/@Variabla2;
 END
-- CTRL+G TE QON TE RRESHTI QE DON 

--INSERT INTO Genders
--VALUES(4,'SUSUSUSUSUSUSUSUSUSUSUSUSUSU');
--SELECT @@ERROR AS ERRORI
--IF(@@ERROR !=0)
--PRINT 'MBIEMRI DUHET TE KET MAKSIMUM 20KARAKTERE';
DECLARE @VAR1 INT;
DECLARE @VAR2 INT;
SET @VAR1=0;
SET @VAR2=20
 BEGIN TRY 
SELECT @VAR2/@Var1;
END TRY 
BEGIN CATCH
SELECT 1, 
			ERROR_MESSAGE() AS [ERROR MESAZH],
			ERROR_SEVERITY() AS ERRORFATAL,
			ERROR_STATE() AS ERRORSTATE,
			ERROR_PROCEDURE() AS ERRORPROCEDURE,
			ERROR_LINE() AS ERRORLINE;
END CATCH

-- KOMANDA GO DHE BATCH
SELECT 1;
SELECT 2;
GO
--DECLARE @SCOPEVARIABLE INT=5;
--SELECT @SCOPEVARIABLE;
--GO 
--SELECT @SCOPEVARIABLE;

SELECT * FROM Users
INTO STUDENTS
WHERE RoleId=1

