alter PROCEDURE InsertUser
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
    DECLARE @Id uniqueidentifier = NEWID();
    DECLARE @JoinedDate DATETIME = GETDATE();

    INSERT INTO Users (
        Id,
        UserName,
        Password,
        Email,
        FullName,
        ProfilePhoto,
        Biography,
        PhoneNumber,
        isPrivate,
        JoinedDate,
        ModifiedDate,
        IsActive,
        IsDelete,
        DeletedDate,
        DateOfBirth,
        Gender,
        Location,
        Website,
        PostCount,
        StoryCount
    )
    VALUES (
        @Id,
        @UserName,
        @Password,
        @Email,
        @FullName,
        @ProfilePhoto,
        @Biography,
        @PhoneNumber,
        @isPrivate,
        @JoinedDate,
        NULL,
        1,
        0,
        NULL,
        @DateOfBirth,
        @Gender,
        @Location,
        @Website,
        @PostCount,
        @StoryCount
    )
END


EXEC InsertUser
    @UserName = 'abdblk2',
    @Password = '123456',
    @Email = 'abdblk2525@gmail.com',
    @FullName = 'Abdullah Balýkçý',
    @ProfilePhoto = '/...',
    @Biography = 'Sql',
    @PhoneNumber = '1234567890',
    @isPrivate = 0,
    @DateOfBirth = '2000-02-01',
    @Gender = 1,
    @Location = 'Ýstanbul',
    @Website = 'www.teknolojiyolcusu.com',
    @PostCount = 2,
    @StoryCount = 2;

	select * from Users 