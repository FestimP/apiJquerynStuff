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
      ,[mosha]
  FROM [klasDetyra].[dbo].[studenti]

  INSERT INTO studenti([ID],[Emri],[Mbimeri],[Roli],[Gjinia],[RoleId],[klasa],[Shteti],[kursi],[qyteti],[mosha])
  SELECT [ID],[Emri],[Mbimeri],[Roli],[Gjinia],[RoleId],[klasa],[Shteti],[kursi],[qyteti],[mosha] FROM Users WHERE MOSHA>0;
  
;