/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Emri]
      ,[Mbimeri]
      ,[Roli]
      ,[Gjinia]
      ,[RoleId]
      ,[klasa]
      ,[Shteti]
      ,[kursi]
      ,[qyteti]
  FROM [klasDetyra].[dbo].[Users]

  select ua.Emri as [personi 1],
		ua.emri as [personi 2],
		ua.Gjinia as mosha
  from users ua,users ub
  where ua.id != ub.id and ua.gjinia = ub.Gjinia  --ua.mosha = ub.mosha
  order by ua.Emri

    select ua.Emri as [personi 1],
		ua.emri as [personi 2],
		ua.Gjinia as mosha,
		ub.gjinia as mosha2
  from users ua,users ub
  where ua.id != ub.id and ua.gjinia != ub.Gjinia  --ua.mosha = ub.mosha
  order by ua.Emri




      select ua.Emri as [personi 1],
		ua.emri as [personi 2],
		ua.Gjinia as mosha
  from users ua,users ub
  where ua.id = ub.id and ua.gjinia = ub.Gjinia  --ua.mosha = ub.mosha
  order by ua.Emri


    select * from Users u 
	where u.RoleId=1
	union
	select * from users u where u.RoleId=2

	
    select u.Emri,u.Mbimeri,u.Gjinia,u.RoleId from Users u 
	where u.RoleId=1
	union -- i largon dublifikimet 
	select  u.Emri,u.Mbimeri,u.Gjinia,u.RoleId  from users u where u.RoleId=2

	select u.Emri,u.Mbimeri,u.Gjinia,u.RoleId from Users u where u.RoleId=1
	union all -- I LEJON DUBLIFIKIMET  
	select u.Emri,u.Mbimeri,u.Gjinia,u.RoleId from users u where u.RoleId=2


	select u.emri as emri,
		   u.Mbimeri as mbiemri,
		   g.id as gjiniamain,
	 gjinia =case
	when Gjinia=1 then 'Mashkull'
	when Gjinia=2 then 'Femer'
	when Gjinia=3 then 'LGBT'
	end 
from Users  u
	left join Genders g on g.id=u.gjinia
