select p.ID, 
	   p.Emri, 
	   p.Mbimeri,
	   v.orari,
	   g.Description,
	   s.Emri as 'Lenda ',
	   s.Profesori,
	   l.emri as 'Qyteti',
	   w.Emri as 'Shtetas'
from Users p 
left join Genders g on p.id=g.id
LEFT join Classes v on p.ID=v.id
LEFT join Courses s on p.ID=s.id
LEFT join cities l on p.ID=l.id
LEFT join countries w on p.ID=w.id

select cc.Emri as Shteti, c.emri as qyteti, count(cc.id) as [numri i perdoruesve]
FROM Users u
Inner join cities c on c.id=u.qyteti
inner join countries cc on cc.id=c.[qytetiId]
GROUP BY cc.Emri

select u.ID,
	   u.Emri,
	   u.Mbimeri,
	   c.Emri as kursi
from users u
inner join Courses c on u.kursi=c.ID
where c.ID= 3;

select u.ID,
	   u.Emri,
	   u.Mbimeri,
	   c.Emri as kursi
from users u
inner join Courses c on u.kursi=c.ID
where c.Emri like 'html&';


select p.ID, 
	   p.Emri, 
	   p.Mbimeri,
	   v.orari,
	   g.Description,
	   s.Emri as 'Lenda ',
	   s.Profesori,
	   w.Emri as 'Shtetas',
	   p.gjinia as Gjinia,
	   RoleId =case
	when RoleId=1 then 'Arsimtar'
	when RoleId=2 then 'Kshilltar'
	when RoleId=3 then 'Nxenes'
	end ,
		   Mosha =case
	when mosha<18 then 'Teenejxher'
	when mosha=18  or mosha <39 then 'I rritur'
	when mosha>40 then 'plak'
	end 
from Users p 
left join Genders g on p.id=g.id
LEFT join Classes v on p.ID=v.id
LEFT join Courses s on p.ID=s.id
LEFT join cities l on p.ID=l.id
LEFT join countries w on p.ID=w.id
left join roles r on p.roleId=r.id
order by (case 
when mosha is null then Mbimeri
else Mosha end )