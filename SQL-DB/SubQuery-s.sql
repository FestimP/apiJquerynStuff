--subqueries



--Scalar Subquery

select * 
from Users u
where u.RoleId = (select id from Roles where id=2);
------------------------------------------
select * ---------------------------------
from Users u------------------------------
inner join Roles r on r.ID =u.RoleId------
where r.id=2;-----------------------------
-------------------------------------------
-- Single Coumn-Multiple rows, Multiple Colums - Multiple rows

select  [DerivedTable].Id,
		[DerivedTable].Emri,
		[DerivedTable].Mbimeri,
		[DerivedTable].qyteti
from (select u.*,c.emri as Qytetis
		from Users u 
		inner join cities c on c.id=u.qyteti
		where u.mosha>21
		--order by u.ID  nuk mundesh me ba order by ne derrived subquery
		) as [DerivedTable]
		order by [DerivedTable].ID-- qeshtu ban 


		select * 
from Users u
where u.RoleId = (select id from Roles where id=2);
------------------------------------------
select * ---------------------------------
from Users u------------------------------
inner join Roles r on r.ID =u.RoleId------
where r.id=2;-----------------------------
-------------------------------------------
-- Single Coumn-Multiple rows, Multiple Colums - Multiple rows

select  [DerivedTable].Id,
		[DerivedTable].Emri,
		[DerivedTable].Mbimeri,
		[DerivedTable].qyteti,
		[DerivedTable].RoleId,
		r.Emri as Pozita
from (select u.*,c.emri as Qytetis
		from Users u 
		inner join cities c on c.id=u.qyteti
		where u.mosha>21
		--order by u.ID  nuk mundesh me ba order by ne derrived subquery
		) as [DerivedTable]
	inner join Roles r on r.ID=DerivedTable.RoleId
	order by [DerivedTable].ID

	select  [DerivedTable].Id,
		[DerivedTable].Emri,
		[DerivedTable].Mbimeri,
		[DerivedTable].qyteti,
		r.Emri as Pozita
from (select u.*,c.emri as Qytetis
		from Users u 
		inner join cities c on c.id=u.qyteti
		where u.mosha>21
		--order by u.ID  nuk mundesh me ba order by ne derrived subquery
		) as [DerivedTable]
	inner join Roles r on r.ID=DerivedTable.RoleId
	where r.Emri like 'stud%'
	order by [DerivedTable].ID
	go


		
Alter VIEW vTabDerrived 
AS
select u.*,c.emri as Qytetis
		from Users u 
		inner join cities c on c.id=u.qyteti
		where u.mosha>21
go

select  vGSi.Id,
		vGSi.Emri,
		vGSi.Mbimeri,
		vGSi.qyteti,
		r.Emri as Pozita
from vTabDerrived  as vGSi
	inner join Roles r on r.ID=vGSi.RoleId
	where r.Emri like 'stud%'
	order by vGSi.ID
 

 -- Select Subquery

 Select *,
 case 
 when roleId=1 then 'Aktiv'
 else 'Pasiv'
 end as statusi
 from Users u
 order by u.RoleId

 -- Scalar subquery
  Select *,
 'Aktiv'  as statusi,
 (select r.Emri from Roles r where id=2) as Roli
 from Users u
 order by u.RoleId


 --Correlated subquery
   Select *,
 'Aktiv'  as statusi,
 (select r.Emri from Roles r where r.id=u.roleId) as Roli
 from Users u

   Select u.id, u.emri,u.Mbimeri,
 (select r.paga from Pagat r where r.id=u.PagaId) as Paga 

 from Users u

   Select u.id, u.emri,u.Mbimeri,
 (select SUM(Paga) from Pagat r where r.id=u.PagaId) as Paga 

 from Users u

 select * 
	from(   Select u.id, u.emri,u.Mbimeri,
	(	select SUM(Paga) 
		from Pagat r 
		where r.id=u.PagaId
		) as Paga 

	 from Users u
	 ) as result
	where result.Paga is not null


-- Sub query with update--

update Users 
set RoleId=1
where mosha > (select top 1 paga from Pagat)
 --inner join Paga p on p.userId=u.id
 update Pagat
 set paga=200
 where userId in(select id from Users u where  u.mosha>30)

 select *
 from Users u
 inner join Pagat p on p.userId=u.id