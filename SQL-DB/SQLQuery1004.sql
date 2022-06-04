

CREATE TABLE #Pagat1(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[paga] [decimal](18, 0) NOT NULL,
	[userId] [int] NULL,
 )
 select * from #Pagat1-- kjo o tabel e perkohshme ( o available vetem brenda sesionit)

 CREATE TABLE #Pagat2(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[paga] [decimal](18, 0) NOT NULL,
	[Shteti] [int] NULL,
 )
 select * from #Pagat2
 