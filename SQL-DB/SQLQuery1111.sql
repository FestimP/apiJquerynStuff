select * 
from Date

select p.id as dateid ,p.name,p.surname,g.Produkti,g.Cmimi,g.Qyteti,g.mosha,p.PorosiId
from konsumator p
inner join Date g on p.PorosiId=g.id;

select p.id,p.name,p.surname,g.Produkti,g.Cmimi,g.Qyteti,g.mosha,p.PorosiId
from konsumator p
--where p.id=null;
left join Date g on p.PorosiId=g.id;

select p.id,p.name,p.surname,g.Produkti,g.Cmimi,g.Qyteti,g.mosha,p.PorosiId
from konsumator p
--where p.id=null;
full join Date g on p.PorosiId=g.id;


select * 
from Date p
left join konsumator fp on fp.id=p.KonsumatorId
where fp.id is null;

select p.* ,
p.id,p.Produkti,p.Cmimi,p.Qyteti,p.Data,p.mosha
from Date p
left join konsumator fp on fp.id=p.KonsumatorId
where fp.id is not null;