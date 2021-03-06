CREATE DATABASE library
GO
USE [library]
GO
/****** Object:  Table [dbo].[authors]    Script Date: 7/20/2016 4:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[authors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[authors_books]    Script Date: 7/20/2016 4:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors_books](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[author_id] [int] NULL,
	[book_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[books]    Script Date: 7/20/2016 4:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[books](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[call_number] [varchar](255) NULL,
	[collection] [varchar](6) NULL,
	[title] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[checkouts]    Script Date: 7/20/2016 4:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[checkouts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[copy_id] [int] NULL,
	[patron_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[copies]    Script Date: 7/20/2016 4:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[copies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [int] NULL,
	[due_date] [datetime] NULL,
	[patron_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[patrons]    Script Date: 7/20/2016 4:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[patrons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[balance] [int] NULL,
	[name] [varchar](255) NULL,
	[notes] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[authors] ON 

INSERT [dbo].[authors] ([id], [name]) VALUES (63, N'Harper Lee')
SET IDENTITY_INSERT [dbo].[authors] OFF
SET IDENTITY_INSERT [dbo].[authors_books] ON 

INSERT [dbo].[authors_books] ([id], [author_id], [book_id]) VALUES (67, 63, 111)
SET IDENTITY_INSERT [dbo].[authors_books] OFF
SET IDENTITY_INSERT [dbo].[books] ON 

INSERT [dbo].[books] ([id], [call_number], [collection], [title]) VALUES (111, N'Lee', N'fic', N'Go Set a Watchman')
SET IDENTITY_INSERT [dbo].[books] OFF
SET IDENTITY_INSERT [dbo].[checkouts] ON 

INSERT [dbo].[checkouts] ([id], [copy_id], [patron_id]) VALUES (9, 173, 85)
INSERT [dbo].[checkouts] ([id], [copy_id], [patron_id]) VALUES (10, 173, 85)
INSERT [dbo].[checkouts] ([id], [copy_id], [patron_id]) VALUES (11, 173, 85)
INSERT [dbo].[checkouts] ([id], [copy_id], [patron_id]) VALUES (12, 173, 85)
INSERT [dbo].[checkouts] ([id], [copy_id], [patron_id]) VALUES (13, 173, 86)
SET IDENTITY_INSERT [dbo].[checkouts] OFF
SET IDENTITY_INSERT [dbo].[copies] ON 

INSERT [dbo].[copies] ([id], [book_id], [due_date], [patron_id]) VALUES (173, 111, CAST(N'2016-08-10T00:00:00.000' AS DateTime), 86)
SET IDENTITY_INSERT [dbo].[copies] OFF
SET IDENTITY_INSERT [dbo].[patrons] ON 

INSERT [dbo].[patrons] ([id], [balance], [name], [notes]) VALUES (84, 0, N'George Foreman', N'')
INSERT [dbo].[patrons] ([id], [balance], [name], [notes]) VALUES (85, 0, N'George Foreman', N'')
INSERT [dbo].[patrons] ([id], [balance], [name], [notes]) VALUES (86, 0, N'Art Garfunkel', N'')
SET IDENTITY_INSERT [dbo].[patrons] OFF
