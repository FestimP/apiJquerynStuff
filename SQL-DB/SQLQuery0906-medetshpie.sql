

  begin try
		begin transaction 
			declare @sasia int,@productId int;
			set @sasia=15;
			set @productId=3;
			insert into [dbo].[Porosite]
			values(@sasia,@productId,'Porosia u anulua');

			update [dbo].[produkti]
			set sasia=sasia-@sasia
			where id=@productId;
			declare @sSasia int;

			select @sSasia= Sasia from produkti where id=@productId
			if(@sSasia<0)
				raiserror(155600,-1,-1,'Error error');-- error plz fix it 
	 commit transaction 
 
  end try
  begin catch
  rollback transaction;
  select 
  ERROR_LINE() as errorLine,
  ERROR_MESSAGE() as messageError,
  ERROR_NUMBER() as numberError,
  ERROR_STATE() as ErrorState,
  ERROR_PROCEDURE() as ProcedureError,
  ERROR_SEVERITY() as ErrorSeverity;
  end catch
  --Detyr shpie - me ba te njejten po me page,kush merr qka etj etj.

  SELECT *
  FROM [klasDetyra].[dbo].[Porosite];
  select * from produkti;
