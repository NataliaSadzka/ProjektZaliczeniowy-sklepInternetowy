USE [ShopDB]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11.01.2021 19:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11.01.2021 19:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11.01.2021 19:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11.01.2021 19:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11.01.2021 19:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11.01.2021 19:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[DatePurchased] [datetime] NULL,
	[IsInCart] [bit] NOT NULL,
 CONSTRAINT [PK_Purchase] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.01.2021 19:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Price] [float] NULL,
	[Description] [text] NULL,
	[Image] [varchar](150) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 11.01.2021 19:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInformation]    Script Date: 11.01.2021 19:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GUID] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[PostalCode] [int] NOT NULL,
 CONSTRAINT [PK_UserInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4d446927-a5e0-47a0-b86b-ffb5265497f7', NULL, 0, N'AItr4U6fHI69rtFIHQesM4VfXieiYq3g7I6TZVBw2iZgerbBXDELoBPqpW12o+PLfw==', N'79e47815-d790-406e-b0de-5ff05ea31c18', NULL, 0, 0, NULL, 0, 0, N'Natalia')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'abd91938-833a-4099-81b6-d8889f12590a', NULL, 0, N'ALrrMJAH+LavL7ZMPvVaFhqb0VpilHn194UC1ikJoUsi2W6bA5Ri4KGNFCmq8FAvLA==', N'03da3777-0add-468a-8746-d3f8eedce528', NULL, 0, 0, NULL, 0, 0, N'Natalia123')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b635839f-8b42-4e7d-929d-b21fe378df0b', NULL, 0, N'AKYlIUixa3VNXAOVE7rrpU0wsAtE1cwD2TvXr+UCzaUFiCpxoOP0z/ksqPFl0lfDgg==', N'2bc0a388-b7e0-40fb-af20-711451541ac3', NULL, 0, 0, NULL, 0, 0, N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c01e0569-fef4-4819-900a-609c69367962', NULL, 0, N'ABTVHKYOBIQYb3/tZEH1SrUqpZ/P1AR4d10ekMT+m2wzyRMDDLj961GPpWAuIG625g==', N'4ef76d5b-3114-48c7-80f1-27c4438fc68f', NULL, 0, 0, NULL, 0, 0, N'Natalia1234')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e4f9e300-1dd3-4e89-ad2e-fd597c044499', NULL, 0, N'ACP5BTUWOFUXQb8kHp7kd3ZOH3RqCIueFljxYHb2PauBY5+YI+Bi/siS7jRAFHkzLg==', N'3fb344c4-e941-47e0-9ee0-84a227842de9', NULL, 0, 0, NULL, 0, 0, N'Kapi123')
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([ID], [ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (1, N'-1', 2, 2, CAST(N'2020-12-28T13:18:00.500' AS DateTime), 1)
INSERT [dbo].[Cart] ([ID], [ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (2, N'-1', 1, 1, CAST(N'2020-12-28T13:18:21.593' AS DateTime), 1)
INSERT [dbo].[Cart] ([ID], [ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (3, N'-1', 1, 9, CAST(N'2021-01-05T16:26:49.220' AS DateTime), 1)
INSERT [dbo].[Cart] ([ID], [ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (4, N'4d446927-a5e0-47a0-b86b-ffb5265497f7', 2, 5, CAST(N'2021-01-10T12:38:04.233' AS DateTime), 0)
INSERT [dbo].[Cart] ([ID], [ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (5, N'4d446927-a5e0-47a0-b86b-ffb5265497f7', 6, 1, CAST(N'2021-01-10T12:38:04.303' AS DateTime), 0)
INSERT [dbo].[Cart] ([ID], [ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (6, N'4d446927-a5e0-47a0-b86b-ffb5265497f7', 1, 4, CAST(N'2021-01-10T12:44:48.430' AS DateTime), 0)
INSERT [dbo].[Cart] ([ID], [ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (7, N'4d446927-a5e0-47a0-b86b-ffb5265497f7', 3, 4, CAST(N'2021-01-10T12:47:47.213' AS DateTime), 1)
INSERT [dbo].[Cart] ([ID], [ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (8, N'b635839f-8b42-4e7d-929d-b21fe378df0b', 7, 4, CAST(N'2021-01-10T21:09:47.197' AS DateTime), 0)
INSERT [dbo].[Cart] ([ID], [ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (9, N'b635839f-8b42-4e7d-929d-b21fe378df0b', 7, 1, CAST(N'2021-01-11T11:52:20.543' AS DateTime), 0)
INSERT [dbo].[Cart] ([ID], [ClientID], [ProductID], [Amount], [DatePurchased], [IsInCart]) VALUES (10, N'b635839f-8b42-4e7d-929d-b21fe378df0b', 11, 3, CAST(N'2021-01-11T11:52:20.553' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (1, 3, N'Szczotka dla psów', 30, N'Dla wszystkich rodzajów sierści.', N'pielęgnacjaSzczotka.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (2, 3, N'Grzebień do zbierania sierści', 28, N'Do codziennej pielęgnacji.', N'pielęgnacjaGrzebieńDoZbieraniaSierści.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (3, 3, N'Obcinacz do pazurów ', 25, N'Ergonomiczne uchwyty.', N'pielęgnacjaObcinaczDoPazurów.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (4, 3, N'Szampon pielęgnujący', 40, N'Wspomaga lśniącą sierść.', N'pielęgnacjaSzamponPielęgnujący.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (5, 1, N'Legowisko dla psa', 86, N'Miękki i przytulny.', N'legowiskaLegowiskoDlaPsa.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (6, 1, N'Poduszka do leżenia', 100, N'Zdejmowane pokrycie.', N'legowiskaPoduszkaDoLeżenia.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (7, 2, N'Ceramiczna miska z motywem łapy', 17, N'Można myć w zmywarce.', N'miskiCeramicznaMiska.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (8, 2, N'Miska ze stali nierdzewnej', 33, N'Właściwości antypoślizgowe.', N'miskiMiskaZeStaliSzlachetnej.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (9, 5, N'Smycz automatyczna', 57, N'Zintegrowany system hamowania.', N'smyczAutomatyczna.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (10, 5, N'Smycz krótka', 72, N'Trzystopniowa regulacja.', N'smyczKrótka.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (11, 4, N'Piłka na przysmaki', 22, N'Mocna i odporna na zużycie.', N'zabawkaPiłkaNaPrzysmaki.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (12, 4, N'Sznur bawełniany', 10, N'Czyści zęby w czasie zabawy.', N'zabawkaSznurek.JPG')
INSERT [dbo].[Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (13, 4, N'Piłka tenisowa', 15, N'Z piszczkiem motywującym do zabawy.', N'zabawkaPiłkaTenisowa.JPG')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([Id], [Name]) VALUES (1, N'Legowiska')
INSERT [dbo].[ProductTypes] ([Id], [Name]) VALUES (2, N'Miski')
INSERT [dbo].[ProductTypes] ([Id], [Name]) VALUES (3, N'Pielęgnacja')
INSERT [dbo].[ProductTypes] ([Id], [Name]) VALUES (4, N'Zabawki')
INSERT [dbo].[ProductTypes] ([Id], [Name]) VALUES (5, N'Smycze')
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
SET IDENTITY_INSERT [dbo].[UserInformation] ON 

INSERT [dbo].[UserInformation] ([ID], [GUID], [FirstName], [LastName], [Address], [PostalCode]) VALUES (1, N'abd91938-833a-4099-81b6-d8889f12590a', N'Natalia', N'Sadzka', N'Os. Przemysława', 61064)
SET IDENTITY_INSERT [dbo].[UserInformation] OFF
ALTER TABLE [dbo].[Cart] ADD  DEFAULT (getdate()) FOR [DatePurchased]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Name]  DEFAULT ('Unknown') FOR [Name]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Description]  DEFAULT ('Unknown') FOR [Description]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ProductTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductTypes]
GO
