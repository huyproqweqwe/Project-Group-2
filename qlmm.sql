USE [master]
GO
/****** Object:  Database [QuanLyMM]    Script Date: 05/11/2024 12:56:19 CH ******/
CREATE DATABASE [QuanLyMM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyMM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DANGHUY\MSSQL\DATA\QuanLyMM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyMM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DANGHUY\MSSQL\DATA\QuanLyMM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyMM] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyMM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyMM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyMM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyMM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyMM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyMM] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyMM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyMM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyMM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyMM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyMM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyMM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyMM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyMM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyMM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyMM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyMM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyMM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyMM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyMM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyMM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyMM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyMM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyMM] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyMM] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyMM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyMM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyMM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyMM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyMM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyMM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyMM', N'ON'
GO
ALTER DATABASE [QuanLyMM] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyMM] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyMM]
GO
/****** Object:  Table [dbo].[BaoCao ]    Script Date: 05/11/2024 12:56:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCao ](
	[MaBaoCao] [nvarchar](50) NOT NULL,
	[SanLuong] [int] NULL,
	[ChiPhi] [decimal](18, 2) NULL,
	[DoanhThu] [decimal](18, 2) NULL,
	[LoiNhuan]  AS ([DoanhThu]-[ChiPhi]) PERSISTED,
	[TonKho] [int] NULL,
	[NgayBaoCao] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 05/11/2024 12:56:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [nvarchar](50) NULL,
	[MaSanPham] [nvarchar](50) NULL,
	[SoLuong] [nchar](10) NULL,
	[DonGia] [nchar](10) NULL,
	[ThanhTien] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 05/11/2024 12:56:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [nvarchar](50) NOT NULL,
	[NgayDatHang] [date] NULL,
	[NgayGiaoHang] [date] NULL,
	[TrangThaiDonHang] [nvarchar](50) NULL,
	[MaKhachHang] [nvarchar](50) NULL,
	[TongTien] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 05/11/2024 12:56:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [nvarchar](50) NOT NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 05/11/2024 12:56:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[MaKho] [varchar](50) NOT NULL,
	[MaSanPham] [nvarchar](50) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[SoLuongTon] [int] NULL,
	[NgayCapNhat] [date] NULL,
	[MoTa] [nvarchar](255) NULL,
 CONSTRAINT [PK__Kho__3BDA9350F48E4AAB] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 05/11/2024 12:56:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [nvarchar](50) NOT NULL,
	[TenNhaCungCap] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 05/11/2024 12:56:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](50) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[MoTa] [nvarchar](255) NULL,
	[Gia] [decimal](18, 2) NULL,
	[SoLuongTon] [int] NULL,
	[MaNhaCungCap] [nvarchar](50) NULL,
	[LoaiSanPham] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiChinh]    Script Date: 05/11/2024 12:56:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiChinh](
	[MaTaiChinh] [nvarchar](50) NOT NULL,
	[LoaiChiPhi] [nvarchar](100) NULL,
	[SoTien] [decimal](18, 2) NULL,
	[NgayChi] [date] NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiChinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 05/11/2024 12:56:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Question] [nvarchar](50) NULL,
	[Answer] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BaoCao ] ([MaBaoCao], [SanLuong], [ChiPhi], [DoanhThu], [TonKho], [NgayBaoCao]) VALUES (N'BC001', 0, NULL, NULL, NULL, CAST(N'2024-10-25' AS Date))
INSERT [dbo].[BaoCao ] ([MaBaoCao], [SanLuong], [ChiPhi], [DoanhThu], [TonKho], [NgayBaoCao]) VALUES (N'BC004', 100, CAST(500000.00 AS Decimal(18, 2)), CAST(1500000.00 AS Decimal(18, 2)), 200, CAST(N'2024-10-25' AS Date))
INSERT [dbo].[BaoCao ] ([MaBaoCao], [SanLuong], [ChiPhi], [DoanhThu], [TonKho], [NgayBaoCao]) VALUES (N'BC005', 200, CAST(1000000.00 AS Decimal(18, 2)), CAST(3000000.00 AS Decimal(18, 2)), 150, CAST(N'2024-10-26' AS Date))
INSERT [dbo].[BaoCao ] ([MaBaoCao], [SanLuong], [ChiPhi], [DoanhThu], [TonKho], [NgayBaoCao]) VALUES (N'BC006', 150, CAST(750000.00 AS Decimal(18, 2)), CAST(2250000.00 AS Decimal(18, 2)), 300, CAST(N'2024-10-27' AS Date))
GO
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'DH001', N'SP001', N'2         ', N'250000    ', N'500000    ')
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'DH002', N'SP002', N'3         ', N'250000    ', N'750000    ')
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'DH003', N'SP003', N'4         ', N'250000    ', N'1000000   ')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [NgayDatHang], [NgayGiaoHang], [TrangThaiDonHang], [MaKhachHang], [TongTien]) VALUES (N'DH001', CAST(N'2024-10-27' AS Date), CAST(N'2024-10-30' AS Date), N'Xong', N'KH001', CAST(500000.00 AS Decimal(18, 2)))
INSERT [dbo].[DonHang] ([MaDonHang], [NgayDatHang], [NgayGiaoHang], [TrangThaiDonHang], [MaKhachHang], [TongTien]) VALUES (N'DH002', CAST(N'2024-10-27' AS Date), CAST(N'2024-10-31' AS Date), N'Ðã giao', N'KH002', CAST(750000.00 AS Decimal(18, 2)))
INSERT [dbo].[DonHang] ([MaDonHang], [NgayDatHang], [NgayGiaoHang], [TrangThaiDonHang], [MaKhachHang], [TongTien]) VALUES (N'DH003', CAST(N'2024-10-27' AS Date), CAST(N'2024-11-01' AS Date), N'Ðang xử lý', N'KH003', CAST(1000000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH001', N'Khách hàng A', N'Địa chỉ A', N'0123456789', N'customerA@example.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH002', N'Khách hàng B', N'Địa chỉ B', N'0987654321', N'customerB@example.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH003', N'Khách hàng C', N'Địa chỉ C', N'0112233445', N'customerC@example.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH004', N'Dương', N'HN', N'123123', N'customerA@example.com')
GO
INSERT [dbo].[Kho] ([MaKho], [MaSanPham], [TenSanPham], [SoLuongTon], [NgayCapNhat], [MoTa]) VALUES (N'1', N'SP001', N'Áo Thun Nam', 50, CAST(N'2024-10-25' AS Date), N'Áo thun cotton thoáng mát')
INSERT [dbo].[Kho] ([MaKho], [MaSanPham], [TenSanPham], [SoLuongTon], [NgayCapNhat], [MoTa]) VALUES (N'2', N'SP002', N'Váy Đầm Nữ', 30, CAST(N'2024-10-25' AS Date), N'Váy đầm linen thời trang')
INSERT [dbo].[Kho] ([MaKho], [MaSanPham], [TenSanPham], [SoLuongTon], [NgayCapNhat], [MoTa]) VALUES (N'3', N'SP003', N'Quần Jeans', 20, CAST(N'2024-10-25' AS Date), N'Quần Jeans Dày Dặn')
GO
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'NCC001', N'Nhà Cung Cấp A', N'Địa chỉ NCC A', N'0123456789', N'contactA@example.com')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'NCC002', N'Nhà Cung Cấp B', N'Địa chỉ NCC B', N'0987654321', N'contactB@example.com')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (N'NCC003', N'Nhà Cung Cấp C', N'Địa chỉ NCC C', N'0112233445', N'contactC@example.com')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaNhaCungCap], [LoaiSanPham], [MauSac]) VALUES (N'SP001', N'Áo Thun Nam', N'Áo thun cotton thoáng mát', CAST(200000.00 AS Decimal(18, 2)), 50, N'NCC001', N'Nhập Khẩu', N'Vàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaNhaCungCap], [LoaiSanPham], [MauSac]) VALUES (N'SP002', N'Váy Đầm Nữ', N'Váy đầm linen thời trang', CAST(300000.00 AS Decimal(18, 2)), 30, N'NCC002', N'2Hand', N'Đỏ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaNhaCungCap], [LoaiSanPham], [MauSac]) VALUES (N'SP003', N'Quần Jeans', N'Quần Jeans Dày Dặn', CAST(350000.00 AS Decimal(18, 2)), 20, N'NCC003', N'2Hand', N'Xanh')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon], [MaNhaCungCap], [LoaiSanPham], [MauSac]) VALUES (N'SP004', N'Áo Thun Nam', N'Áo thun cotton thoáng mát', CAST(200000.00 AS Decimal(18, 2)), 50, N'NCC001', N'Nhập Khẩu', N'Vàng')
GO
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Question], [Answer]) VALUES (N'dương123', N'123', N'Ai', N'dương')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Question], [Answer]) VALUES (N'huy123', N'123', N'Bạn Tên Là Gì', N'Huy')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Question], [Answer]) VALUES (N'huy1234', N'345', N'your name', N'huy')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Question], [Answer]) VALUES (N'huy345', N'123', N'ai d?y', N'huy')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [Question], [Answer]) VALUES (N'khu123', N'123', N'Ai biết tên', N'khu')
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang1_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang1_DonHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD  CONSTRAINT [FK__Kho__MaSanPham__3E52440B] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[Kho] CHECK CONSTRAINT [FK__Kho__MaSanPham__3E52440B]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
USE [master]
GO
ALTER DATABASE [QuanLyMM] SET  READ_WRITE 
GO
