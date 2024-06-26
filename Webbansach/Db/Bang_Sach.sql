USE [master]
GO

/****** Object:  Database [BanSach]    Script Date: 08/04/2024 7:11:21 CH ******/
CREATE DATABASE [BanSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanSach', FILENAME = N'D:\Tài liệu học\Thương mại điện tử\CSDL\BanSach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BanSach_log', FILENAME = N'D:\Tài liệu học\Thương mại điện tử\CSDL\BanSach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BanSach] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BanSach] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BanSach] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BanSach] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BanSach] SET ARITHABORT OFF 
GO

ALTER DATABASE [BanSach] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BanSach] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BanSach] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BanSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BanSach] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BanSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BanSach] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BanSach] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BanSach] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BanSach] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BanSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BanSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BanSach] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BanSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BanSach] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BanSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BanSach] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BanSach] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [BanSach] SET  MULTI_USER 
GO

ALTER DATABASE [BanSach] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BanSach] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BanSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BanSach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [BanSach] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BanSach] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [BanSach] SET QUERY_STORE = ON
GO

ALTER DATABASE [BanSach] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [BanSach] SET  READ_WRITE 
GO
USE [BanSach]
GO
/****** Object:  Table [dbo].[Bang_sach]    Script Date: 08/04/2024 11:00:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang_sach](
	[BookID] [int] NOT NULL,
	[Tieude] [nvarchar](255) NULL,
	[Tacgia] [nvarchar](100) NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[img] [nvarchar](255) NULL,
 CONSTRAINT [PK_Bang_sach] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bang_danh_muc]    Script Date: 08/04/2024 11:00:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang_danh_muc](
	[ID] [int] NOT NULL,
	[Tendanhmuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bang_danh_muc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bang_nguoi_dung]    Script Date: 08/04/2024 11:00:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang_nguoi_dung](
	[UserID] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[Fullname] [nvarchar](100) NULL,
	[Address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Bang_nguoi_dung] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bang_don_hang]    Script Date: 08/04/2024 11:00:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang_don_hang](
	[OrderID] [int] NOT NULL,
	[UserID] [int] NULL,
	[OrderDate] [date] NULL,
	[Tongtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Bang_don_hang] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bang_chi_tiet_don_hang]    Script Date: 08/04/2024 11:00:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang_chi_tiet_don_hang](
	[OrderDetaiIID] [int] NOT NULL,
	[OrderID] [int] NULL,
	[BookID] [int] NULL,
	[SLdonhang] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Bang_chi_tiet_don_hang] PRIMARY KEY CLUSTERED 
(
	[OrderDetaiIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 08/04/2024 11:00:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT    TOP (100) PERCENT dbo.Bang_sach.BookID, dbo.Bang_sach.Tieude, dbo.Bang_sach.Giaban, dbo.Bang_sach.Tacgia, dbo.Bang_sach.Soluong, dbo.Bang_sach.img
FROM         dbo.Bang_chi_tiet_don_hang INNER JOIN
                      dbo.Bang_don_hang ON dbo.Bang_chi_tiet_don_hang.OrderID = dbo.Bang_don_hang.OrderID INNER JOIN
                      dbo.Bang_nguoi_dung ON dbo.Bang_don_hang.UserID = dbo.Bang_nguoi_dung.UserID INNER JOIN
                      dbo.Bang_sach ON dbo.Bang_chi_tiet_don_hang.BookID = dbo.Bang_sach.BookID INNER JOIN
                      dbo.Bang_danh_muc ON dbo.Bang_sach.BookID = dbo.Bang_danh_muc.ID
ORDER BY dbo.Bang_sach.BookID
GO
INSERT [dbo].[Bang_chi_tiet_don_hang] ([OrderDetaiIID], [OrderID], [BookID], [SLdonhang], [Price]) VALUES (1, 1, 1, 1, CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[Bang_chi_tiet_don_hang] ([OrderDetaiIID], [OrderID], [BookID], [SLdonhang], [Price]) VALUES (2, 2, 2, 2, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[Bang_chi_tiet_don_hang] ([OrderDetaiIID], [OrderID], [BookID], [SLdonhang], [Price]) VALUES (3, 3, 3, 2, CAST(1000 AS Decimal(18, 0)))
GO
INSERT [dbo].[Bang_danh_muc] ([ID], [Tendanhmuc]) VALUES (1, N'Sach giao Khoa')
INSERT [dbo].[Bang_danh_muc] ([ID], [Tendanhmuc]) VALUES (2, N'Sach khoa hoc')
INSERT [dbo].[Bang_danh_muc] ([ID], [Tendanhmuc]) VALUES (3, N'sach giai tri')
GO
INSERT [dbo].[Bang_don_hang] ([OrderID], [UserID], [OrderDate], [Tongtien]) VALUES (1, 1, CAST(N'2024-01-12' AS Date), CAST(14000 AS Decimal(18, 0)))
INSERT [dbo].[Bang_don_hang] ([OrderID], [UserID], [OrderDate], [Tongtien]) VALUES (2, 2, CAST(N'2024-01-30' AS Date), CAST(26000 AS Decimal(18, 0)))
INSERT [dbo].[Bang_don_hang] ([OrderID], [UserID], [OrderDate], [Tongtien]) VALUES (3, 3, CAST(N'2024-01-30' AS Date), CAST(12000 AS Decimal(18, 0)))
GO
INSERT [dbo].[Bang_nguoi_dung] ([UserID], [Username], [Password], [Email], [Fullname], [Address]) VALUES (1, N'Thong', N'123', N'thongmai2@gmail.com', N'mai thanh thong', N'Da Nang')
INSERT [dbo].[Bang_nguoi_dung] ([UserID], [Username], [Password], [Email], [Fullname], [Address]) VALUES (2, N'Tram', N'123', N'Tramtran@gmail.com', N'Tran tri tram', N'Da Nang')
INSERT [dbo].[Bang_nguoi_dung] ([UserID], [Username], [Password], [Email], [Fullname], [Address]) VALUES (3, N'Ngoc', N'123', N'ngoc', N'ngoccute', N'danang')
GO
INSERT [dbo].[Bang_sach] ([BookID], [Tieude], [Tacgia], [Giaban], [Soluong], [img]) VALUES (1, N'Sách Lớp 1', N'Nguyen Van A', CAST(10000 AS Decimal(18, 0)), 100, N'giaokhoalop1.jpg')
INSERT [dbo].[Bang_sach] ([BookID], [Tieude], [Tacgia], [Giaban], [Soluong], [img]) VALUES (2, N'Sách Toán Lớp 2', N'Nguyen van B', CAST(10000 AS Decimal(18, 0)), 100, N'giaokhoalop2.jpg')
INSERT [dbo].[Bang_sach] ([BookID], [Tieude], [Tacgia], [Giaban], [Soluong], [img]) VALUES (3, N'Truyện Cười 2', N'Thông', CAST(12000 AS Decimal(18, 0)), 50, N'truyencuoi.jpg')
GO
ALTER TABLE [dbo].[Bang_chi_tiet_don_hang]  WITH CHECK ADD  CONSTRAINT [FK_Bang_chi_tiet_don_hang_Bang_don_hang] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Bang_don_hang] ([OrderID])
GO
ALTER TABLE [dbo].[Bang_chi_tiet_don_hang] CHECK CONSTRAINT [FK_Bang_chi_tiet_don_hang_Bang_don_hang]
GO
ALTER TABLE [dbo].[Bang_chi_tiet_don_hang]  WITH CHECK ADD  CONSTRAINT [FK_Bang_chi_tiet_don_hang_Bang_sach] FOREIGN KEY([BookID])
REFERENCES [dbo].[Bang_sach] ([BookID])
GO
ALTER TABLE [dbo].[Bang_chi_tiet_don_hang] CHECK CONSTRAINT [FK_Bang_chi_tiet_don_hang_Bang_sach]
GO
ALTER TABLE [dbo].[Bang_don_hang]  WITH CHECK ADD  CONSTRAINT [FK_Bang_don_hang_Bang_nguoi_dung] FOREIGN KEY([UserID])
REFERENCES [dbo].[Bang_nguoi_dung] ([UserID])
GO
ALTER TABLE [dbo].[Bang_don_hang] CHECK CONSTRAINT [FK_Bang_don_hang_Bang_nguoi_dung]
GO
ALTER TABLE [dbo].[Bang_sach]  WITH CHECK ADD  CONSTRAINT [FK_Bang_sach_Bang_danh_muc] FOREIGN KEY([BookID])
REFERENCES [dbo].[Bang_danh_muc] ([ID])
GO
ALTER TABLE [dbo].[Bang_sach] CHECK CONSTRAINT [FK_Bang_sach_Bang_danh_muc]
GO
/****** Object:  StoredProcedure [dbo].[Sanpham]    Script Date: 08/04/2024 11:00:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sanpham] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT    TOP (100) PERCENT dbo.Bang_sach.BookID, dbo.Bang_sach.Tieude, dbo.Bang_sach.Giaban, dbo.Bang_sach.Tacgia, dbo.Bang_sach.Soluong, dbo.Bang_sach.img
FROM         dbo.Bang_chi_tiet_don_hang INNER JOIN
                      dbo.Bang_don_hang ON dbo.Bang_chi_tiet_don_hang.OrderID = dbo.Bang_don_hang.OrderID INNER JOIN
                      dbo.Bang_nguoi_dung ON dbo.Bang_don_hang.UserID = dbo.Bang_nguoi_dung.UserID INNER JOIN
                      dbo.Bang_sach ON dbo.Bang_chi_tiet_don_hang.BookID = dbo.Bang_sach.BookID INNER JOIN
                      dbo.Bang_danh_muc ON dbo.Bang_sach.BookID = dbo.Bang_danh_muc.ID
ORDER BY dbo.Bang_sach.BookID
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = -9
      End
      Begin Tables = 
         Begin Table = "Bang_danh_muc"
            Begin Extent = 
               Top = 7
               Left = 299
               Bottom = 126
               Right = 493
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Bang_don_hang"
            Begin Extent = 
               Top = 7
               Left = 541
               Bottom = 170
               Right = 735
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Bang_nguoi_dung"
            Begin Extent = 
               Top = 7
               Left = 783
               Bottom = 170
               Right = 977
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Bang_sach"
            Begin Extent = 
               Top = 7
               Left = 1025
               Bottom = 170
               Right = 1219
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Bang_chi_tiet_don_hang"
            Begin Extent = 
               Top = 7
               Left = 57
               Bottom = 170
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 2436
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
