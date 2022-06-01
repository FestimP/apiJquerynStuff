select * from Users p
left join Genders g on g.id;

select p.FirstName,
p.LastName,
p.Address,
p.GenderId as Gjinia
from Users p 
inner join Genders g on p.GenderId=g.id

select * 
from Users p 
right join Genders g on p.GenderId=g.id

select *
from Genders g
left join Users p on p.GenderId=g.id;

select * 
from Users p
full join Genders g on p.GenderId=g.id;