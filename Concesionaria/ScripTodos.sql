USE [master]
GO
/****** Object:  Database [CONCESIONARIA]    Script Date: 06/04/2017 21:37:56 ******/
CREATE DATABASE [CONCESIONARIA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CONCESIONARIA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CONCESIONARIA.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CONCESIONARIA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CONCESIONARIA_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [CONCESIONARIA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CONCESIONARIA] SET  MULTI_USER 
GO
ALTER DATABASE [CONCESIONARIA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CONCESIONARIA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CONCESIONARIA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CONCESIONARIA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CONCESIONARIA]
GO
/****** Object:  Table [dbo].[Auto]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[Motor] [varchar](100) NULL,
	[Chasis] [varchar](100) NULL,
 CONSTRAINT [PK_MarcaAuto] PRIMARY KEY CLUSTERED 
(
	[CodAuto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banco]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banco](
	[CodBanco] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[CodBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Barrio]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrio](
	[CodBarrio] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
 CONSTRAINT [PK_Barrio] PRIMARY KEY CLUSTERED 
(
	[CodBarrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoriaGasto]    Script Date: 06/04/2017 21:37:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoriaGastoRecepcion]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaGastoRecepcion](
	[Codigo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
 CONSTRAINT [PK_CategoriaGastoRecepcion] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoriaGastoTransferencia]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaGastoTransferencia](
	[Codigo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
 CONSTRAINT [PK_CategoriaGastoTransferencia] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cheque]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cheque](
	[CodVenta] [numeric](18, 0) NOT NULL,
	[NroCheque] [varchar](50) NOT NULL,
	[Importe] [numeric](18, 2) NULL,
	[Fecha] [date] NULL,
	[FechaPago] [date] NULL,
	[FechaVencimiento] [date] NULL,
	[CodCliente] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Cheque] PRIMARY KEY CLUSTERED 
(
	[CodVenta] ASC,
	[NroCheque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[CodCiudad] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[CodCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[CodCliente] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CodTipoDoc] [numeric](4, 0) NULL,
	[NroDocumento] [varchar](50) NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
	[Telefono] [varchar](50) NULL,
	[Celular] [varchar](50) NULL,
	[Calle] [varchar](250) NULL,
	[Numero] [varchar](20) NULL,
	[CodBarrio] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[CodCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cobranza]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cobranza](
	[CodCobranza] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CodVenta] [numeric](18, 0) NULL,
	[Importe] [numeric](18, 2) NULL,
	[Fecha] [date] NULL,
	[FechaPago] [date] NULL,
	[CodAuto] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Cobranza] PRIMARY KEY CLUSTERED 
(
	[CodCobranza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Costo]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cuotas]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuotas](
	[CodVenta] [numeric](18, 0) NOT NULL,
	[Cuota] [numeric](5, 0) NOT NULL,
	[Importe] [numeric](18, 2) NULL,
	[FechaVencimiento] [date] NULL,
	[FechaPago] [date] NULL,
	[ImportePagado] [numeric](18, 2) NULL,
	[Saldo] [numeric](18, 2) NULL,
	[ImporteSinInteres] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Cuotas] PRIMARY KEY CLUSTERED 
(
	[CodVenta] ASC,
	[Cuota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EntidadPrendaria]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntidadPrendaria](
	[CodEntidad] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
 CONSTRAINT [PK_EntidadPrendaria] PRIMARY KEY CLUSTERED 
(
	[CodEntidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gasto]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gasto](
	[CodStock] [numeric](18, 0) NULL,
	[CodCategoriaGasto] [numeric](18, 0) NULL,
	[Importe] [numeric](18, 2) NULL,
	[Fecha] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GastosRecepcion]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GastosRecepcion](
	[CodVenta] [numeric](18, 0) NULL,
	[CodAuto] [numeric](18, 0) NULL,
	[CodGasto] [numeric](18, 0) NULL,
	[Importe] [numeric](18, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GastosRecepcionxAuto]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GastosRecepcionxAuto](
	[CodStock] [numeric](18, 0) NULL,
	[CodGasto] [numeric](18, 0) NULL,
	[Importe] [numeric](18, 2) NULL,
	[Fecha] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GastosTransferencia]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GastosTransferencia](
	[CodVenta] [numeric](18, 0) NULL,
	[CodGastoTranasferencia] [numeric](18, 0) NULL,
	[Importe] [numeric](18, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Marca]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[CodMarca] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[CodMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movimiento]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimiento](
	[CodMovimiento] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[CodUsuario] [numeric](18, 0) NULL,
	[ImporteEfectivo] [numeric](18, 2) NULL,
	[ImporteDocumento] [numeric](18, 2) NULL,
	[ImportePrenda] [numeric](18, 2) NULL,
	[ImporteAuto] [numeric](18, 2) NULL,
	[Procesado] [numeric](1, 0) NULL,
	[ImporteCobranza] [numeric](18, 2) NULL,
	[CodVenta] [numeric](18, 0) NULL,
	[ImporteBanco] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Movimiento] PRIMARY KEY CLUSTERED 
(
	[CodMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prenda]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenda](
	[CodPrenda] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CodVenta] [numeric](18, 0) NULL,
	[Importe] [numeric](18, 2) NULL,
	[Fecha] [date] NULL,
	[CodCliente] [numeric](18, 0) NULL,
	[CodEntidad] [numeric](18, 0) NULL,
	[FechaPago] [date] NULL,
	[CodAuto] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Prenda] PRIMARY KEY CLUSTERED 
(
	[CodPrenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResumenCuentas]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResumenCuentas](
	[ImporteEfectivo] [numeric](18, 2) NULL,
	[ImportePrenda] [numeric](18, 2) NULL,
	[ImporteAuto] [numeric](18, 2) NULL,
	[ImporteCobranza] [numeric](18, 2) NULL,
	[ImporteBanco] [numeric](18, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockAuto]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockAuto](
	[CodStock] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CodAuto] [numeric](18, 0) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaBaja] [datetime] NULL,
	[CodCliente] [numeric](18, 0) NULL,
	[CodUsuario] [numeric](18, 0) NULL,
	[ImporteCompra] [numeric](18, 2) NULL,
 CONSTRAINT [PK_StockAuto] PRIMARY KEY CLUSTERED 
(
	[CodStock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 06/04/2017 21:37:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[CodUsuario] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Clave] [varchar](20) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[CodUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venta]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[CodVenta] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[CodUsuario] [numeric](18, 0) NULL,
	[CodCliente] [numeric](18, 0) NULL,
	[CodAutoVendido] [numeric](18, 0) NULL,
	[CodAutoPartePago] [numeric](18, 0) NULL,
	[CodVendedor] [numeric](18, 0) NULL,
	[ImporteVenta] [numeric](18, 2) NULL,
	[ImporteAutoPartePago] [numeric](18, 2) NULL,
	[ImporteCredito] [numeric](18, 2) NULL,
	[ImporteEfectivo] [numeric](18, 2) NULL,
	[ImportePrenda] [numeric](18, 2) NULL,
	[ImporteCobranza] [numeric](18, 2) NULL,
	[ImporteBanco] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[CodVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VentasxAuto]    Script Date: 06/04/2017 21:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentasxAuto](
	[CodAuto] [numeric](18, 0) NOT NULL,
	[CodVenta] [numeric](18, 0) NOT NULL,
	[Importe] [numeric](18, 2) NULL,
 CONSTRAINT [PK_VentasxAuto] PRIMARY KEY CLUSTERED 
(
	[CodAuto] ASC,
	[CodVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [CONCESIONARIA] SET  READ_WRITE 
GO
