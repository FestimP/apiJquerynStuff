SELECT * FROM Personi p
WHERE p.Mosha>18

exc sp_tables
execute sp_server_info

SELECT * FROM sys.columns

CREATE PROCEDURE spGetUsersAbove18
AS
SELECT * FROM Personi p
WHERE p.Mosha>18;
GO

spGetUsersAbove18 --EXEC, EXECUTE


CREATE PROC spDetyra
AS
SELECT p.Emri, p.Mbiemri, p.Gjinia, p.Mosha, p.Profesioni
FROM Personi p
WHERE p.Mosha>21
GO

EXEC spDetyra


CREATE SCHEMA people;

CREATE PROC people.spGetPeopleInfos
AS
	SELECT * FROM Personi u 
	INNER JOIN Gjinia g on g.id=u.GenderId
	INNER JOIN Roles r on r.id=u.RoleId
	WHERE u.Mosha>21
GO

EXEC people.spGetPeopleInfos

--ALTER PER ME NDRYSHU NI PROCEDURE

CREATE PROCEDURE spReturnValue
AS
	return 1;
GO

CREATE PROCEDURE spReturnValue
AS
	return 1;
GO

DECLARE @vleraKthyese int;
EXEC @vleraKthyese = spReturnValue

SELECT 'Vlera Kthyese' = @vleraKthyese;
SELECT [Vlera Kthyese] = @vleraKthyese; -- same thing

--return nuk funksionon me strings


CREATE PROC spGetUsersByAge @age int
AS
	SELECT *
	FROM Personi u
	WHERE u.Mosha = @age;
GO

EXEC spGetUsersByAge 24;


ALTER PROC spGetUsersByAgeName @age int, @emri nvarchar(50)
AS
	SELECT *
	FROM Personi u
	WHERE u.Mosha = @age AND u.Emri= @emri
GO

EXEC spGetUsersByAgeName 23, 'Filan';