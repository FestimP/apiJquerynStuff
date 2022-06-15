
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER t_delete_User
   ON users
   AFTER delete
   as
BEGIN
	print 'Row on user table has been deleted successfully'
	select * 
	from deleted;
	insert into UsersHistory ---Krijoje ni tabel me qet emer tana egzekutohet
	select * from deleted;
END
GO


select *
--delete 
from Users
where Users.id=30

update Users
set Mbimeri='Jeager'
where id=3
select 0 from users -- i kthen nim kolon me krejt zero 

select * 
from Users u
where exists (select 1 from roles r where r.id=u.roleId and id=1)