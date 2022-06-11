--Declare @Counter int= 0; --\ Deklarimi dhe inicializimi i variables @counter
--set @Counter=7 --\inicializimi i variables permes SET
--select @Counter = 5;--\inicializimi i variables permes Select Statement 
--select @Counter as [Variabla numerike];
--print @counter;
--print 'Vlera e variables Counter eshte :' +  Cast(@counter as nvarchar(20));
--declare @sqlstatement nvarchar(max)='Select * from users';
--print @sqlstatement
--Declare @CheckVariable int= 0;
--select @CheckVariable=3;
--if @CheckVariable =5
--begin
--print 'Vlera e CheckVariable eshte 5'
--end
--else 
--begin 
--Print 'vlera e e dhene eshte e ndryshme me 5'
--end

--Declare @moshaRef int= 25;
--Declare @moshaDhene int= 18;
--if @moshaRef> @moshaDhene
--begin
--select * from Users u where u.mosha>@moshaRef; 
--end
--else 
--begin 
--select * from Users u where u.mosha>@moshaDhene; 
--end

--Declare @moshaRef1 int= 18;
--Declare @moshaDhene1 int= 25;
--if @moshaRef1> @moshaDhene1
--begin
--select * from Users u where u.mosha>@moshaRef1; 
--end
--else 
--begin 
--select * from Users u where u.mosha>@moshaDhene1; 
--end

--------------Start ------
Declare @kerkesa varchar(20)= 'Shteti';
if @kerkesa='mosha'
begin
select u.mosha from Users u 
end
else
if @kerkesa='klasa'
begin
select c.Emri from Users u 
left join Classes c on c.id=u.klasa
end
else
if @kerkesa='Emri'
begin
select u.Emri from Users u 
end
else 
if @kerkesa='mbiemri'
begin
select u.Mbimeri from Users u 
end
else if @kerkesa='Qyteti'
begin
select q.emri from Users u 
left join cities q on q.id=u.qyteti
end
else 
if @kerkesa='shteti'
begin
select s.Emri from Users u 
left join countries s on s.id=u.Shteti 
end
else 
if @kerkesa='Roli'
begin
select r.Emri from Users u 
left join Roles r on r.id=u.Shteti 
end
else
if @kerkesa='kursi'
begin
select c.Emri from Users u 
left join Courses c on c.id=u.klasa
end
else 
begin 
select * from Users u
end
--End--
Select rand();-- random ass numer
select FLOOR(2.3)--  e skekekton 2shin
select CEILING(2.3)-- e selekton 3shin
select FLOOR(RAND()*100);
--// Dis a loop  start//--
declare  @wCounter int =1;
while(@wCounter<=10)
begin
print FLOOR(RAND()*100);
 set @wCounter =@wCounter+1
end
--// Dis a loop end//--

declare  @wCounter1 int =1;
while(@wCounter1<=10)
begin
print @wcounter1;
 set @wCounter1 =@wCounter1+1
end

declare  @wCounter2 int =1;
while(@wCounter2<=10)
begin
if @wCounter2=5
begin;
break;
end
print @wcounter2;
 set @wCounter2 =@wCounter2+1
end


declare  @wCounter3 int =1;
while(@wCounter3
<=10)
begin
if @wCounter3=5
begin;
continue;
end
print @wcounter3;
 set @wCounter3 =@wCounter3+1
end