alter PROCEDURE UpdateUser
    @Id uniqueidentifier,
    @UserName NVARCHAR(50),
    @Password NVARCHAR(50),
    @Email NVARCHAR(50),
    @FullName NVARCHAR(100),
    @ProfilePhoto NVARCHAR(100),
    @Biography NVARCHAR(MAX),
    @PhoneNumber NVARCHAR(20),
    @isPrivate BIT,
    @DateOfBirth DATETIME,
    @Gender bit,
    @Location NVARCHAR(100),
    @Website NVARCHAR(100),
    @PostCount INT,
    @StoryCount INT
AS
BEGIN
    DECLARE @ModifiedDate DATETIME = GETDATE();

    UPDATE Users
    SET
        UserName = @UserName,
        Password = @Password,
        Email = @Email,
        FullName = @FullName,
        ProfilePhoto = @ProfilePhoto,
        Biography = @Biography,
        PhoneNumber = @PhoneNumber,
        isPrivate = @isPrivate,
        ModifiedDate = @ModifiedDate,
        DateOfBirth = @DateOfBirth,
        Gender = @Gender,
        Location = @Location,
        Website = @Website,
        PostCount = @PostCount,
        StoryCount = @StoryCount
    WHERE
        Id = @Id
END

EXEC UpdateUser
    @Id = 'F1C0A687-1451-49ED-B4B2-DA87AFD75AB3',
    @UserName = 'abdblk_',
    @Password = '123',
    @Email = 'abdblk2525@hotmail.com',
    @FullName = 'Abdullah B',
    @ProfilePhoto = '/',
    @Biography = 'Sql',
    @PhoneNumber = '9876543210',
    @isPrivate = 1,
    @DateOfBirth = '01-03-2000',
    @Gender = 1,
    @Location = 'Erzurum ',
    @Website = 'www.teknolojiyolcusu.com',
    @PostCount = 10,
    @StoryCount = 5;

	select * from Users