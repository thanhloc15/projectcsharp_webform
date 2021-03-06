USE [master]
GO
/****** Object:  Database [HaritiShopping]    Script Date: 7/29/2020 5:34:55 PM ******/
CREATE DATABASE [HaritiShopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HaritiShopping', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HaritiShopping.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HaritiShopping_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HaritiShopping_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HaritiShopping] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HaritiShopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HaritiShopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HaritiShopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HaritiShopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HaritiShopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HaritiShopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [HaritiShopping] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HaritiShopping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HaritiShopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HaritiShopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HaritiShopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HaritiShopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HaritiShopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HaritiShopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HaritiShopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HaritiShopping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HaritiShopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HaritiShopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HaritiShopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HaritiShopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HaritiShopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HaritiShopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HaritiShopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HaritiShopping] SET RECOVERY FULL 
GO
ALTER DATABASE [HaritiShopping] SET  MULTI_USER 
GO
ALTER DATABASE [HaritiShopping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HaritiShopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HaritiShopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HaritiShopping] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HaritiShopping] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HaritiShopping', N'ON'
GO
USE [HaritiShopping]
GO
/****** Object:  Table [dbo].[OrderAddress]    Script Date: 7/29/2020 5:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderAddress](
	[orderid] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[mobilenumber] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/29/2020 5:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[orderid] [varchar](50) NULL,
	[sno] [int] NULL,
	[productid] [int] NULL,
	[productname] [varchar](150) NULL,
	[price] [bigint] NULL,
	[quantity] [int] NULL,
	[dateoforder] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 7/29/2020 5:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ProductID] [int] NOT NULL,
	[ProductName] [varchar](150) NOT NULL,
	[Price] [bigint] NOT NULL,
	[ProductImage] [varchar](150) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAccount]    Script Date: 7/29/2020 5:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAccount](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[OrderAddress] ([orderid], [address], [mobilenumber]) VALUES (N'Order233412572020n4n27', N'12312 - bao loc', 374412894)
INSERT [dbo].[OrderAddress] ([orderid], [address], [mobilenumber]) VALUES (N'Order2275426720205hdv5', N'quan 9', 374412894)
INSERT [dbo].[OrderAddress] ([orderid], [address], [mobilenumber]) VALUES (N'Order2218462672020x6kya', N'quan 9', 374412894)
INSERT [dbo].[OrderAddress] ([orderid], [address], [mobilenumber]) VALUES (N'Order22305267202079esm', N'quan 9', 374412894)
INSERT [dbo].[OrderAddress] ([orderid], [address], [mobilenumber]) VALUES (N'Order2253432672020thb8z', N'quan 9', 374412894)
INSERT [dbo].[OrderDetails] ([orderid], [sno], [productid], [productname], [price], [quantity], [dateoforder]) VALUES (N'Order233412572020n4n27', 1, 1002, N'Shoes Nike 1', 1200000, 4, CAST(N'2020-07-25' AS Date))
INSERT [dbo].[OrderDetails] ([orderid], [sno], [productid], [productname], [price], [quantity], [dateoforder]) VALUES (N'Order2275426720205hdv5', 1, 1001, N'Samsung laptop', 25000000, 1, CAST(N'2020-07-26' AS Date))
INSERT [dbo].[OrderDetails] ([orderid], [sno], [productid], [productname], [price], [quantity], [dateoforder]) VALUES (N'Order2275426720205hdv5', 2, 1002, N'Shoes Nike 1', 1200000, 5, CAST(N'2020-07-26' AS Date))
INSERT [dbo].[OrderDetails] ([orderid], [sno], [productid], [productname], [price], [quantity], [dateoforder]) VALUES (N'Order2218462672020x6kya', 1, 1003, N'Shoes Nike 2', 1200000, 3, CAST(N'2020-07-26' AS Date))
INSERT [dbo].[OrderDetails] ([orderid], [sno], [productid], [productname], [price], [quantity], [dateoforder]) VALUES (N'Order22305267202079esm', 1, 1002, N'Shoes Nike 1', 1200000, 4, CAST(N'2020-07-26' AS Date))
INSERT [dbo].[OrderDetails] ([orderid], [sno], [productid], [productname], [price], [quantity], [dateoforder]) VALUES (N'Order2252202672020fbi3u', 1, 1001, N'Samsung laptop', 25000000, 1, CAST(N'2020-07-26' AS Date))
INSERT [dbo].[OrderDetails] ([orderid], [sno], [productid], [productname], [price], [quantity], [dateoforder]) VALUES (N'Order2253432672020thb8z', 1, 1001, N'Samsung laptop', 25000000, 1, CAST(N'2020-07-26' AS Date))
INSERT [dbo].[ProductDetail] ([ProductID], [ProductName], [Price], [ProductImage]) VALUES (1002, N'Shoes Nike 1', 1200000, N'images/Shoes.jpg')
INSERT [dbo].[ProductDetail] ([ProductID], [ProductName], [Price], [ProductImage]) VALUES (1003, N'Shoes Nike 2', 1200000, N'images/Shoes_1.jpg')
INSERT [dbo].[ProductDetail] ([ProductID], [ProductName], [Price], [ProductImage]) VALUES (1004, N'Shoes Nike 3', 3000000, N'images/Shoes_2.jpg')
INSERT [dbo].[ProductDetail] ([ProductID], [ProductName], [Price], [ProductImage]) VALUES (1005, N'Shoes Nike 4', 1200000, N'images/Shoes_3.jpg')
INSERT [dbo].[tblAccount] ([username], [password]) VALUES (N'admin', N'admin')
USE [master]
GO
ALTER DATABASE [HaritiShopping] SET  READ_WRITE 
GO
