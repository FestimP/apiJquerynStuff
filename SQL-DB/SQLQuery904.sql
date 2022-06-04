/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[Emri]
      ,[Roli]
  FROM [klasDetyra].[dbo].[Personi]

 select u.emri,u.Mbimeri,u.RoleId
into Personi 
FROM Users  u 
inner  join Roles r on r.id=u.RoleId;
select * 
into personi
from Users 
where 1=0;
 TRUNCATE TABLE Personi; 

 select * from users u
 where u.ID between 1 and 7;

  select * from users u
 where u.ID  not between 1 and 7;

 create table Pagat (
 id int  primary key,
 paga decimal not null,
 userId int foreign key references Users(ID))