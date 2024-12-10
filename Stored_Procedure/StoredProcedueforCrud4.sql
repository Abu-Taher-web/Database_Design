create proc ContactViewByID
@ContactID int
as
	begin
	select * from Contact
	where ContactID = @ContactID
	end