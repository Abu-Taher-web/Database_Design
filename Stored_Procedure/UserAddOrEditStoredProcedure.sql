CREATE PROCEDURE UserAddOrEdit
@UserID int,
@FirstName varchar(50),
@LastName varchar(50),
@Contact varchar(50),
@Address varchar(50),
@UserName varchar(50),
@Password varchar(50)
AS
IF @UserID = 0
	BEGIN
		INSERT INTO UserRegistration (FirstName, LastName, Contact,Address,UserName,Password)
		values(@FirstName, @LastName, @Contact, @Address, @UserName, @Password)
	END
ELSE
	BEGIN
		UPDATE UserRegistration
		SET
			FirstName =@FirstName, 
			LastName =@LastName, 
			Contact =@Contact,
			Address =@Address,
			UserName =@UserName, 
			Password =@Password
		WHERE
			UserID = @UserID
	END