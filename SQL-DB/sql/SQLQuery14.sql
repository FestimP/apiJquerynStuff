alter table dbo.users
add check(Age>=19);

alter table users
add constraint DF_Age
default 18 for Age;

select *  iif(users.age=>18,'yes',
no as [greater than 18] from users;  

select *,
isnull(users.age>15) as age1,
iif(users.Age>18,'yes,'no') as [greater than 18], 
cast ('2022-05-04' as datetime) as [data]
from users;  

Select Cast('2022-05-28 12:35:00.000' as datetime) as [Data]
select year(Cast('2022-05-28 12:35:00.000' as datetime)) as [year]
select year(getDate()) as [year]

select year(GetDate())-22 as [year]
select Month(GetDate()) as [month]
select day(GetDate()) as [day]
