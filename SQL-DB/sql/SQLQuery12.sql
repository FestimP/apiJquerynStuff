select c.id ,c.name,cc.name
from Cities c
inner join Countries cc on cc.Id=c.CountryId

ALTER TABLE Classes
ALTER  column Id int  NOT NULL
ALTER TABLE Classes
ALTER  column [Name] nvarchar(100)  NOT NULL

ALTER TABLE Classes
add Unique (Id);

alter table classes
drop constraint [UQ__Classes__3214EC06688A53CB];

alter table Classes
add constraint PK_Classes primary key (id);

alter table Attendance
add constraint PK_Classes primary key (id);

alter table Cities
add constraint PK_Cities primary key (id);
alter table Countries
add constraint PK_Countries primary key (id);
alter table Courses
add constraint PK_Courses primary key (id);
alter table Genders
add constraint PK_Genders primary key (id);
alter table orari
add constraint PK_orari primary key (id);
alter table Roles
add constraint PK_Roles primary key (Id);
alter table Users
add constraint PK_Users primary key (id);

alter table Cities
Add constraint 
FK_Countries foreign key (Id) 
references Countries(Id) 