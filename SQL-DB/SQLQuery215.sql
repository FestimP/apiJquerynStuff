insert into Users
values('Emri','Mbiemri','test',1,1,1,1,1,1,12,250),
	  ('Emri','Mbiemri','test',1,1,1,1,1,1,12,250),
	  ('Emri','Mbiemri','test',1,1,1,1,1,1,12,250),
	  ('Emri','Mbiemri','test',1,1,1,1,1,1,12,250),
	  ('Emri','Mbiemri','test',1,1,1,1,1,1,12,250),
	  ('Emri','Mbiemri','test',1,1,1,1,1,1,12,250),
	  ('Emri','Mbiemri','test',1,1,1,1,1,1,12,250),
	  ('Emri','Mbiemri','test',1,1,1,1,1,1,12,250),
	  ('Emri','Mbiemri','test',1,1,1,1,1,1,12,250),
	  ('Emri','Mbiemri','test',1,1,1,1,1,1,12,250)

select top 1 'Emri','Mbiemri','test',1,1,1,1,1,1,12,250
	 union all
select top 1 'Emri','Mbiemri','test',1,1,1,1,1,1,12,250
	  union all
select top 1 'Emri','Mbiemri','test',1,1,1,1,1,1,12,250
	   union all
select top 1 'Emri','Mbiemri','test',1,1,1,1,1,1,12,250
	   union all
select top 1 'Emri','Mbiemri','test',1,1,1,1,1,1,12,250
	
	 
select * from Users


select @@SPID
select * 
from sys.dm_exec_sessions
where session_id = @@SPID

select  *
from sys.dm_exec_sessions

insert into Users
values('Egzon','Test','test',1,1,1,1,1,1,1,125)