﻿create database [BanLinhKienMayTinh]
go
USE [BanLinhKienMayTinh]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 7/3/2020 7:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[maLinhKien] [int] NULL,
	[thongtin] [nvarchar](50) NULL,
	[maGioHang] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[maGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinhKien]    Script Date: 7/3/2020 7:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinhKien](
	[maLinhKien] [int] IDENTITY(1,1) NOT NULL,
	[maLoaiLinhKien] [int] NULL,
	[maNhaCungCap] [int] NULL,
	[maLoaiMay] [int] NULL,
	[tenLinhKien] [nvarchar](50) NULL,
	[thongSoKyThuat] [nvarchar](500) NULL,
	[moTa] [nvarchar](500) NULL,
	[giaBan] [float] NULL,
	[thoiGianBaoHanh] [nvarchar](50) NULL,
	[img] [nvarchar](50) NULL,
 CONSTRAINT [PK_LinhKien] PRIMARY KEY CLUSTERED 
(
	[maLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiLinhKien]    Script Date: 7/3/2020 7:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiLinhKien](
	[maLoai] [int] IDENTITY(1,1) NOT NULL,
	[tenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiLinhKien] PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiMay]    Script Date: 7/3/2020 7:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMay](
	[maLoaiMay] [int] IDENTITY(1,1) NOT NULL,
	[tenLoaiMay] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiMay] PRIMARY KEY CLUSTERED 
(
	[maLoaiMay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 7/3/2020 7:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[maNCC] [int] IDENTITY(1,1) NOT NULL,
	[tenNhaCungCap] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCC] PRIMARY KEY CLUSTERED 
(
	[maNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 7/3/2020 7:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[maPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[maLinhKien] [int] NULL,
	[soLuong] [int] NULL,
	[donGia] [float] NULL,
	[tongTien] [float] NULL,
	[ngayThang] [date] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[maPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 7/3/2020 7:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[maPhieuXuat] [int] IDENTITY(1,1) NOT NULL,
	[maLinhKien] [int] NULL,
	[soLuong] [int] NULL,
	[donGia] [float] NULL,
	[tongTien] [float] NULL,
	[ngayThang] [date] NULL,
 CONSTRAINT [PK_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[maPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/3/2020 7:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userName] [nvarchar](50) NOT NULL CONSTRAINT [DF_Users_userName]  DEFAULT (N'userName.GetHashCode()+passWord.GetHashCode()'),
	[passWord] [nvarchar](50) NOT NULL,
	[chucNang] [nvarchar](50) NULL,
	[trangThai] [nvarchar](50) NULL,
	[maGioHang] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userName] ASC,
	[passWord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[LinhKien] ON 

GO
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (1, 1, 2, 1, N'bộ vi xử lý i5 9400f', N'Tốc độ xử lý  2.9 - 4.1 GHz', N'Hàng chính hãng', NULL, N'36 tháng', N'i59400f.png')
GO
SET IDENTITY_INSERT [dbo].[LinhKien] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiLinhKien] ON 

GO
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (1, N'CPU')
GO
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (2, N'Ram')
GO
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (3, N'Card')
GO
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (4, N'Nguồn')
GO
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (5, N'Bàn phím')
GO
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (6, N'Chuột')
GO
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (7, N'Vỏ cây')
GO
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (8, N'Màn hình')
GO
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (9, N'Dây nối')
GO
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (10, N'')
GO
SET IDENTITY_INSERT [dbo].[LoaiLinhKien] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiMay] ON 

GO
INSERT [dbo].[LoaiMay] ([maLoaiMay], [tenLoaiMay]) VALUES (1, N'PC')
GO
INSERT [dbo].[LoaiMay] ([maLoaiMay], [tenLoaiMay]) VALUES (2, N'Laptop')
GO
SET IDENTITY_INSERT [dbo].[LoaiMay] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCC] ON 

GO
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (1, N'Kingston')
GO
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (2, N'intel')
GO
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (3, N'SamSung')
GO
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (4, N'Hyerx')
GO
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (5, N'KingMax')
GO
SET IDENTITY_INSERT [dbo].[NhaCC] OFF
GO
INSERT [dbo].[Users] ([userName], [passWord], [chucNang], [trangThai], [maGioHang]) VALUES (N'admin', N'admin', N'admin', N'Admin', 1)
GO
INSERT [dbo].[Users] ([userName], [passWord], [chucNang], [trangThai], [maGioHang]) VALUES (N'other', N'other', N'other', N'login', 2)
GO
INSERT [dbo].[Users] ([userName], [passWord], [chucNang], [trangThai], [maGioHang]) VALUES (N'other1', N'other1', N'other', N'logup', 3)
GO
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [DF_GioHang_thongtin]  DEFAULT (getdate()) FOR [thongtin]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  CONSTRAINT [DF_PhieuNhap_ngayThang]  DEFAULT (getdate()) FOR [ngayThang]
GO
ALTER TABLE [dbo].[PhieuXuat] ADD  CONSTRAINT [DF_PhieuXuat_ngayThang]  DEFAULT (getdate()) FOR [ngayThang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_LinhKien] FOREIGN KEY([maLinhKien])
REFERENCES [dbo].[LinhKien] ([maLinhKien])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_LinhKien]
GO
ALTER TABLE [dbo].[LinhKien]  WITH CHECK ADD  CONSTRAINT [FK_LinhKien_LoaiLinhKien] FOREIGN KEY([maLoaiLinhKien])
REFERENCES [dbo].[LoaiLinhKien] ([maLoai])
GO
ALTER TABLE [dbo].[LinhKien] CHECK CONSTRAINT [FK_LinhKien_LoaiLinhKien]
GO
ALTER TABLE [dbo].[LinhKien]  WITH CHECK ADD  CONSTRAINT [FK_LinhKien_LoaiMay] FOREIGN KEY([maLoaiMay])
REFERENCES [dbo].[LoaiMay] ([maLoaiMay])
GO
ALTER TABLE [dbo].[LinhKien] CHECK CONSTRAINT [FK_LinhKien_LoaiMay]
GO
ALTER TABLE [dbo].[LinhKien]  WITH CHECK ADD  CONSTRAINT [FK_LinhKien_NhaCC] FOREIGN KEY([maNhaCungCap])
REFERENCES [dbo].[NhaCC] ([maNCC])
GO
ALTER TABLE [dbo].[LinhKien] CHECK CONSTRAINT [FK_LinhKien_NhaCC]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_LinhKien] FOREIGN KEY([maLinhKien])
REFERENCES [dbo].[LinhKien] ([maLinhKien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_LinhKien]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_LinhKien] FOREIGN KEY([maLinhKien])
REFERENCES [dbo].[LinhKien] ([maLinhKien])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_LinhKien]
GO
