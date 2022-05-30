/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP (1000) [SalesOrderID]
--      ,[SalesOrderDetailID]
--      ,[CarrierTrackingNumber]
--      ,[OrderQty]
--      ,[ProductID]
--      ,[SpecialOfferID]
--      ,[UnitPrice]
--      ,[UnitPriceDiscount]
--      ,[LineTotal]
--      ,[rowguid]
--      ,[ModifiedDate]
select Max(t.LineTotal) as [Shitja me e shtrejt]
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] t

  select Min(t.LineTotal) as [Shitja me e lire]
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] t

  select Max(t.LineTotal) as [Shitja me e shtrejt] ,  Min(t.LineTotal) as [Shitja me e lire]
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] t

    select Avg(LineTotal) as [Shitja mesatare]
  FROM [Sales].[SalesOrderDetail] sod

    select Sum(sod.LineTotal) as [Shuma e shitjeve]
  FROM [Sales].[SalesOrderDetail] sod

    select Count(t.SalesOrderID) as [Numri i shitjeve]
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] t
  where LineTotal>100;

      select Count(SalesOrderID) as [Numri i shitjeve],Sum(sod.LineTotal) as [Shuma e shitjeve],
	  Avg(LineTotal) as [Shitja mesatare] ,Max(LineTotal) as [Shitja me e shtrejt] ,  Min(LineTotal) as [Shitja me e lire]
	    FROM [Sales].[SalesOrderDetail] sod
		Where 1=1;
  select * 
  from [Sales].[SalesOrderDetail] t
