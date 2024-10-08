USE [E_Com]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[Category] [varchar](255) NOT NULL,
	[Color] [varchar](100) NULL,
	[Description] [text] NULL,
	[ImageUrl] [varchar](500) NULL,
	[Quantity] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Contact] [nvarchar](50) NOT NULL,
	[TotalAmount] [decimal](10, 2) NOT NULL,
	[PaymentMethod] [nvarchar](50) NOT NULL,
	[OrderDate] [datetime] NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Name] [nvarchar](20) NULL,
 CONSTRAINT [PK__Orders__C3905BAFE9F5E621] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Color] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](2083) NULL,
	[SellerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellerAccount]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellerAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Email] [nvarchar](30) NULL,
	[Password] [nvarchar](20) NULL,
	[phoneNumber] [nvarchar](20) NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK__SellerAc__3214EC071FD26847] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartId], [Name], [Price], [Category], [Color], [Description], [ImageUrl], [Quantity], [UserId], [ProductId]) VALUES (1035, N'laptop1', CAST(600000.00 AS Decimal(10, 2)), N'_C', N'red', N'a', N'https://www.shutterstock.com/image-photo/smartphone-blank-screen-on-white-260nw-2330515991.jpg', 1, 2, 1011)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [Email], [Address], [Contact], [TotalAmount], [PaymentMethod], [OrderDate], [UserID], [ProductID], [Name]) VALUES (20, N'santoshparida@ksoft.co.in', N'P.m basti 1st by lane', N'08018491333', CAST(200000.00 AS Decimal(10, 2)), N'Pay on Delivery', CAST(N'2024-08-13T16:13:25.910' AS DateTime), 2, 3, N's')
INSERT [dbo].[Orders] ([OrderID], [Email], [Address], [Contact], [TotalAmount], [PaymentMethod], [OrderDate], [UserID], [ProductID], [Name]) VALUES (24, N'santoshparida@ksoft.co.in', N'P.m basti 1st by lane', N'8018491333', CAST(1800000.00 AS Decimal(10, 2)), N'Pay on Delivery', CAST(N'2024-08-13T18:24:29.500' AS DateTime), 2, 1011, N'santosh3')
INSERT [dbo].[Orders] ([OrderID], [Email], [Address], [Contact], [TotalAmount], [PaymentMethod], [OrderDate], [UserID], [ProductID], [Name]) VALUES (25, N'santoshparida@ksoft.co.in', N'P.m basti 1st by lane', N'8018491333', CAST(5400000.00 AS Decimal(10, 2)), N'Pay on Delivery', CAST(N'2024-08-13T18:57:01.333' AS DateTime), 2, 1009, N'parida')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (1005, N'phone', CAST(100000.00 AS Decimal(18, 2)), N'yellow', N'a', N'a', N'https://www.shutterstock.com/image-photo/smartphone-blank-screen-on-white-260nw-2330515991.jpg', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (1009, N'laptop', CAST(600000.00 AS Decimal(18, 2)), N'red', N'_C', N'a', N'https://shop.gadgetsnow.com/images/smartphone.jpg', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (1011, N'laptop1', CAST(600000.00 AS Decimal(18, 2)), N'red', N'_C', N'a', N'https://www.shutterstock.com/image-photo/smartphone-blank-screen-on-white-260nw-2330515991.jpg', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (1013, N'laptop2', CAST(600000.00 AS Decimal(18, 2)), N'red', N'_C', N'a', N'https://media.istockphoto.com/id/1874702491/photo/young-female-college-student-smiling-while-doing-homework-in-a-school-cafeteria.webp?b=1&s=170667a&w=0&k=20&c=iM7oKsQQTXHFDBLy1L-x9juy3hGa-QN_ahGSj10Qymk=', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (2002, N'bottle', CAST(100.00 AS Decimal(18, 2)), N'green', N'green bottle', N'green Bottle ......', N'data:image/jpeg;base64,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', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (2003, N'Dress  for girl', CAST(1000.00 AS Decimal(18, 2)), N'white', N'Dress ', N'Dress ........', N'https://images.unsplash.com/photo-1651047566242-1f93897b907a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z2lybCUyMGRyZXNzfGVufDB8fDB8fHww', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (2004, N'headphones', CAST(2000.00 AS Decimal(18, 2)), N'black ', N'headphones', N'headphones', N'https://www.shutterstock.com/shutterstock/photos/2130630635/display_1500/stock-vector--d-wireless-headphones-mockup-set-of-realistic-wireless-over-ear-headphones-and-in-ear-headphones-2130630635.jpg', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (2005, N'headphone1', CAST(1000.00 AS Decimal(18, 2)), N'black ', N'headphone1', N'headphone1', N'https://www.shutterstock.com/shutterstock/photos/2130630635/display_1500/stock-vector--d-wireless-headphones-mockup-set-of-realistic-wireless-over-ear-headphones-and-in-ear-headphones-2130630635.jpg', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (2006, N'i phone 14', CAST(70000.00 AS Decimal(18, 2)), N'blue', N'phone', N'phone....', N'https://help.apple.com/assets/65E21662495F1A6C8701F50A/65E21663EF8273BE1D0C2734/en_US/c842bee88d1f74282586f11d47a5d7df.png', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (2015, N'phone11', CAST(2.00 AS Decimal(18, 2)), N'red', N'aa', N'aa', N'aa', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (2016, N's', CAST(400.00 AS Decimal(18, 2)), N't', N'h', N's', N's', 6)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Color], [Category], [Description], [ImageUrl], [SellerId]) VALUES (2018, N'phone', CAST(3.00 AS Decimal(18, 2)), N'red', N'a', N'3', N'a', 3016)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[SellerAccount] ON 

INSERT [dbo].[SellerAccount] ([Id], [Name], [Email], [Password], [phoneNumber], [Address]) VALUES (6, N'santoshkuparida', N'santoshku@gmail.com', N'1234', N'8018491333', N'a')
INSERT [dbo].[SellerAccount] ([Id], [Name], [Email], [Password], [phoneNumber], [Address]) VALUES (3016, N'santosh1', N'santoshparida@ksoft.co.in', N'01', N'08018491333', N'P.m basti 1st by lane')
INSERT [dbo].[SellerAccount] ([Id], [Name], [Email], [Password], [phoneNumber], [Address]) VALUES (3018, N'santosh', N'santoshparida@ksoft.co.in', N'0909', N'08018491333', N'P.m basti 1st by lane')
INSERT [dbo].[SellerAccount] ([Id], [Name], [Email], [Password], [phoneNumber], [Address]) VALUES (3020, N'sk santosh', N'santoshparida@ksoft.co.in', N'sk', N'08018491333', N'P.m basti 1st by lane')
SET IDENTITY_INSERT [dbo].[SellerAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1, N'string', N'string', N'string')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (2, N'santosh', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (3, N'santosh', N'santoshparida@ksoft.co.in', N'128')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (4, N'Raja Das', N'raja@gmail.com', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (5, N'SK santosh', N'santoshparida@ksoft.co.in', N'10')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (6, N'sk bhai ', N'sk@gmail.com', N'sk')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1002, N'sitam parida', N'sitam111@gmail.com', N'111')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1003, N'', N'', N'')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1004, N'sita', N'sita@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1005, N'santosh12', N'santoshparida@ksoft.co.in', N'01')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1006, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1007, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1008, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1009, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1010, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1011, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1012, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1013, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1014, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1015, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1016, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1017, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1018, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1019, N'ak', N'aka@gmail.com', N'1')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1020, N'santosh4', N'santoshparida@ksoft.co.in', N'4')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1021, N'santosh4', N'santoshparida@ksoft.co.in', N'4')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1022, N'santosh23', N'santoshparida@ksoft.co.in', N'123456')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1023, N'santosh23', N'santoshparida@ksoft.co.in', N'123456')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1024, N'santosh44', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1025, N'santosh44', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1026, N'santosh44', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1027, N'santosh44', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1028, N'santosh44', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1029, N'santosh44', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1030, N'santosh44', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1031, N'santosh44', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1032, N'santosh44', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1033, N'santosh44', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1034, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1035, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1036, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1037, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1038, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1039, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1040, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1041, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1042, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1043, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1044, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1045, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1046, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1047, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1048, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1049, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1050, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1051, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1052, N'santosh1121', N'santoshparida@ksoft.co.in', N'212')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1053, N'santosh1', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1054, N'santosh1', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1055, N'santosh', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1056, N'santosh', N'santoshparida@ksoft.co.in', N'12')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1057, N'santosh', N'santoshparida@ksoft.co.in', N'2123')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1058, N'santosh09', N'santoshparida@ksoft.co.in', N'09')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1059, N'Muna', N'muna091@gmail.com', N'091')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1060, N'santosh', N'santoshparida@ksoft.co.in', N'12345')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1061, N'santosh12345', N'santoshparida@ksoft.co.in', N'123')
INSERT [dbo].[Users] ([UserId], [UserName], [Email], [Password]) VALUES (1062, N'Raja', N'Raja@gmail.com', N'1111')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__OrderDat__02FC7413]  DEFAULT (getdate()) FOR [OrderDate]
GO
/****** Object:  StoredProcedure [dbo].[AddCart]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddCart]
    @Name VARCHAR(255),
    @Price DECIMAL(10, 2),
    @Category VARCHAR(255),
    @Color VARCHAR(100) = NULL,
    @Description TEXT = NULL,
    @ImageUrl VARCHAR(500) = NULL,
    @Quantity INT,
    @UserId INT,
    @ProductId INT,
    @CartId INT OUTPUT
AS
BEGIN
    INSERT INTO Cart (Name, Price, Category, Color, Description, ImageUrl, Quantity, UserId, ProductId)
    VALUES (@Name, @Price, @Category, @Color, @Description, @ImageUrl, @Quantity, @UserId, @ProductId);
    
    SET @CartId = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[AddProduct]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddProduct]  
    @Name NVARCHAR(100),  
    @Price DECIMAL(18, 2),  
    @Color NVARCHAR(50),  
    @Category NVARCHAR(50),  
    @Description NVARCHAR(MAX),  
    @ImageUrl NVARCHAR(2083),
	@SellerId int,
    @ProductId INT OUTPUT  
AS  
BEGIN  
    SET NOCOUNT ON;  
  
    INSERT INTO Products (Name, Price, Color, Category, Description, ImageUrl,SellerId)  
    VALUES (@Name, @Price, @Color, @Category, @Description, @ImageUrl,@SellerId);  
  
    SET @ProductId = SCOPE_IDENTITY();  
END  
GO
/****** Object:  StoredProcedure [dbo].[DeleteCartByUserId]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCartByUserId]
    @UserId INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM dbo.Cart
    WHERE UserId = @UserId;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCartItem]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCartItem]
    @CartId INT
AS
BEGIN
    DELETE FROM [dbo].[Cart]
    WHERE [CartId] = @CartId;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteOrder]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOrder]
    @OrderID INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM [dbo].[Orders]
    WHERE [OrderID] = @OrderID;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteProduct]
    @ProductId INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Products
    WHERE Id = @ProductId;
END
GO
/****** Object:  StoredProcedure [dbo].[EditProduct]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditProduct]
    @ProductId INT,
    @Name NVARCHAR(100),
    @Price DECIMAL(18, 2),
    @Color NVARCHAR(50),
    @Category NVARCHAR(50),
    @Description NVARCHAR(MAX),
    @ImageUrl NVARCHAR(2083),
    @EditedProductId INT OUTPUT  -- Output parameter to return edited ProductId
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Products
    SET Name = @Name,
        Price = @Price,
        Color = @Color,
        Category = @Category,
        Description = @Description,
        ImageUrl = @ImageUrl
    WHERE Id = @ProductId;

    -- Set the output parameter to the edited ProductId
    SET @EditedProductId = @ProductId;
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllSellers]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllSellers]
AS
BEGIN
    SELECT *
    FROM SellerAccount;
END
GO
/****** Object:  StoredProcedure [dbo].[GetCartByUserId]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCartByUserId]
    @UserId INT
AS
BEGIN
    SELECT 
        CartId,
        Name,
        Price,
        Category,
        Color,
        Description,
        ImageUrl,
        Quantity,
        UserId,
        ProductId
    FROM 
        Cart
    WHERE 
        UserId = @UserId;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetOrdersByUserID]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrdersByUserID]
    @UserID INT
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT 
        OrderID,
        Email,
        Address,
        Contact,
        TotalAmount,
        PaymentMethod,
        OrderDate,
        UserID
    FROM 
        [dbo].[Orders]
    WHERE 
        UserID = @UserID;
END


GO
/****** Object:  StoredProcedure [dbo].[GetProductById]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductById]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        [Id],
        [Name],
        [Price],
        [Color],
        [Category],
        [Description],
        [ImageUrl]
    FROM 
        [dbo].[Products]
    WHERE 
        [Id] = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[InsertOrder]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertOrder]
    @Email NVARCHAR(255),
    @Address NVARCHAR(255),
    @Contact NVARCHAR(50),
    @TotalAmount DECIMAL(10, 2),
	@UserID int,
	@ProductID int,
	@Name nvarchar(20),
    @OrderID INT OUTPUT
AS
BEGIN
    INSERT INTO Orders (Email, Address, Contact, TotalAmount, PaymentMethod,UserID,ProductID,name)
    VALUES (@Email, @Address, @Contact, @TotalAmount, 'Pay on Delivery',@UserID,@ProductID,@Name);

    SET @OrderID = SCOPE_IDENTITY();
END;
GO
/****** Object:  StoredProcedure [dbo].[ListProducts]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListProducts]  
AS  
BEGIN  
    SET NOCOUNT ON;  
  
    SELECT Id, Name, Price, Color, Category, Description, ImageUrl,SellerId  
    FROM Products;  
END  
  
GO
/****** Object:  StoredProcedure [dbo].[ListProductsBySellerId]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListProductsBySellerId]
    @SellerId INT
AS
BEGIN
    SELECT 
        [Id],
        [Name],
        [Price],
        [Color],
        [Category],
        [Description],
        [ImageUrl]
    FROM 
        [dbo].[Products]
    WHERE 
        [SellerId] = @SellerId;
END
GO
/****** Object:  StoredProcedure [dbo].[SearchProductsByName]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchProductsByName]
    @ProductName NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        [Id],
        [Name],
        [Price],
        [Color],
        [Category],
        [Description],
        [ImageUrl]
    FROM 
        [dbo].[Products]
    WHERE 
        [Name] LIKE '%' + @ProductName + '%'
    ORDER BY 
        [Name] ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertSeller]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_InsertSeller]
    @Name NVARCHAR(100),
    @Email NVARCHAR(100),
    @Password NVARCHAR(100),
    @PhoneNumber NVARCHAR(20) = NULL,  -- Allow NULL values for optional parameters
    @Address NVARCHAR(200) = NULL,
    @Id INT OUTPUT
AS
BEGIN
    INSERT INTO SellerAccount (Name, Email, Password, PhoneNumber, Address)
    VALUES (@Name, @Email, @Password, @PhoneNumber, @Address);

    SET @Id = SCOPE_IDENTITY();  -- Get the ID of the newly inserted record
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUser]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE PROCEDURE [dbo].[sp_InsertUser]
    @UserName NVARCHAR(50),
    @Email NVARCHAR(50),
    @Password NVARCHAR(100),
    @NewUserId INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Users (UserName, Email, Password)
    VALUES (@UserName, @Email, @Password);

    SET @NewUserId = SCOPE_IDENTITY();
END

GO
/****** Object:  StoredProcedure [dbo].[sp_SellerLogin]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SellerLogin]
    @Email NVARCHAR(30),
    @Password NVARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id ,
        Name,
        Email
    FROM 
        SellerAccount
    WHERE 
        Email = @Email AND
        Password = @Password;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UserLogin]    Script Date: 19-08-2024 01:16:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UserLogin]
    @Email NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        UserId,
        UserName,
        Email
    FROM 
        Users
    WHERE 
        Email = @Email AND Password = @Password;
END
GO
