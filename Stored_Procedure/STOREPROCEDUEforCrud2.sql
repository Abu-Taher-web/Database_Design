create proc ContactDeleteByID
@ContactID int
as
	begin
	delete from Contact
	where ContactID = @ContactID
	end