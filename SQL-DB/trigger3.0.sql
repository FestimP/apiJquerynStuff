create trigger t_update_users
on users
after update 
as 
begin
select 3;
end


alter trigger t_update_users
on users
after update 
as 
begin
select * from inserted;
select * from deleted;
insert into UsersHistory
select * from deleted 
end
go

create trigger t_AuditUsers
on users
after update, insert , delete 
as 
begin

Declare @loginUser nvarchar(255);

--select @@SPID
select @loginUser=login_name
from sys.dm_exec_sessions
where session_id = @@SPID
select @loginUser as Perdoruesi
if exists (select 0 from deleted)
begin
if exists (select 0 from inserted)
begin
select 'UPDATE'
end
else 
begin
select 'delete'
end

end
else 
begin 
select 'inserted'
end
end