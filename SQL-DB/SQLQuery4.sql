/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [AddressID]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[City]
      ,[StateProvinceID]
      ,[PostalCode]
      ,[SpatialLocation]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[Address] t

  where t.AddressLine1 like '%ree%';
    --where t.AddressLine1 like '%ree'; --fillon me qka te dush amo mbaron me -ree
	 --where t.AddressLine1 like '_ree%'; --fillon me ree edhe mbaron me qka te dush
 select *
 FROM [AdventureWorks2019].[Person].[Address] t
  where t.AddressLine1 like '%re_';
   select *
 FROM [AdventureWorks2019].[Person].[Address] t
  where t.AddressLine1 like '_re&';
   select *
 FROM [AdventureWorks2019].[Person].[Address] t
  where t.AddressLine1 like '[a-c]r%'; -- adresat shkronja e par o a-c tana shkronja e dyt o r edhe tana vazhdon qysh te don

   select *
 FROM [AdventureWorks2019].[Person].[Address] t
  where t.AddressLine1 like '[^a-h]r%'; -- adresat qe nuk fillojn me shkronjat prej a-h 
 
 select *
   FROM [AdventureWorks2019].[Person].[Address] t
  where t.AddressLine1 like '[a-z]%r[d-h]%e';

  select * 
  from person.Address a 
  where a.StateProvinceID=53;

  select * 
  from person.Address a 
  where a.StateProvinceID=53 or a.StateProvinceID=19 or a.StateProvinceID=31 ;
 
 select * 
  from person.Address a 
   where a.StateProvinceID in (19,31,53);

    select * 
  from person.Address a 
   where a.StateProvinceID in (select top 10 StateProvinceID from person.StateProvince);
  order by Stateprovinceid;

  select stateProvinceId, count(stateprovinceId) as personAddress 
  from person.address a
  where a.stateprovinceId in (select top 100 stateprovinceId from person.stateprovince)
    group by stateprovinceid
	having count(stateprovinceId)>100
	order by PersonAddress desc

	  select stateProvinceId, count(stateprovinceId) as personAddress 
  from person.address a
  where a.stateprovinceId in (select top 100 stateprovinceId from person.stateprovince)
    group by stateprovinceid
	having count(stateprovinceId)>100
	order by PersonAddress desc

	 select * 
  from person.Address a 
   where exists  (select top 10 StateProvinceID from person.StateProvince)
  order by Stateprovinceid;