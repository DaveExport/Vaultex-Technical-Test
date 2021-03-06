USE [master]
GO
/****** Object:  Database [Vaultex]    Script Date: 17/04/2022 09:04:29 ******/
CREATE DATABASE [Vaultex]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Vaultex', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Vaultex.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Vaultex_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Vaultex_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Vaultex] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Vaultex].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Vaultex] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Vaultex] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Vaultex] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Vaultex] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Vaultex] SET ARITHABORT OFF 
GO
ALTER DATABASE [Vaultex] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Vaultex] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Vaultex] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Vaultex] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Vaultex] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Vaultex] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Vaultex] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Vaultex] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Vaultex] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Vaultex] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Vaultex] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Vaultex] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Vaultex] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Vaultex] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Vaultex] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Vaultex] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Vaultex] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Vaultex] SET RECOVERY FULL 
GO
ALTER DATABASE [Vaultex] SET  MULTI_USER 
GO
ALTER DATABASE [Vaultex] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Vaultex] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Vaultex] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Vaultex] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Vaultex] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Vaultex] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Vaultex', N'ON'
GO
ALTER DATABASE [Vaultex] SET QUERY_STORE = OFF
GO
USE [Vaultex]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 17/04/2022 09:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrganisationNumber] [nvarchar](255) NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organisation]    Script Date: 17/04/2022 09:04:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organisation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrganisationName] [nvarchar](255) NULL,
	[OrganisationNumber] [nvarchar](255) NULL,
	[AddressLine1] [nvarchar](255) NULL,
	[AddressLine2] [nvarchar](255) NULL,
	[AddressLine3] [nvarchar](255) NULL,
	[AddressLine4] [nvarchar](255) NULL,
	[Town] [nvarchar](255) NULL,
	[Postcode] [nvarchar](255) NULL,
	[F9] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (1, N'09740322', N'Janet', N'Smith')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (2, N'09740322', N'Frank', N'Bloswick')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (3, N'09740322', N'Tonya', N'Bazinaw')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (4, N'09740322', N'Mike', N'St. Onge')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (5, N'09740322', N'Jackie', N'Jones')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (6, N'09740322', N'Darren', N'Tillbrooke')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (7, N'09740322', N'Stephanie', N'Holsinger')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (8, N'09740322', N'Rene', N'Hughey')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (9, N'09740322', N'Robert', N'Rogers')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (10, N'09740322', N'Richard', N'LaPine')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (11, N'09740322', N'Kathy', N'Summerfield')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (12, N'09740322', N'Kathy', N'Bodwin')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (13, N'00002065', N'Mitch', N'Krause')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (14, N'00002065', N'George', N'Dow')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (15, N'00002065', N'Jack', N'Malone')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (16, N'00002065', N'Bill', N'Schweiz')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (17, N'00002065', N'Mark', N'Gunter')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (18, N'00002065', N'Bob', N'Anderson')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (19, N'00002065', N'Scott', N'Simpson')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (20, N'00002065', N'Phil', N'Dingman')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (21, N'00002065', N'Chad', N'Leiker')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (22, N'00002065', N'Ian', N'Benson')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (23, N'00002065', N'Nicole', N'Lane')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (24, N'00002065', N'Steve', N'Lundeen')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (25, N'00002065', N'Erica', N'Black')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (26, N'00002065', N'Xenos', N'Mathis')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (27, N'00002065', N'Kyle', N'Good')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (28, N'00002065', N'Raja', N'Dejesus')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (29, N'00002065', N'Timothy', N'Frazier')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (30, N'00002065', N'Francine', N'Morrison')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (31, N'SC095237', N'Avram', N'Pate')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (32, N'SC095237', N'Hammett', N'Coffey')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (33, N'SC095237', N'Hasad', N'Wise')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (34, N'SC095237', N'Cullen', N'Riddle')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (35, N'SC095237', N'Kato', N'Delgado')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (36, N'SC095237', N'Todd', N'Wright')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (37, N'SC095237', N'Troy', N'Mccoy')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (38, N'SC095237', N'Gil', N'Duncan')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (39, N'SC095237', N'Lionel', N'Espinoza')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (40, N'SC095237', N'Victor', N'Merrill')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (41, N'SC001111', N'Gennifer', N'Vance')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (42, N'SC001111', N'Chancellor', N'Warner')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (43, N'SC001111', N'Davis', N'Wolf')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (44, N'00966425', N'Carlos', N'Clarke')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (45, N'00966425', N'Dolan', N'Mercado')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (46, N'00966425', N'Helen', N'Guthrie')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (47, N'00966425', N'Elmo', N'Douglas')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (48, N'00966425', N'Kane', N'Rice')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (49, N'00966425', N'Colt', N'Rowland')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (50, N'00966425', N'John', N'Rose')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (51, N'00966425', N'Alfonso', N'Hopkins')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (52, N'00966425', N'Ida', N'Watts')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (53, N'00966425', N'Jennifer', N'Coleman')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (54, N'00966425', N'Ciaran', N'Newton')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (55, N'00966425', N'Hiram', N'Carrillo')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (56, N'00966425', N'Devin', N'Russell')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (57, N'00966425', N'Arsenio', N'Jensen')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (58, N'00966425', N'Otto', N'Gibbs')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (59, N'00966425', N'Hiram', N'Vega')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (60, N'SC327000', N'Jarrod', N'Randolph')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (61, N'SC327000', N'Josiah', N'Gates')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (62, N'SC327000', N'Brandon', N'Stanley')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (63, N'SC327000', N'Kennedy', N'Nunez')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (64, N'SC327000', N'Lewis', N'Sanchez')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (65, N'SC327000', N'Kassie', N'Chaney')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (66, N'SC327000', N'Lance', N'Knox')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (67, N'SC327000', N'Lamar', N'Harrison')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (68, N'SC327000', N'Honorato', N'Montgomery')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (69, N'00014259', N'Lisa', N'Nielsen')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (70, N'00014259', N'Layla', N'Barr')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (71, N'00014259', N'Nancy', N'Mcclain')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (72, N'00014259', N'Kato', N'Delgado')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (73, N'00014259', N'Todd', N'Wright')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (74, N'00014259', N'Troy', N'Mccoy')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (75, N'00014259', N'Gil', N'Duncan')
INSERT [dbo].[Employee] ([ID], [OrganisationNumber], [FirstName], [LastName]) VALUES (76, N'00014259', N'Lionel', N'Espinoza')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Organisation] ON 

INSERT [dbo].[Organisation] ([ID], [OrganisationName], [OrganisationNumber], [AddressLine1], [AddressLine2], [AddressLine3], [AddressLine4], [Town], [Postcode], [F9]) VALUES (1, N'Barclays UK PLC', N'09740322', N'1 Churchill Place', NULL, NULL, NULL, N'London', N'E14 5HP', 12)
INSERT [dbo].[Organisation] ([ID], [OrganisationName], [OrganisationNumber], [AddressLine1], [AddressLine2], [AddressLine3], [AddressLine4], [Town], [Postcode], [F9]) VALUES (2, N'HSBC BANK PLC', N'00014259', N'8 Canada Square', NULL, NULL, NULL, N'London', N'E14 5HQ', 8)
INSERT [dbo].[Organisation] ([ID], [OrganisationName], [OrganisationNumber], [AddressLine1], [AddressLine2], [AddressLine3], [AddressLine4], [Town], [Postcode], [F9]) VALUES (3, N'LLOYDS BANK PLC', N'00002065', N'25 Gresham Street', NULL, NULL, NULL, N'London', N'EC2V 7HN', 18)
INSERT [dbo].[Organisation] ([ID], [OrganisationName], [OrganisationNumber], [AddressLine1], [AddressLine2], [AddressLine3], [AddressLine4], [Town], [Postcode], [F9]) VALUES (4, N'TSB BANK PLC', N'SC095237', N'Henry Duncan House', N'120 George Street', NULL, NULL, N'Edinburgh', N'EH2 4LH', 10)
INSERT [dbo].[Organisation] ([ID], [OrganisationName], [OrganisationNumber], [AddressLine1], [AddressLine2], [AddressLine3], [AddressLine4], [Town], [Postcode], [F9]) VALUES (5, N'CLYDESDALE BANK PLC', N'SC001111', N'30 St Vincent Place', NULL, NULL, NULL, N'Glasgow', N'G1 2HL', 3)
INSERT [dbo].[Organisation] ([ID], [OrganisationName], [OrganisationNumber], [AddressLine1], [AddressLine2], [AddressLine3], [AddressLine4], [Town], [Postcode], [F9]) VALUES (6, N'STANDARD CHARTERED PLC', N'00966425', N'1 Basinghall Avenue', NULL, NULL, NULL, N'London', N'EC2V 5DD', 16)
INSERT [dbo].[Organisation] ([ID], [OrganisationName], [OrganisationNumber], [AddressLine1], [AddressLine2], [AddressLine3], [AddressLine4], [Town], [Postcode], [F9]) VALUES (7, N'BANK OF SCOTLAND PLC', N'SC327000', N'The Mound', NULL, NULL, NULL, N'Edinburgh', N'EH1 1YZ', 9)
INSERT [dbo].[Organisation] ([ID], [OrganisationName], [OrganisationNumber], [AddressLine1], [AddressLine2], [AddressLine3], [AddressLine4], [Town], [Postcode], [F9]) VALUES (8, N'Another Bank', N'03726259', N'1 The Lane', NULL, NULL, NULL, N'Anytown', N'A88 5GG', 0)
SET IDENTITY_INSERT [dbo].[Organisation] OFF
GO
USE [master]
GO
ALTER DATABASE [Vaultex] SET  READ_WRITE 
GO
