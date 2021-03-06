USE [master]
GO
/****** Object:  Database [J3.L.P0013]    Script Date: 2/27/2021 6:22:58 PM ******/
CREATE DATABASE [J3.L.P0013]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J3.L.P0013', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\J3.L.P0013.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'J3.L.P0013_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\J3.L.P0013_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [J3.L.P0013] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3.L.P0013].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3.L.P0013] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J3.L.P0013] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J3.L.P0013] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J3.L.P0013] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J3.L.P0013] SET ARITHABORT OFF 
GO
ALTER DATABASE [J3.L.P0013] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J3.L.P0013] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J3.L.P0013] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J3.L.P0013] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J3.L.P0013] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J3.L.P0013] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J3.L.P0013] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J3.L.P0013] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J3.L.P0013] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J3.L.P0013] SET  DISABLE_BROKER 
GO
ALTER DATABASE [J3.L.P0013] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J3.L.P0013] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J3.L.P0013] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J3.L.P0013] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J3.L.P0013] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J3.L.P0013] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J3.L.P0013] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J3.L.P0013] SET RECOVERY FULL 
GO
ALTER DATABASE [J3.L.P0013] SET  MULTI_USER 
GO
ALTER DATABASE [J3.L.P0013] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J3.L.P0013] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J3.L.P0013] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J3.L.P0013] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [J3.L.P0013] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [J3.L.P0013] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'J3.L.P0013', N'ON'
GO
ALTER DATABASE [J3.L.P0013] SET QUERY_STORE = OFF
GO
USE [J3.L.P0013]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/27/2021 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] NULL,
	[address] [nvarchar](255) NULL,
	[tel] [nvarchar](15) NULL,
	[email] [nvarchar](255) NULL,
	[gmap] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 2/27/2021 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[price] [money] NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opening Hour]    Script Date: 2/27/2021 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opening Hour](
	[weekday] [nvarchar](50) NOT NULL,
	[start] [int] NULL,
	[end] [int] NULL,
 CONSTRAINT [PK_Opening Hour] PRIMARY KEY CLUSTERED 
(
	[weekday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 2/27/2021 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NULL,
	[image_path] [nvarchar](1000) NULL,
	[content] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Social]    Script Date: 2/27/2021 6:22:58 PM ******/
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
/****** Object:  Table [dbo].[TotalViews]    Script Date: 2/27/2021 6:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalViews](
	[id] [int] NULL,
	[view] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([id], [address], [tel], [email], [gmap]) VALUES (1, N'The Sushi Restaurant<br>New York, NY, USA', N'12345', N'ninhtbmhe141325@fpt.edu.vn', N'image/gmap.png')
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [name], [price], [description]) VALUES (1, N'Claritas est etiam processus', 15.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [description]) VALUES (2, N'Duis autem vel eum iriure dolor.', 20.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [description]) VALUES (3, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [description]) VALUES (4, N'Gà luộc', 125.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [description]) VALUES (5, N'Pizza', 40.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [description]) VALUES (6, N'Gà rán', 55.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [description]) VALUES (7, N'Đồ ăn lạnh', 15.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [description]) VALUES (8, N'Vàng 24k', 440.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [description]) VALUES (9, N'Snack cay nhất thế giới', 999.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [description]) VALUES (10, N'Cái này không ăn dc', 55.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([id], [title], [image_path], [content]) VALUES (1, N'24 types of sushi rolls', N'post-image.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.')
INSERT [dbo].[Post] ([id], [title], [image_path], [content]) VALUES (2, N'21 types of sushi rolls', N'post-image.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.')
INSERT [dbo].[Post] ([id], [title], [image_path], [content]) VALUES (3, N'22 types of sushi rolls', N'post-image.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.')
INSERT [dbo].[Post] ([id], [title], [image_path], [content]) VALUES (4, N'23 types of sushi rolls', N'post-image.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Social] ON 

INSERT [dbo].[Social] ([id], [name], [icon]) VALUES (1, N'Facebook', N'fb.jpg')
INSERT [dbo].[Social] ([id], [name], [icon]) VALUES (2, N'Twitter', N'tw.jpg')
INSERT [dbo].[Social] ([id], [name], [icon]) VALUES (3, N'Google+', N'gg.jpg')
SET IDENTITY_INSERT [dbo].[Social] OFF
GO
INSERT [dbo].[TotalViews] ([id], [view]) VALUES (1, 2)
GO
USE [master]
GO
ALTER DATABASE [J3.L.P0013] SET  READ_WRITE 
GO
