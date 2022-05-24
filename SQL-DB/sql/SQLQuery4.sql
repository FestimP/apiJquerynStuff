--SELECT * 
--FROM Person.Person;


select 5+5 as shuma;

Select 'Festim' as Studenti;
select 'agon' + 'Alushi' Studenti

SELECT 
		p.FirstName as emri,
		p.MiddleName as emriPrindit,
		p.LastName as mbiemri,
		'Profesori' as Profesioni,
		450+300 as paga
FROM Person.Person AS p;

select distinct p.FirstName,
p.LastName
from person.person p



select distinct p.FirstName, p.LastName
from Person.Person p

where p.FirstName='Kim'

Select * 
from person.person p
Where p.BusinessEntityID=2102

select *
from person.person p
where p.BusinessEntityID = 2102 or p.FirstName='terri'

select
p.BusinessEntityID as Id,
p.FirstName  as Emri,
p.LastName as Mbiemri,
p.MiddleName as nofka
from person.person p
where p.BusinessEntityID = 2102  and LastName='Abercrombie'


select
p.BusinessEntityID as Id,
p.FirstName  as Emri,
p.LastName as Mbiemri,
p.MiddleName as nofka
from person.person p
where p.FirstName='kim' and  not  LastName='Abercrombie'
--where p.FirstName='kim' and    LastName!='Abercrombie' edhen kjo e kryn punen

select * 
from Person.person p
order by p.FirstName,p.LastName,p.BusinessEntityID

select p.BusinessEntityID,
p.FirstName, p.MiddleName
from person.person p
where p.FirstName='Aaron'
order by FirstName,p.LastName desc;

select p.BusinessEntityID,
p.FirstName, p.MiddleName
from person.person p
where p.FirstName='Aaron'
order by p.BusinessEntityID
