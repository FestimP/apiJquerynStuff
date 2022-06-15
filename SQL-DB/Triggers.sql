
-- =============================================
-- Author:		Festim Palloshi
-- Create date: <14.06.2022>
-- Description:	<Ushtrime>
-- =============================================
alter TRIGGER t_OnInsert_Users 
   ON Users
   AFTER INSERT
AS 
BEGIN
	select 'Hello there';
	select * from inserted;
	select *
	into userHistory
	from inserted;
END
GO
