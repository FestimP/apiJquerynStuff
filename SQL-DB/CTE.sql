
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

	-- CTE : Common Table Expressions ----

	With cte_getPersonInfo (Id,Emri,Mbimeri,roli,Gjinia,RoleId,klasa,shteti,kursi,qyteti,mosha,PagaId,Qytetis)
	as
	(select u.*,c.emri as Qytetis
		from Users u 
		inner join cities c on c.id=u.qyteti
		where u.mosha>21
	)
	select  [DerivedTable].Id,
		[DerivedTable].Emri,
		[DerivedTable].Mbimeri,
		[DerivedTable].Qyteti,
		r.Emri as Pozita
		from cte_getPersonInfo as [DerivedTable]
		inner join Roles r on r.ID=DerivedTable.RoleId
	order by [DerivedTable].ID
	go
	--kjo o e mir per faktorizim 
	--CTE can be more readable: Another advantage of CTE is CTE are more readable than Subqueries. 
	--Also, people tend to follow the logic and ideas easier in sequence than in a nested fashion.

	Select cs.ID,cs.Emri,COUNT(cs.id) from Users u
	inner join Pagat p on p.userID=u.ID
	inner join cities c on c.id=u.qyteti
	inner join countries cs on cs.ID=u.Shteti
	group by cs.Emri
	go

	With cte_getPersonInfo (Id,Emri,Mbimeri,roli,Gjinia,RoleId,klasa,shteti,kursi,qyteti,mosha,PagaId,Qytetis)
	as
	(select u.*,c.emri as Qytetis
		from Users u 
		inner join cities c on c.id=u.qyteti
		where u.mosha>21
	),
	cteGetCountryEmployer(id,cNAme,NrPuntorve)
	as
		(Select cs.ID,cs.Emri,COUNT(cs.id) as nrPuntorve 
		from Users u
	inner join Pagat p on p.userID=u.ID
	inner join cities c on c.id=u.qyteti
	inner join countries cs on cs.ID=u.Shteti
	group by cs.Emri,cs.ID)
	

select  [DerivedTable].Id,
		[DerivedTable].Emri,
		[DerivedTable].Mbimeri,
		[DerivedTable].Qyteti,
		r.Emri as Pozita,
		cteGCE.cNAme as shteti,
		cteGCE.NrPuntorve as NumPuntorve
		from cte_getPersonInfo as [DerivedTable]
		inner join Roles r on r.ID=DerivedTable.RoleId
		inner join cities c on c.id=[DerivedTable].qyteti
		inner join cteGetCountryEmployer cteGCE on cteGCE.id=c.id
	order by [DerivedTable].ID

	With cte_getPersonInfo (Id,Emri,Mbimeri,roli,Gjinia,RoleId,klasa,shteti,kursi,qyteti,mosha,PagaId,Qytetis)
	as
	(select u.*,c.emri as Qytetis
		from Users u 
		inner join cities c on c.id=u.qyteti
		where u.mosha>21
	)
	select * 
	into #temptable
	from cte_getPersonInfo
	where 1=0;
	select * from #temptable;

		With cte_getPersonInfo (Id,Emri,Mbimeri,roli,Gjinia,RoleId,klasa,shteti,kursi,qyteti,mosha,PagaId,Qytetis)
	as
	(select u.*,c.emri as Qytetis
		from Users u 
		inner join cities c on c.id=u.qyteti
		where u.mosha>21
	)
	insert into #temptable
	select * from cte_getPersonInfo;

		With cte_getPersonInfo (Id,Emri,Mbimeri,roli,Gjinia,RoleId,klasa,shteti,kursi,qyteti,mosha,PagaId,Qytetis)
	as
	(select u.*,c.emri as Qytetis
		from Users u 
		inner join cities c on c.id=u.qyteti
		where u.mosha>21
	)
	update cte_getPersonInfo -- ne context te cta kjo bahet update ne user data
	set Mbimeri='Koxha'
	where cte_getPersonInfo.Id=3
	--  e njejte si me ba keta ----
	select * 
	from users u
	where u.ID=3

			With cte_getPersonInfo (Id,Emri,Mbimeri,roli,Gjinia,RoleId,klasa,shteti,kursi,qyteti,mosha,PagaId,Qytetis)
	as
	(select u.*,c.emri as Qytetis
		from Users u 
		inner join cities c on c.id=u.qyteti
		where u.mosha>21
	)
	delete cte_getPersonInfo
	where cte_getPersonInfo.id=21
	-- tek views edhe cta ndryshimet dhe manipulimet qe bahen me delete edhe update ndryshimet bahen tek tabelat baze

