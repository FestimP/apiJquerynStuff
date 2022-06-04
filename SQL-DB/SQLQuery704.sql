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
  FROM [klasDetyra].[dbo].[Users]

  INSERT INTO USERS([Emri],[Mbimeri],[Roli],[Gjinia],[klasa],[qyteti],[Shteti],[mosha])
  SELECT [Emri],[Mbimeri],[Roli],[Gjinia],[klasa],[qyteti],[Shteti],[mosha] FROM Users1 WHERE MOSHA=28;