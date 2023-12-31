USE [AdvancedEshop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NULL,
	[CategoryPhoto] [nvarchar](300) NULL,
	[CategoryOder] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[ColorId] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](30) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[ProductPrice] [decimal](8, 2) NULL,
	[ProductDiscount] [decimal](2, 2) NULL,
	[ProductPhoto] [nvarchar](300) NULL,
	[SizeId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[IsTrandy] [bit] NOT NULL,
	[IsArrived] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 6/30/2023 8:32:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[SizeId] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](10) NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230629145008_initial', N'6.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230629150036_initial', N'6.0.11')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOder]) VALUES (1, N'Men''s dresses', N'/img/cat-1.jpg', 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOder]) VALUES (2, N'Babys dresses', N'/img/cat-3.jpg', 3)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOder]) VALUES (3, N'Accerssories', N'/img/cat-4.jpg', 4)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOder]) VALUES (4, N'Bags', N'/img/cat-5.jpg', 5)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOder]) VALUES (5, N'Shoes', N'/img/cat-6.jpg', 6)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOder]) VALUES (6, N'Womens dresses7', N'/img/cat-7.jpg', 7)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOder]) VALUES (7, N'Womens dresses8', N'/img/cat-8.jpg', 8)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryPhoto], [CategoryOder]) VALUES (8, N'Womens dresses9', N'/img/cat-9.jpg', 9)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (1, N'Green')
INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (2, N'Blue')
INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (3, N'Red')
INSERT [dbo].[Colors] ([ColorId], [ColorName]) VALUES (4, N'Yellow')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (1, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(150.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/product-1.jpg', 1, 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (2, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(250.00 AS Decimal(8, 2)), CAST(0.40 AS Decimal(2, 2)), N'/img/product-2.jpg', 1, 2, 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (3, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(350.00 AS Decimal(8, 2)), CAST(0.30 AS Decimal(2, 2)), N'/img/product-3.jpg', 1, 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (4, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(450.00 AS Decimal(8, 2)), CAST(0.20 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (5, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(230.00 AS Decimal(8, 2)), CAST(0.10 AS Decimal(2, 2)), N'/img/product-5.jpg', 1, 2, 0, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (6, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(330.00 AS Decimal(8, 2)), CAST(0.15 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (7, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(430.00 AS Decimal(8, 2)), CAST(0.25 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (8, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(530.00 AS Decimal(8, 2)), CAST(0.35 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (9, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(110.00 AS Decimal(8, 2)), CAST(0.45 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 0, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (10, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(210.00 AS Decimal(8, 2)), CAST(0.55 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (11, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(310.00 AS Decimal(8, 2)), CAST(0.65 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 0, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (12, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(410.00 AS Decimal(8, 2)), CAST(0.13 AS Decimal(2, 2)), N'/img/product-3.jpg', 1, 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (13, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(70.00 AS Decimal(8, 2)), CAST(0.23 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (14, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(80.00 AS Decimal(8, 2)), CAST(0.33 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 0, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (15, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(90.00 AS Decimal(8, 2)), CAST(0.43 AS Decimal(2, 2)), N'/img/product-6.jpg', 1, 2, 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (16, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(77.00 AS Decimal(8, 2)), CAST(0.53 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (17, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(87.00 AS Decimal(8, 2)), CAST(0.17 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (18, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(97.00 AS Decimal(8, 2)), CAST(0.27 AS Decimal(2, 2)), N'/img/product-5.jpg', 1, 2, 0, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (19, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(107.00 AS Decimal(8, 2)), CAST(0.37 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (20, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(207.00 AS Decimal(8, 2)), CAST(0.47 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (21, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(307.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/product-2.jpg', 1, 2, 0, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (22, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(150.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [ProductPrice], [ProductDiscount], [ProductPhoto], [SizeId], [ColorId], [IsTrandy], [IsArrived]) VALUES (23, N'Colorful Stylish Shirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.', 1, CAST(150.00 AS Decimal(8, 2)), CAST(0.50 AS Decimal(2, 2)), N'/img/product-4.jpg', 1, 2, 1, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (1, N'S')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (2, N'XS')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (3, N'M')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (4, N'L')
INSERT [dbo].[Sizes] ([SizeId], [SizeName]) VALUES (5, N'XL')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([ColorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors_ColorId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([SizeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Sizes_SizeId]
GO
