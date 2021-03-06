USE [master]
GO
/****** Object:  Database [banco_internacionale]    Script Date: 05/11/2021 10:22:52 ******/
CREATE DATABASE [banco_internacionale]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'banco_internacionale', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\banco_internacionale.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'banco_internacionale_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\banco_internacionale_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [banco_internacionale] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [banco_internacionale].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [banco_internacionale] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [banco_internacionale] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [banco_internacionale] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [banco_internacionale] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [banco_internacionale] SET ARITHABORT OFF 
GO
ALTER DATABASE [banco_internacionale] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [banco_internacionale] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [banco_internacionale] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [banco_internacionale] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [banco_internacionale] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [banco_internacionale] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [banco_internacionale] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [banco_internacionale] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [banco_internacionale] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [banco_internacionale] SET  ENABLE_BROKER 
GO
ALTER DATABASE [banco_internacionale] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [banco_internacionale] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [banco_internacionale] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [banco_internacionale] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [banco_internacionale] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [banco_internacionale] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [banco_internacionale] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [banco_internacionale] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [banco_internacionale] SET  MULTI_USER 
GO
ALTER DATABASE [banco_internacionale] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [banco_internacionale] SET DB_CHAINING OFF 
GO
ALTER DATABASE [banco_internacionale] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [banco_internacionale] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [banco_internacionale] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [banco_internacionale] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [banco_internacionale] SET QUERY_STORE = OFF
GO
USE [banco_internacionale]
GO
/****** Object:  User [DUser]    Script Date: 05/11/2021 10:22:52 ******/
CREATE USER [DUser] FOR LOGIN [DUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DOwner]    Script Date: 05/11/2021 10:22:52 ******/
CREATE USER [DOwner] FOR LOGIN [DOwner] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DCustodian]    Script Date: 05/11/2021 10:22:52 ******/
CREATE USER [DCustodian] FOR LOGIN [DCustodian] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dbmaster]    Script Date: 05/11/2021 10:22:52 ******/
CREATE USER [dbmaster] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbmaster]
GO
/****** Object:  User [DataUser]    Script Date: 05/11/2021 10:22:52 ******/
CREATE USER [DataUser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[DataUser]
GO
/****** Object:  User [DArchitect]    Script Date: 05/11/2021 10:22:52 ******/
CREATE USER [DArchitect] FOR LOGIN [DArchitect] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [DOwner]
GO
ALTER ROLE [db_owner] ADD MEMBER [dbmaster]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [DArchitect]
GO
/****** Object:  Schema [DataUser]    Script Date: 05/11/2021 10:22:52 ******/
CREATE SCHEMA [DataUser]
GO
/****** Object:  Schema [dbmaster]    Script Date: 05/11/2021 10:22:52 ******/
CREATE SCHEMA [dbmaster]
GO
/****** Object:  Table [dbo].[dado_imposto]    Script Date: 05/11/2021 10:22:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dado_imposto](
	[id_dado_imposto] [int] NOT NULL,
	[ano_dado_imposto] [int] NOT NULL,
 CONSTRAINT [PK_dado_imposto] PRIMARY KEY CLUSTERED 
(
	[id_dado_imposto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[imposto]    Script Date: 05/11/2021 10:22:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imposto](
	[id_imposto] [int] NOT NULL,
	[nome_imposto] [varchar](255) NOT NULL,
	[fk_pais_id_pais] [int] NOT NULL,
 CONSTRAINT [PK_IMPOSTO] PRIMARY KEY CLUSTERED 
(
	[id_imposto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pais]    Script Date: 05/11/2021 10:22:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pais](
	[id_pais] [int] NOT NULL,
	[nome_pais] [varchar](50) NOT NULL,
	[moeda_pais] [varchar](10) NOT NULL,
 CONSTRAINT [PK_PAIS] PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[soma_imposto]    Script Date: 05/11/2021 10:22:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soma_imposto](
	[fk_dado_imposto_id_dado_imposto] [int] NOT NULL,
	[fk_imposto_id_imposto] [int] NOT NULL,
	[valor_soma_imposto] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[imposto]  WITH CHECK ADD  CONSTRAINT [FK_imposto_2] FOREIGN KEY([fk_pais_id_pais])
REFERENCES [dbo].[pais] ([id_pais])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[imposto] CHECK CONSTRAINT [FK_imposto_2]
GO
ALTER TABLE [dbo].[soma_imposto]  WITH CHECK ADD  CONSTRAINT [FK_soma_imposto_1] FOREIGN KEY([fk_imposto_id_imposto])
REFERENCES [dbo].[imposto] ([id_imposto])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[soma_imposto] CHECK CONSTRAINT [FK_soma_imposto_1]
GO
ALTER TABLE [dbo].[soma_imposto]  WITH CHECK ADD  CONSTRAINT [FK_soma_imposto_2] FOREIGN KEY([fk_dado_imposto_id_dado_imposto])
REFERENCES [dbo].[dado_imposto] ([id_dado_imposto])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[soma_imposto] CHECK CONSTRAINT [FK_soma_imposto_2]
GO
USE [master]
GO
ALTER DATABASE [banco_internacionale] SET  READ_WRITE 
GO
