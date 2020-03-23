USE [master]
GO
/****** Object:  Database [CONCESIONARIA]    Script Date: 01/11/2017 03:42:43 ******/
CREATE DATABASE [CONCESIONARIA] ON  PRIMARY 
( NAME = N'CONCESIONARIA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CONCESIONARIA.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CONCESIONARIA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CONCESIONARIA_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CONCESIONARIA] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CONCESIONARIA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CONCESIONARIA] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CONCESIONARIA] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CONCESIONARIA] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CONCESIONARIA] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CONCESIONARIA] SET ARITHABORT OFF
GO
ALTER DATABASE [CONCESIONARIA] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CONCESIONARIA] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CONCESIONARIA] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CONCESIONARIA] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CONCESIONARIA] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CONCESIONARIA] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CONCESIONARIA] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CONCESIONARIA] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CONCESIONARIA] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CONCESIONARIA] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CONCESIONARIA] SET  DISABLE_BROKER
GO
ALTER DATABASE [CONCESIONARIA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CONCESIONARIA] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CONCESIONARIA] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CONCESIONARIA] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CONCESIONARIA] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CONCESIONARIA] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CONCESIONARIA] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CONCESIONARIA] SET  READ_WRITE
GO
ALTER DATABASE [CONCESIONARIA] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CONCESIONARIA] SET  MULTI_USER
GO
ALTER DATABASE [CONCESIONARIA] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CONCESIONARIA] SET DB_CHAINING OFF
GO
USE [CONCESIONARIA]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 01/11/2017 03:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[CodTipoDoc] [numeric](4, 0) IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](10) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[CodTipoDoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockAuto]    Script Date: 01/11/2017 03:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockAuto](
	[CodStock] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CodAuto] [numeric](18, 0) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaBaja] [datetime] NULL,
 CONSTRAINT [PK_StockAuto] PRIMARY KEY CLUSTERED 
(
	[CodStock] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 01/11/2017 03:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marca](
	[CodMarca] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[CodMarca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Costo]    Script Date: 01/11/2017 03:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Costo](
	[CodCosto] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CodAuto] [numeric](18, 0) NULL,
	[Patente] [varchar](50) NULL,
	[Importe] [numeric](18, 2) NULL,
	[Fecha] [datetime] NULL,
	[Descripcion] [varchar](300) NULL,
	[FechaBaja] [datetime] NULL,
	[CodStock] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Costo] PRIMARY KEY CLUSTERED 
(
	[CodCosto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 01/11/2017 03:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[CodCliente] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CodTipoDoc] [numeric](4, 0) NULL,
	[NroDocumento] [varchar](50) NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
	[Telefono] [varchar](50) NULL,
	[Celular] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[CodCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 01/11/2017 03:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudad](
	[CodCiudad] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[CodCiudad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoriaGasto]    Script Date: 01/11/2017 03:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaGasto](
	[CodCategoriaGasto] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](10) NULL,
 CONSTRAINT [PK_CategoriaGasto] PRIMARY KEY CLUSTERED 
(
	[CodCategoriaGasto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barrio]    Script Date: 01/11/2017 03:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barrio](
	[CodBarrio] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
 CONSTRAINT [PK_Barrio] PRIMARY KEY CLUSTERED 
(
	[CodBarrio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auto]    Script Date: 01/11/2017 03:42:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auto](
	[CodAuto] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Patente] [varchar](50) NULL,
	[CodMarca] [numeric](18, 0) NULL,
	[Descripcion] [varchar](500) NULL,
	[Kilometros] [numeric](18, 0) NULL,
	[CodCiudad] [numeric](18, 0) NULL,
	[Propio] [numeric](1, 0) NULL,
	[Concesion] [numeric](1, 0) NULL,
	[Observacion] [varchar](3000) NULL,
	[Anio] [varchar](4) NULL,
	[Importe] [numeric](18, 2) NULL,
 CONSTRAINT [PK_MarcaAuto] PRIMARY KEY CLUSTERED 
(
	[CodAuto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
