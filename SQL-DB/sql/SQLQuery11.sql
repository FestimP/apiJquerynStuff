select * from klasDetyra
create Table countries(
ID int NOT NULL PRIMARY KEY,
Emri varchar(225),)

alter table countries
ADD FOREIGN KEY (id) REFERENCES cities(IDs);

alter table cities
add IDs int NOT NULL PRIMARY KEY

create Table Roles(
ID int NOT NULL PRIMARY KEY,
Emri varchar(225),
--FOREIGN KEY (id) REFERENCES cities(IDs)
)
create Table Classes(
ID int NOT NULL PRIMARY KEY,
Emri varchar(225),
orari varchar(225),
Profesori varchar(225)
--FOREIGN KEY (id) REFERENCES cities(ID)
)
create Table Courses(
ID int NOT NULL PRIMARY KEY,
Emri varchar(225),
orari varchar(225),
Profesori varchar(225)
FOREIGN KEY (id) REFERENCES Classes(ID)
)
create Table Users(
ID int NOT NULL PRIMARY KEY,
Emri varchar(225),
Mbimeri varchar(225),
Roli varchar(225),
Gjinia int not null
FOREIGN KEY (id) REFERENCES Classes(ID)
)
create Table Gjinia(
ID int NOT NULL PRIMARY KEY,
Pershkrimi varchar(225),
FOREIGN KEY (id) REFERENCES Classes(ID)
)
alter table dbo.users
add RoleId Int 

insert into Users
values(2,'festim','palloshi','stud',2,2)

--alter table users 
--alter column genderId

--select * 
--from detyraKlase.dbo.users u
--inner join Roles r on r.id=u.RoleId