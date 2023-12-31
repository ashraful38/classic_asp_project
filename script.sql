USE [master]
GO
/****** Object:  Database [product1]    Script Date: 8/7/2023 9:43:25 AM ******/
CREATE DATABASE [product1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'product1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\product1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'product1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\product1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [product1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [product1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [product1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [product1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [product1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [product1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [product1] SET ARITHABORT OFF 
GO
ALTER DATABASE [product1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [product1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [product1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [product1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [product1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [product1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [product1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [product1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [product1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [product1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [product1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [product1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [product1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [product1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [product1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [product1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [product1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [product1] SET RECOVERY FULL 
GO
ALTER DATABASE [product1] SET  MULTI_USER 
GO
ALTER DATABASE [product1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [product1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [product1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [product1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [product1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [product1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'product1', N'ON'
GO
ALTER DATABASE [product1] SET QUERY_STORE = ON
GO
ALTER DATABASE [product1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [product1]
GO
/****** Object:  Table [dbo].[Catagory]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catagory](
	[CatagoryId] [int] IDENTITY(1,1) NOT NULL,
	[CatagoryName] [varchar](50) NULL,
 CONSTRAINT [PK_Catagory] PRIMARY KEY CLUSTERED 
(
	[CatagoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuestbookEntries]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GuestbookEntries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Message] [varchar](100) NULL,
 CONSTRAINT [PK_GuestbookEntries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[new1]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[new1](
	[date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[CatagoryId] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product11]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product11](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NOT NULL,
	[CatagoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product11] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase](
	[PurchaseId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SupplierId] [int] NULL,
	[Color] [varchar](50) NULL,
	[Qunatity] [varchar](50) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Purchase] PRIMARY KEY CLUSTERED 
(
	[PurchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Phone] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[UserType] [varchar](50) NOT NULL,
	[Password] [int] NOT NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [varchar](100) NULL,
	[SupplierAddress] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XMLwithOpenXML]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XMLwithOpenXML](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[XMLData] [xml] NULL,
	[LoadedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Catagory] ON 

INSERT [dbo].[Catagory] ([CatagoryId], [CatagoryName]) VALUES (1, N'laptop')
INSERT [dbo].[Catagory] ([CatagoryId], [CatagoryName]) VALUES (2, N'Moblie')
INSERT [dbo].[Catagory] ([CatagoryId], [CatagoryName]) VALUES (3, N'Tv')
INSERT [dbo].[Catagory] ([CatagoryId], [CatagoryName]) VALUES (4, N'keyboard')
INSERT [dbo].[Catagory] ([CatagoryId], [CatagoryName]) VALUES (5, N'Monitor')
SET IDENTITY_INSERT [dbo].[Catagory] OFF
GO
INSERT [dbo].[new1] ([date]) VALUES (CAST(N'2023-12-17T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (1, N'Del corei7', 1)
INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (2, N'new1', 4)
INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (3, N'Xiaomi 10', 2)
INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (4, N'A4 tech', 4)
INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (5, N'Hp Proobook', 1)
INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (6, N'Xiaomi 11', 2)
INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (7, N'Realme 21', 2)
INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (8, N'Realme 23', 2)
INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (9, N'Xiaomi 12', 2)
INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (10, N'asus 12', 1)
INSERT [dbo].[product] ([ProductId], [ProductName], [CatagoryId]) VALUES (11, N'Xiaomi 13', 2)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product11] ON 

INSERT [dbo].[Product11] ([ProductId], [ProductName], [CatagoryId]) VALUES (20, N'Xiaomi 10', 2)
INSERT [dbo].[Product11] ([ProductId], [ProductName], [CatagoryId]) VALUES (21, N'Xiaomi 17', 2)
INSERT [dbo].[Product11] ([ProductId], [ProductName], [CatagoryId]) VALUES (22, N'asus 12', 1)
INSERT [dbo].[Product11] ([ProductId], [ProductName], [CatagoryId]) VALUES (23, N'asus 13', 1)
INSERT [dbo].[Product11] ([ProductId], [ProductName], [CatagoryId]) VALUES (24, N'Xiaomi 10', 2)
INSERT [dbo].[Product11] ([ProductId], [ProductName], [CatagoryId]) VALUES (25, N'Xiaomi 11', 1)
SET IDENTITY_INSERT [dbo].[Product11] OFF
GO
SET IDENTITY_INSERT [dbo].[Purchase] ON 

INSERT [dbo].[Purchase] ([PurchaseId], [ProductId], [SupplierId], [Color], [Qunatity], [Date]) VALUES (27, 20, 111, N'red', N'12', CAST(N'2023-08-02' AS Date))
INSERT [dbo].[Purchase] ([PurchaseId], [ProductId], [SupplierId], [Color], [Qunatity], [Date]) VALUES (28, 22, 112, N'white', N'2', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[Purchase] ([PurchaseId], [ProductId], [SupplierId], [Color], [Qunatity], [Date]) VALUES (29, 25, 112, N'blue', N'3', CAST(N'2023-08-06' AS Date))
SET IDENTITY_INSERT [dbo].[Purchase] OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([UserId], [Name], [UserName], [Phone], [Email], [UserType], [Password]) VALUES (11, N'ashraful', N'ashraful', 123, N'a@gmail.com', N'admin', 123)
INSERT [dbo].[Registration] ([UserId], [Name], [UserName], [Phone], [Email], [UserType], [Password]) VALUES (12, N'suhas shah', N'suhas', 123, N'rakib@gmail.com', N'user', 123)
INSERT [dbo].[Registration] ([UserId], [Name], [UserName], [Phone], [Email], [UserType], [Password]) VALUES (13, N'Rakib Islam', N'rakib', 123, N'rakib@gmail.com', N'user', 123)
SET IDENTITY_INSERT [dbo].[Registration] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [SupplierAddress]) VALUES (110, N'TNT Ltd', N'dhaka')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [SupplierAddress]) VALUES (111, N'Sd ltd', N'dhaka')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [SupplierAddress]) VALUES (112, N'DNT Ltd', N'Dinajpur')
INSERT [dbo].[Suppliers] ([SupplierId], [SupplierName], [SupplierAddress]) VALUES (113, N'Interstoff', N'dhaka')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[XMLwithOpenXML] ON 

INSERT [dbo].[XMLwithOpenXML] ([Id], [XMLData], [LoadedDateTime]) VALUES (1, N'<Catagories><Catagory><CatagoryName>Laptop</CatagoryName></Catagory><Catagory><CatagoryName>Moblie</CatagoryName></Catagory><Catagory><CatagoryName>Monitor</CatagoryName></Catagory></Catagories>', CAST(N'2023-07-25T16:38:31.837' AS DateTime))
SET IDENTITY_INSERT [dbo].[XMLwithOpenXML] OFF
GO
/****** Object:  Index [IX_Product11]    Script Date: 8/7/2023 9:43:25 AM ******/
CREATE NONCLUSTERED INDEX [IX_Product11] ON [dbo].[Product11]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Registra__C9F28456CD8D3D9F]    Script Date: 8/7/2023 9:43:25 AM ******/
ALTER TABLE [dbo].[Registration] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Catagory] FOREIGN KEY([CatagoryId])
REFERENCES [dbo].[Catagory] ([CatagoryId])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Catagory]
GO
ALTER TABLE [dbo].[Product11]  WITH CHECK ADD  CONSTRAINT [FK_Product11_Catagory] FOREIGN KEY([CatagoryId])
REFERENCES [dbo].[Catagory] ([CatagoryId])
GO
ALTER TABLE [dbo].[Product11] CHECK CONSTRAINT [FK_Product11_Catagory]
GO
ALTER TABLE [dbo].[Purchase]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_Product11] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product11] ([ProductId])
GO
ALTER TABLE [dbo].[Purchase] CHECK CONSTRAINT [FK_Purchase_Product11]
GO
ALTER TABLE [dbo].[Purchase]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_Suppliers] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([SupplierId])
GO
ALTER TABLE [dbo].[Purchase] CHECK CONSTRAINT [FK_Purchase_Suppliers]
GO
/****** Object:  StoredProcedure [dbo].[InsertGuestbookEntries]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertGuestbookEntries]
    @XmlData XML
AS
BEGIN
    INSERT INTO GuestbookEntries (Name, Message)
    SELECT
        Entry.value('(name)[1]', 'VARCHAR(100)') AS Name,
        Entry.value('(message)[1]', 'varchar(100)') AS Message
    FROM
        @XmlData.nodes('/guestbook/entry') AS Entries(Entry)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertProducts1]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[InsertProducts1]
    @xmlData XML
AS
BEGIN
    INSERT INTO Product12 (ProductName, CatagoryId)
    SELECT
        Entry.value('ProductName[1]', 'VARCHAR(100)') AS ProductName,
        Entry.value('CatagoryId[1]', 'int') AS CatagoryId
        
    FROM
        @xmlData.nodes('/products/product') AS Entries(Entry);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertProductsFromXML]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertProductsFromXML]
    @xmlData XML
AS
BEGIN
    INSERT INTO Product11 (ProductName, CatagoryId)
    SELECT
        Tbl.Col.value('ProductName[1]', 'VARCHAR(100)') AS ProductName,
        Tbl.Col.value('CatagoryId[1]', 'int') AS CatagoryId
        
    FROM
        @xmlData.nodes('/products/product') AS Tbl(Col);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertProductsFromXML1]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertProductsFromXML1]
    @xmlData XML
AS
BEGIN
    INSERT INTO Product11 (ProductName, CatagoryId)
    SELECT
        Entry.value('ProductName[1]', 'VARCHAR(100)') AS ProductName,
        Entry.value('CatagoryId[1]', 'int') AS CatagoryId
        
    FROM
        @xmlData.nodes('/products/product') AS Entries(Entry);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertProductsFromXML14]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[InsertProductsFromXML14]
    @xmlData XML
AS
BEGIN
    SET NOCOUNT ON; 
    INSERT INTO Product11 (ProductName, CatagoryId)
    SELECT
        Col.value('ProductName[1]', 'VARCHAR(100)') AS ProductName,
        Col.value('CatagoryId[1]', 'int') AS CatagoryId
        
    FROM
        @xmlData.nodes('/products/product') AS  xmlData(Col);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertPurchase]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[InsertPurchase]
    @xmlData XML
AS
BEGIN
    SET NOCOUNT ON; 
    INSERT INTO Purchase (ProductId, SupplierId, Color,Qunatity)
    SELECT
        Col.value('ProductId[1]', 'int') AS ProductId,
        Col.value('SupplierId[1]', 'int') AS SupplierId,
		Col.value('Color[1]', 'varchar(50)') AS Color,
		Col.value('Qunatity[1]', 'varchar(50)') AS Qunatity
        
    FROM
        @xmlData.nodes('/purchases/purchase') AS  xmlData(Col);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertPurchase1]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[InsertPurchase1]
    @xmlData XML
AS
BEGIN
    SET NOCOUNT ON; 
    INSERT INTO Purchase (ProductId, SupplierId, Color,Qunatity , Date)
    SELECT
        Col.value('ProductId[1]', 'int') AS ProductId,
        Col.value('SupplierId[1]', 'int') AS SupplierId,
		Col.value('Color[1]', 'varchar(50)') AS Color,
		Col.value('Qunatity[1]', 'varchar(50)') AS Qunatity,
	    Col.value('Date[1]', 'date') AS Date
        
    FROM
        @xmlData.nodes('/purchases/purchase') AS  xmlData(Col);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertPurchase2]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[InsertPurchase2]
    @xmlData XML
AS
BEGIN
    SET NOCOUNT ON; 
    INSERT INTO Purchase (ProductId, SupplierId, Color,Qunatity , Date)
    SELECT
        Col.value('ProductId[1]', 'int') AS ProductId,
        Col.value('SupplierId[1]', 'int') AS SupplierId,
		Col.value('Color[1]', 'varchar(50)') AS Color,
		Col.value('Qunatity[1]', 'varchar(50)') AS Qunatity,
	    Col.value('Date[1]', 'datetime') AS Date
        
    FROM
        @xmlData.nodes('/purchases/purchase') AS  xmlData(Col);
END;
GO
/****** Object:  StoredProcedure [dbo].[openSupllierXml]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[openSupllierXml]
As
select
 A.supplier.query('SupplierName').value('.', 'varchar(100)') as SupplierName,
 A.supplier.query('SupplierAddress').value('.', 'varchar(100)') as SupplierAddress 
from(
	select cast(c as xml) from 
	openrowset(
		 bulk 'D:\supplier.xml',
		 single_blob
		 )as T(c)
)as S(c)
Cross apply c.nodes('Suppliers/Supplier') as A(supplier)

GO
/****** Object:  StoredProcedure [dbo].[openSupllierXml1]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[openSupllierXml1]
As
insert into Suppliers
select
 A.supplier.query('SupplierName').value('.', 'varchar(100)') as SupplierName,
 A.supplier.query('SupplierAddress').value('.', 'varchar(100)') as SupplierAddress 
from(
	select cast(c as xml) from 
	openrowset(
		 bulk 'D:\supplier.xml',
		 single_blob
		 )as T(c)
)as S(c)
Cross apply c.nodes('Suppliers/Supplier') as A(supplier)

GO
/****** Object:  StoredProcedure [dbo].[sp_search_purchase_by_date]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_search_purchase_by_date]
 @StartDateParam date,
 @EndDateParam date
as
BEGIN
    Select Purchase.PurchaseId,Product11.ProductName, Suppliers.SupplierName, Purchase.Color, Purchase.Qunatity , Purchase.Date
    from  Purchase 
    LEFT JOIN Product11 on Product11.ProductId = Purchase.ProductId
    left join Suppliers on Suppliers.SupplierId = Purchase.SupplierId
    WHERE Purchase.Date BETWEEN @StartDateParam AND @EndDateParam
END;
GO
/****** Object:  StoredProcedure [dbo].[SuppliersInsert]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SuppliersInsert]
@SupplierId int,
@SupplierName varchar(100), 
@SupplierAddress varchar(100)
as 
if @SupplierId=0
begin
Insert into Suppliers(SupplierName, SupplierAddress) values (@SupplierName , @SupplierAddress)
end

GO
/****** Object:  StoredProcedure [dbo].[SuppliersInsert1]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SuppliersInsert1]
--@SupplierId int,
@SupplierName varchar(100), 
@SupplierAddress varchar(100)
as 
--if @SupplierId=0
begin
Insert into Suppliers(SupplierName, SupplierAddress) values (@SupplierName , @SupplierAddress)
end
GO
/****** Object:  StoredProcedure [dbo].[viewproductlist]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[viewproductlist]
as
begin
SELECT product.ProductId, product.ProductName, Catagory.CatagoryName
FROM product,Catagory
Where Product.CatagoryId = Catagory.CatagoryId
end
GO
/****** Object:  StoredProcedure [dbo].[viewproductlist1]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[viewproductlist1]
as
begin
SELECT Product11.ProductId, Product11.ProductName, Catagory.CatagoryName
FROM Product11,Catagory
Where Product11.CatagoryId = Catagory.CatagoryId
end
GO
/****** Object:  StoredProcedure [dbo].[ViewPurchaseGrid1]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ViewPurchaseGrid1]

As
Begin
Select Purchase.PurchaseId,Product.ProductName,Suppliers.SupplierName, Purchase.Color, Purchase.Qunatity 
from Suppliers, Purchase 
LEFT JOIN Product on Product.ProductId = Purchase.ProductId
Where Suppliers.SupplierId = Purchase.SupplierId

End
GO
/****** Object:  StoredProcedure [dbo].[ViewPurchaseGrid2]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ViewPurchaseGrid2]

As
Begin
Select Purchase.PurchaseId,Product11.ProductName, Suppliers.SupplierName, Purchase.Color, Purchase.Qunatity 
from Suppliers, Purchase 
LEFT JOIN Product11 on Product11.ProductId = Purchase.ProductId
Where Suppliers.SupplierId = Purchase.SupplierId

End
GO
/****** Object:  StoredProcedure [dbo].[ViewPurchaseGrid3]    Script Date: 8/7/2023 9:43:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[ViewPurchaseGrid3]

As
Begin
Select Purchase.PurchaseId,Product11.ProductName, Suppliers.SupplierName, Purchase.Color, Purchase.Qunatity , Purchase.Date
from Suppliers, Purchase 
LEFT JOIN Product11 on Product11.ProductId = Purchase.ProductId
Where Suppliers.SupplierId = Purchase.SupplierId

End
GO
USE [master]
GO
ALTER DATABASE [product1] SET  READ_WRITE 
GO
