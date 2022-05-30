/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[Produkti]
      ,[Cmimi]
      ,[Qyteti]
      ,[Data]
  FROM [sus].[dbo].[Date]

  --ska kuptim ne ket rast me dasht me ba grupim me id
   select id, p.qyteti, count(cmimi) 
  from date p
  group by p.qyteti
  order by p.qyteti

  select p.qyteti, count(cmimi) 
  from date p
  group by p.qyteti
  order by p.qyteti

