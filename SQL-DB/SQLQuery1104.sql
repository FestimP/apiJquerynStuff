select * 
into #pagat1
from pagat p where p.paga>500

select u.Emri,u.Mbimeri,u.mosha as mosha,p.paga 
from users u
inner join #pagat1  p on p.userID=u.id

select * 
into #pagat2
from Users p where p.Shteti>6

select u.id,u.Emri,u.Mbimeri,c.Emri as shteti
into #pagat2
from users u
left join countries c on c.id=u.Shteti


select shteti, count(p.paga) NumriPagave,
				Sum(p.paga) TotaliPagave,
				max(p.paga) Paga Maksimale,
				min(p.paga) paga minimale
from #pagat2 uc
inner join pagat p on p.userid=uc.ID
group by Shteti
drop table #pagat2
