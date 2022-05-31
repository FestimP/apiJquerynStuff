select * 
from Person.Address a
inner join person.StateProvince sp on  sp.stateprovinceId=a.StateProvinceID

select * 
from Person.StateProvince sp 
inner join person.Address a on a.StateProvinceID=sp.StateProvinceID

select sp.name as Provinca,
		a.City as Qyteti ,
		a.AddressLine1 as Adresa
from Person.StateProvince sp 
inner join person.Address a on a.StateProvinceID=sp.StateProvinceID