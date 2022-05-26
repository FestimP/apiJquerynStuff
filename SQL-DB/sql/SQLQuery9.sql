--drop database master

--use [Pbc-sus]

insert into Student 
(id,Emri,Mbemri,Adresa,ProfesorId,Aktiv)
values(5,'Isa','Istogu','peje',2,4)

insert into Student 
(id,Emri,Mbemri,Adresa)
values(6,'agon','goon','mitrovixe')

select * from dbo.Student s
where s.ProfesorId is  null  --==

select * from dbo.Student s
where s.ProfesorId is not null --!=

update dbo.Student 
set dbo.student.ProfesorId=5

update Student
set ProfesorId=1
where ProfesorId=1;

select *
from Student

select *
from dbo.Student
--delete dbo.Student
where dbo.Student.aktiv is null

select top(2) * from Student