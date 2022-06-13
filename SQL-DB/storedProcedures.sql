--Stored Procedures---
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
	WHERE u.Mosha>21;

	--return(SELECT COUNT(u.id); 
	--FROM Personi u 
	--INNER JOIN Gjinia g on g.id=u.GenderId
	--INNER JOIN Roles r on r.id=u.RoleId
	--WHERE u.Mosha>21);
GO
--declare @pReturnType int;
--exec @pReturnType = people.spGetPeopleInfos
--select @pReturnType as [vlera kthyese]

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


Create PROCEDURE people.spGetPersonInfosAndRowCount
@pAge int , @pRowCount int OUT 
AS
	SELECT u.ID,
		   u.Emri,
		   u.Mbimeri,
		   g.Description  AS Gjinia,
		   r.Emri AS Profesioni
	FROM users u 
	inner join Genders g ON g.id=u.Gjinia
	inner join Roles r ON r.id=u.RoleId
	WHERE u.mosha>@pAge;

	select @pRowCount=Count(*)
	FROM users u 
	inner join Genders g ON g.id=u.Gjinia
	inner join Roles r ON r.id=u.RoleId
		WHERE u.mosha>@pAge;

Go
Declare @oReturnValue int;
exec people.spGetPersonInfosAndRowCount 21,@oReturnValue out;
select @oReturnValue as [numri i rreshtave]
select 1;
go

alter PROCEDURE people.spGetNameByID
@Id int , @Emri nvarchar(100) out,@Mosha int out
AS 
SELECT @Emri=u.Emri,
@Mosha=u.mosha
	FROM users u 
	WHERE u.Id=@Id;
	go
Declare @id int=3;
Declare @Emri nvarchar(100);
Declare @Mosha int;
exec people.spGetNameByID @id,@Emri OUT, @Mosha OUTPUT;
Select @Emri as emri, @mosha as mosha;
print @Emri + '' + Cast(@mosha as nvarchar(10));
select 1;
-- Return type - e kthen 1 vlere 
-- output type - mun kthen shum
declare @Person Table(id int,Emri varchar(40),Mbiemri varchar(40));
insert into @Person
values(1,'kreshnik','gashi');
select * from @Person
drop table if Exists #TempPerson 
select * 
into #TempPerson
from @Person
select * from #TempPerson
go
-- STOCK procedurat jan ma te mira(vs me queryt ) sepse:
-- stock proceduat ruhen edhe ski nevoj me i deklaru saher qe don me perdor
-- it is better per response time
-- metod ma e shpejt(ni her procesohet tana ta shfaq rezultatin)
-- ma i sigurt,munesh me ba empose restrictions, me e rregullu qasjen,abstrahimi etj etj.
-- e pamundeson sql injecition 
CREATE VIEW vGetPagaPunetoreve
AS
	SELECT u.Emri, u.Mbimeri, u.mosha AS Mosha, p.Paga, u.roleId as Roli
	FROM Users u
	INNER JOIN Pagat p on p.UserId = u.Id
	WHERE p.Paga > 500
GO

	SELECT * FROM vGetPagaPunetoreve;

	UPDATE  vGetPagaPunetoreve 
	SET Emri='Egzona'
	WHERE Emri='Gezime';

	SELECT *
	FROM vGetPagaPunetoreve vgp
	INNER JOIN Roles r ON r.Id = vgp.Roli;

	go

--Detyre
alter VIEW vGetClassesAndCourses 
AS
	SELECT u.Id AS UserId, u.Emri, u.Mbimeri, c.Id AS CourseId, c.kursi, c.klasaId
	FROM Users u
	INNER JOIN Courses c on c.Id = u.kursi
	WHERE c.Emri = 'css'
GO

SELECT * FROM vGetClassesAndCourses