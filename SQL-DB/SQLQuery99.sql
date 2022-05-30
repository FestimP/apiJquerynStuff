/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[Produkti]
      ,[Cmimi]
      ,[Qyteti]
      ,[Data]
      ,[mosha]
  FROM [sus].[dbo].[Date]

  select count(sod.cmimi) as [gjithsej cmime],
  sum(sod.cmimi) as [shuma e qmimeve],
  avg(sot.cmimi) as [mesatarja e qmimeve],
  max(sot.cmimi) as [Shuma maksimale ],
  min(sot.cmimi) as [shuma minimale]
  FROM [sus].[dbo].[Date] sod

select p.qyteti,p.mosha,
count(id) as [numri i shitjeve],
count(p.cmimi) as [shitja totale],
avg(p.cmimi) as [shitja mesatare],
max(p.cmimi) as [shitja me em madhe],
min(p.cmimi) as [shitja me e vogel]
from [sus].[dbo].[Date] p
group by p.qyteti,p.mosha
having sum([cmimi])>=200
order by p.qyteti,p.mosha

select p.qyteti,p.mosha,
count(id) as [numri i shitjeve],
count(p.cmimi) as [shitja totale],
avg(p.cmimi) as [shitja mesatare],
max(p.cmimi) as [shitja me em madhe],
min(p.cmimi) as [shitja me e vogel]
from [sus].[dbo].[Date] p
group by p.qyteti,p.mosha
having Count(mosha)>1
order by p.qyteti,p.mosha desc