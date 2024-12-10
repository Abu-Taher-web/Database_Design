CREATE PROC ContactCrateOrUpdate
@ContactID int,
@Name varchar(50),
@Mobile varchar(50),
@Address varchar(50)
as
	BEGIN
		if(@ContactID = 0)
			begin
				insert into Contact(Name,Mobile,Address)
				values(@Name, @Mobile, @Address)
			end
		else
			begin
				update Contact
				set
				Name = @Name,
				Mobile = @Mobile,
				Address = @address
				where ContactID = @ContactID
			end
	END