/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[Produkti]
      ,[Cmimi]
      ,[Qyteti]
      ,[Data]
      ,[mosha]
      ,[KonsumatorId],
	  'i pashitur' as [statusi i shitjes]
	  
  FROM [sus].[dbo].[Date]

  select * 
from Date p
left join konsumator fp on fp.id=p.KonsumatorId
where fp.id is null;

select p.* ,fp.name,fp.surname,fp.PorosiId, ISNULl(g.pershrkimi,'padefinuar') as gjinia
from Date p
left join konsumator fp on fp.id=p.KonsumatorId
left join gjinia g on g.id = fp.gjinia
where fp.id is null;
order by konsumatorid;