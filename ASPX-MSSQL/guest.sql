USE [master]
GO
/****** Object:  Database [guest]    Script Date: 2018/7/12 14:23:34 ******/
CREATE DATABASE [guest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'guest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\guest.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'guest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\guest_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [guest] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [guest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [guest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [guest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [guest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [guest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [guest] SET ARITHABORT OFF 
GO
ALTER DATABASE [guest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [guest] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [guest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [guest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [guest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [guest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [guest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [guest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [guest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [guest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [guest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [guest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [guest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [guest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [guest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [guest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [guest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [guest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [guest] SET RECOVERY FULL 
GO
ALTER DATABASE [guest] SET  MULTI_USER 
GO
ALTER DATABASE [guest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [guest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [guest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [guest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'guest', N'ON'
GO
USE [guest]
GO
/****** Object:  Table [dbo].[article]    Script Date: 2018/7/12 14:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[article](
	[id] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[content] [varchar](50) NULL,
	[replay] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user]    Script Date: 2018/7/12 14:23:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[article] ([id], [title], [content], [replay]) VALUES (N'1', N'1111111', N'111111', N'111111')
INSERT [dbo].[article] ([id], [title], [content], [replay]) VALUES (N'2', N'2222222', N'22222', N'22222222')
INSERT [dbo].[article] ([id], [title], [content], [replay]) VALUES (N'3', N'333333333', N'33333333', N'33333333')
INSERT [dbo].[article] ([id], [title], [content], [replay]) VALUES (N'4', N'444444', N'444444', N'444444444')
INSERT [dbo].[user] ([id], [name], [password]) VALUES (1, N'lufei', N'lufeipassword')
INSERT [dbo].[user] ([id], [name], [password]) VALUES (2, N'admin', N'adminpassword')
INSERT [dbo].[user] ([id], [name], [password]) VALUES (3, N'test', N'test')
USE [master]
GO
ALTER DATABASE [guest] SET  READ_WRITE 
GO
