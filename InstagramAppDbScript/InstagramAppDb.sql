USE [InstragramAppDb]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [uniqueidentifier] NOT NULL,
	[PostId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CommentText] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDelete] [bit] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Explore]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Explore](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[RecommendedPostID] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Followers]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Followers](
	[FollowerID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[FollowDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FollowerID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Friendship]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friendship](
	[Id] [uniqueidentifier] NOT NULL,
	[SenderUserId] [uniqueidentifier] NOT NULL,
	[ReveiverUserId] [uniqueidentifier] NOT NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_Friendship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[Id] [uniqueidentifier] NOT NULL,
	[PostId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[LikeDate] [datetime] NULL,
 CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageID] [uniqueidentifier] NOT NULL,
	[SenderUserID] [uniqueidentifier] NOT NULL,
	[ReceiverUserID] [uniqueidentifier] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[SentDate] [datetime] NOT NULL,
	[IsRead] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[DeletedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Location] [nvarchar](max) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](30) NULL,
	[FullName] [nvarchar](50) NULL,
	[ProfilePhoto] [nvarchar](max) NULL,
	[Biography] [varchar](100) NULL,
	[PhoneNumber] [nchar](13) NOT NULL,
	[isPrivate] [bit] NULL,
	[JoinedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[DeletedDate] [datetime] NULL,
	[DateOfBirth] [datetime] NULL,
	[Gender] [bit] NULL,
	[Location] [nvarchar](max) NULL,
	[Website] [nvarchar](50) NULL,
	[PostCount] [int] NULL,
	[StoryCount] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Post]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
ALTER TABLE [dbo].[Explore]  WITH CHECK ADD FOREIGN KEY([RecommendedPostID])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Explore]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Followers]  WITH CHECK ADD FOREIGN KEY([FollowerID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Followers]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Friendship]  WITH CHECK ADD  CONSTRAINT [FK_Friendship_Users] FOREIGN KEY([SenderUserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Friendship] CHECK CONSTRAINT [FK_Friendship_Users]
GO
ALTER TABLE [dbo].[Friendship]  WITH CHECK ADD  CONSTRAINT [FK_Friendship_Users1] FOREIGN KEY([ReveiverUserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Friendship] CHECK CONSTRAINT [FK_Friendship_Users1]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Post] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Post]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Users]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([ReceiverUserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([SenderUserID])
REFERENCES [dbo].[Users] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUser]
    @Id uniqueidentifier
AS
BEGIN
    DELETE FROM Users
    WHERE Id = @Id
END

GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUser]
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
    @UserName = 'abdblk',
    @Password = '123456',
    @Email = 'abdblk2525@gmail.com',
    @FullName = 'Abdullah Balıkçı',
    @ProfilePhoto = '/...',
    @Biography = 'Sql',
    @PhoneNumber = '1234567890',
    @isPrivate = 0,
    @DateOfBirth = '2000-02-01',
    @Gender = 1,
    @Location = 'İstanbul',
    @Website = 'www.teknolojiyolcusu.com',
    @PostCount = 2,
    @StoryCount = 2;

	select * from Users 
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 02/06/2023 21:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUser]
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
GO
