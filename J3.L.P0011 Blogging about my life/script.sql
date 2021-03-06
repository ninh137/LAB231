USE [master]
GO
/****** Object:  Database [J3.L.P0011]    Script Date: 2/20/2021 7:57:37 PM ******/
CREATE DATABASE [J3.L.P0011]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J3.L.P0011', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\J3.L.P0011.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'J3.L.P0011_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\J3.L.P0011_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [J3.L.P0011] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3.L.P0011].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3.L.P0011] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J3.L.P0011] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J3.L.P0011] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J3.L.P0011] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J3.L.P0011] SET ARITHABORT OFF 
GO
ALTER DATABASE [J3.L.P0011] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J3.L.P0011] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J3.L.P0011] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J3.L.P0011] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J3.L.P0011] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J3.L.P0011] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J3.L.P0011] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J3.L.P0011] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J3.L.P0011] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J3.L.P0011] SET  DISABLE_BROKER 
GO
ALTER DATABASE [J3.L.P0011] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J3.L.P0011] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J3.L.P0011] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J3.L.P0011] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J3.L.P0011] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J3.L.P0011] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J3.L.P0011] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J3.L.P0011] SET RECOVERY FULL 
GO
ALTER DATABASE [J3.L.P0011] SET  MULTI_USER 
GO
ALTER DATABASE [J3.L.P0011] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J3.L.P0011] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J3.L.P0011] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J3.L.P0011] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [J3.L.P0011] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [J3.L.P0011] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'J3.L.P0011', N'ON'
GO
ALTER DATABASE [J3.L.P0011] SET QUERY_STORE = OFF
GO
USE [J3.L.P0011]
GO
/****** Object:  Table [dbo].[About Me]    Script Date: 2/20/2021 7:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About Me](
	[id] [int] NULL,
	[content] [nvarchar](2000) NULL,
	[author] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 2/20/2021 7:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[type] [nvarchar](50) NULL,
	[content] [nvarchar](1000) NULL,
	[image_path] [nvarchar](500) NULL,
	[created_at] [date] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Social]    Script Date: 2/20/2021 7:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Social](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[icon] [nvarchar](500) NULL,
 CONSTRAINT [PK_Social] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TotalViews]    Script Date: 2/20/2021 7:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalViews](
	[id] [int] NULL,
	[view] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[About Me] ([id], [content], [author]) VALUES (1, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.

Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', N'Vivianne Russell')
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([id], [title], [type], [content], [image_path], [created_at]) VALUES (1, N'Essential skills for a happy life!', N'blog', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam.

Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', N'i2.jpg', CAST(N'2020-12-21' AS Date))
INSERT [dbo].[Post] ([id], [title], [type], [content], [image_path], [created_at]) VALUES (2, N'You''ve gotta dance', N'quote', N'You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth. - William W. Purkey', N'', CAST(N'2021-12-21' AS Date))
INSERT [dbo].[Post] ([id], [title], [type], [content], [image_path], [created_at]) VALUES (3, N'Photo', N'photo', N'', N'i1.jpg', CAST(N'2020-11-21' AS Date))
INSERT [dbo].[Post] ([id], [title], [type], [content], [image_path], [created_at]) VALUES (4, N'Photo', N'photo', N'', N'i1.jpg', CAST(N'2019-12-21' AS Date))
INSERT [dbo].[Post] ([id], [title], [type], [content], [image_path], [created_at]) VALUES (5, N'Essential skills for a happy life!', N'blog', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam.

Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', N'i2.jpg', CAST(N'2020-12-20' AS Date))
INSERT [dbo].[Post] ([id], [title], [type], [content], [image_path], [created_at]) VALUES (7, N'You''ve gotta dance', N'quote', N'You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth. - William W. Purkey', N'', CAST(N'2016-12-21' AS Date))
INSERT [dbo].[Post] ([id], [title], [type], [content], [image_path], [created_at]) VALUES (9, N'You''ve gotta dance', N'quote', N'You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth. - William W. Purkey', N'', CAST(N'2020-12-21' AS Date))
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Social] ON 

INSERT [dbo].[Social] ([id], [name], [icon]) VALUES (1, N'Facebook', N'fb.jpg')
INSERT [dbo].[Social] ([id], [name], [icon]) VALUES (2, N'Twitter', N'tw.jpg')
INSERT [dbo].[Social] ([id], [name], [icon]) VALUES (3, N'Google+', N'gg.jpg')
SET IDENTITY_INSERT [dbo].[Social] OFF
GO
INSERT [dbo].[TotalViews] ([id], [view]) VALUES (1, 18)
GO
USE [master]
GO
ALTER DATABASE [J3.L.P0011] SET  READ_WRITE 
GO
