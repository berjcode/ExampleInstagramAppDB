CREATE PROCEDURE DeleteUser
    @Id uniqueidentifier
AS
BEGIN
    DELETE FROM Users
    WHERE Id = @Id
END

EXEC DeleteUser
    @Id = '43207C9D-36C2-4FF5-81A9-0FC38641EF33';

	select* from Users