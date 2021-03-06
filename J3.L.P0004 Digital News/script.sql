USE [master]
GO
/****** Object:  Database [J3.L.P0004]    Script Date: 2/25/2021 3:16:36 PM ******/
CREATE DATABASE [J3.L.P0004]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Digital News', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Digital News.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Digital News_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Digital News_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [J3.L.P0004] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3.L.P0004].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3.L.P0004] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J3.L.P0004] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J3.L.P0004] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J3.L.P0004] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J3.L.P0004] SET ARITHABORT OFF 
GO
ALTER DATABASE [J3.L.P0004] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J3.L.P0004] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J3.L.P0004] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J3.L.P0004] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J3.L.P0004] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J3.L.P0004] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J3.L.P0004] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J3.L.P0004] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J3.L.P0004] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J3.L.P0004] SET  DISABLE_BROKER 
GO
ALTER DATABASE [J3.L.P0004] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J3.L.P0004] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J3.L.P0004] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J3.L.P0004] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J3.L.P0004] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J3.L.P0004] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J3.L.P0004] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J3.L.P0004] SET RECOVERY FULL 
GO
ALTER DATABASE [J3.L.P0004] SET  MULTI_USER 
GO
ALTER DATABASE [J3.L.P0004] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J3.L.P0004] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J3.L.P0004] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J3.L.P0004] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [J3.L.P0004] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [J3.L.P0004] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'J3.L.P0004', N'ON'
GO
ALTER DATABASE [J3.L.P0004] SET QUERY_STORE = OFF
GO
USE [J3.L.P0004]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 2/25/2021 3:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[image_path] [nvarchar](2000) NULL,
	[content] [nvarchar](max) NULL,
	[date] [datetime] NULL,
	[author_id] [int] NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 2/25/2021 3:16:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([id], [title], [image_path], [content], [date], [author_id]) VALUES (1, N'Making security feeds smarter via machine learning', N'i1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', CAST(N'2021-02-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Article] ([id], [title], [image_path], [content], [date], [author_id]) VALUES (2, N'Elevenia tawark an laynan Mokado', N'i1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', CAST(N'2021-02-23T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Article] ([id], [title], [image_path], [content], [date], [author_id]) VALUES (3, N'What is next for the wireless industry?', N'i1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', CAST(N'2021-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Article] ([id], [title], [image_path], [content], [date], [author_id]) VALUES (4, N'Pick yourself up, learn, sharpen skills', N'i1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', CAST(N'2021-02-21T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Article] ([id], [title], [image_path], [content], [date], [author_id]) VALUES (5, N'Tony''s Top 10 tips for Entrepreneurs', N'i1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', CAST(N'2021-02-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Article] ([id], [title], [image_path], [content], [date], [author_id]) VALUES (6, N'Elevenia tawark an laynan Mokado', N'i1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', CAST(N'2021-02-19T00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[Article] OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([id], [name]) VALUES (1, N'Benjamin Cher')
INSERT [dbo].[Author] ([id], [name]) VALUES (2, N'Trinh Ba Minh Ninh')
INSERT [dbo].[Author] ([id], [name]) VALUES (3, N'Hoang Duy Minh')
INSERT [dbo].[Author] ([id], [name]) VALUES (4, N'Pham Tien Dat')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_Author] FOREIGN KEY([author_id])
REFERENCES [dbo].[Author] ([id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_Author]
GO
USE [master]
GO
ALTER DATABASE [J3.L.P0004] SET  READ_WRITE 
GO
