USE [BanLinhKienMayTinh]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 12/25/2020 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh](
	[img] [nvarchar](50) NULL,
	[maAnh] [int] NOT NULL,
	[maLinhKien] [int] NOT NULL,
 CONSTRAINT [PK_Anh_1] PRIMARY KEY CLUSTERED 
(
	[maAnh] ASC,
	[maLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 12/25/2020 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[maDonHang] [int] NOT NULL,
	[maLinhKien] [int] NOT NULL,
	[soLuong] [int] NULL,
	[donGia] [float] NULL,
	[ngayThang] [date] NULL,
	[donVi] [nvarchar](50) NULL,
	[tongTien] [float] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[maDonHang] ASC,
	[maLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 12/25/2020 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[maPhieuNhap] [int] NOT NULL,
	[maLinhKien] [int] NOT NULL,
	[soLuong] [int] NULL,
	[donGia] [float] NULL,
	[ngayThang] [date] NULL,
	[donVi] [nvarchar](50) NULL,
	[tongTien] [float] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[maPhieuNhap] ASC,
	[maLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuXuat]    Script Date: 12/25/2020 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuXuat](
	[maPhieuXuat] [int] NOT NULL,
	[maLinhKien] [int] NOT NULL,
	[soLuong] [int] NULL,
	[donGia] [float] NULL,
	[donVi] [float] NULL,
	[ngayThang] [date] NULL,
	[tongTien] [float] NULL,
 CONSTRAINT [PK_ChiTietPhieuXuat] PRIMARY KEY CLUSTERED 
(
	[maPhieuXuat] ASC,
	[maLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/25/2020 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[maDonHang] [int] NOT NULL,
	[trangThai] [nvarchar](50) NULL,
	[maGioHang] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[maDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 12/25/2020 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[thongtin] [nvarchar](50) NULL CONSTRAINT [DF_GioHang_thongtin]  DEFAULT (getdate()),
	[maGioHang] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NULL,
 CONSTRAINT [PK_GioHang_1] PRIMARY KEY CLUSTERED 
(
	[maGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinhKien]    Script Date: 12/25/2020 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinhKien](
	[maLinhKien] [int] NOT NULL,
	[maLoaiLinhKien] [int] NULL,
	[maNhaCungCap] [int] NULL,
	[maLoaiMay] [int] NULL,
	[tenLinhKien] [nvarchar](50) NULL,
	[thongSoKyThuat] [nvarchar](500) NULL,
	[moTa] [nvarchar](500) NULL,
	[giaBan] [float] NULL,
	[thoiGianBaoHanh] [nvarchar](50) NULL,
 CONSTRAINT [PK_LinhKien] PRIMARY KEY CLUSTERED 
(
	[maLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiLinhKien]    Script Date: 12/25/2020 9:55:07 AM ******/
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
/****** Object:  Table [dbo].[LoaiMay]    Script Date: 12/25/2020 9:55:07 AM ******/
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
/****** Object:  Table [dbo].[NhaCC]    Script Date: 12/25/2020 9:55:07 AM ******/
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
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/25/2020 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[maPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[tongTien] [float] NULL,
	[ngayThang] [date] NULL CONSTRAINT [DF_PhieuNhap_ngayThang]  DEFAULT (getdate()),
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[maPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 12/25/2020 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[maPhieuXuat] [int] IDENTITY(1,1) NOT NULL,
	[tongTien] [float] NULL,
	[ngayThang] [date] NULL CONSTRAINT [DF_PhieuXuat_ngayThang]  DEFAULT (getdate()),
 CONSTRAINT [PK_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[maPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/25/2020 9:55:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userName] [nvarchar](50) NOT NULL CONSTRAINT [DF_Users_userName]  DEFAULT (N'userName.GetHashCode()+passWord.GetHashCode()'),
	[passWord] [nvarchar](50) NOT NULL,
	[chucNang] [nvarchar](50) NULL CONSTRAINT [DF_Users_chucNang]  DEFAULT (N'khachMua'),
	[trangThai] [nvarchar](50) NULL CONSTRAINT [DF_Users_trangThai]  DEFAULT (N'off'),
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Anh] ([img], [maAnh], [maLinhKien]) VALUES (N'anh1', 1, 1)
INSERT [dbo].[Anh] ([img], [maAnh], [maLinhKien]) VALUES (N'anh2', 2, 1)
INSERT [dbo].[Anh] ([img], [maAnh], [maLinhKien]) VALUES (N'anh3', 3, 2)
INSERT [dbo].[DonHang] ([maDonHang], [trangThai], [maGioHang]) VALUES (1, N'được mua hàng', 4)
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([thongtin], [maGioHang], [userName]) VALUES (N'gán xong tài khoản', 4, N'admin')
SET IDENTITY_INSERT [dbo].[GioHang] OFF
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (1, 1, 2, 1, N'bộ vi xử lý i5 9400f', N'Tốc độ xử lý  2.9 - 4.1 GHz9999999999999999999', N'Hàng chính hãng', 1500, N'36 tháng')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (2, 1, 2, 1, N'bộ vi xử lý i3 9100f ', N'Tốc độ xử lý  2.9 - 4.1 GHz', N'Hàng mới fullbox', 1500, N'36 tháng')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (3, 10, 2, 1, N'main h110', N'socket 1151v1', N'Hàng mới full box', 16500, N'36 tháng')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (4, 1, 2, 1, N'main b450', N'Hỗ trợ cho AMD Ryzen ™ thế hệ thứ 2 / Ryzen', N'hàng mới fullbox', 1500, N'36 tháng')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (5, 2, 4, 1, N'ram', N'4gb buss 2400', N'Hàng cũ', 1500, N'36 tháng')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (6, 2, 1, 2, N'ram', N'4gb buss 24444', N'Hàng cũ', NULL, N'6 tháng')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (7, 11, 2, 1, N'SSD', N'read 450mb/s write 500mb/s', N'hàng mới', 1500, N'36 tháng')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (8, 11, 1, 1, N'hdd', N'4gb buss 2400', N'Hàng mới', NULL, N'36 tháng')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (9, 1, 2, 1, N'Nguồn power 450', N'450W', N'Hàng mới bảo hành 3 năm', 1500, N'36 tháng')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (10, 7, 1, 1, N'Vỏ case', N'', N'Hàng mới', 1500, N'6 tháng')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh]) VALUES (11, 8, 2, 1, N'rx570 8gb', N'8bg', N'Hnagf mới ', NULL, N'36 tháng')
SET IDENTITY_INSERT [dbo].[LoaiLinhKien] ON 

INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (1, N'CPU')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (2, N'Ram')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (3, N'Card')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (4, N'Nguồn')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (5, N'Bàn phím')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (6, N'Chuột')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (7, N'Vỏ cây')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (8, N'Màn hình')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (9, N'Dây nối')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (10, N'Main')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (11, N'Ổ cứng')
SET IDENTITY_INSERT [dbo].[LoaiLinhKien] OFF
SET IDENTITY_INSERT [dbo].[LoaiMay] ON 

INSERT [dbo].[LoaiMay] ([maLoaiMay], [tenLoaiMay]) VALUES (1, N'PC')
INSERT [dbo].[LoaiMay] ([maLoaiMay], [tenLoaiMay]) VALUES (2, N'Laptop')
SET IDENTITY_INSERT [dbo].[LoaiMay] OFF
SET IDENTITY_INSERT [dbo].[NhaCC] ON 

INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (1, N'Kingston')
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (2, N'intel')
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (3, N'SamSung')
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (4, N'Hyerx')
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (5, N'KingMax')
SET IDENTITY_INSERT [dbo].[NhaCC] OFF
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (1, 100000, CAST(N'2020-07-04' AS Date))
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (2, 1000000, CAST(N'2020-07-04' AS Date))
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (7, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (8, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (9, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (10, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (12, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (13, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (14, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (15, 11000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [tongTien], [ngayThang]) VALUES (16, 110000, NULL)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[PhieuXuat] ON 

INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [tongTien], [ngayThang]) VALUES (4, 150000, CAST(N'2020-07-04' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [tongTien], [ngayThang]) VALUES (5, 3000, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [tongTien], [ngayThang]) VALUES (6, 4500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [tongTien], [ngayThang]) VALUES (7, 4500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [tongTien], [ngayThang]) VALUES (8, 6000, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [tongTien], [ngayThang]) VALUES (9, 1500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [tongTien], [ngayThang]) VALUES (10, 1500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [tongTien], [ngayThang]) VALUES (11, 1500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [tongTien], [ngayThang]) VALUES (12, 1500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [tongTien], [ngayThang]) VALUES (14, 1500, CAST(N'2020-07-05' AS Date))
SET IDENTITY_INSERT [dbo].[PhieuXuat] OFF
INSERT [dbo].[Users] ([userName], [passWord], [chucNang], [trangThai]) VALUES (N'admin', N'admin', N'admin', N'admin')
INSERT [dbo].[Users] ([userName], [passWord], [chucNang], [trangThai]) VALUES (N'other1', N'other1', N'other', N'logup')
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_soLuong]  DEFAULT ((0)) FOR [soLuong]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_donGia]  DEFAULT ((0)) FOR [donGia]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_ngayThang]  DEFAULT (getdate()) FOR [ngayThang]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_donVi]  DEFAULT (N'vnd') FOR [donVi]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_tongTien]  DEFAULT ((0)) FOR [tongTien]
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD  CONSTRAINT [FK_Anh_LinhKien] FOREIGN KEY([maLinhKien])
REFERENCES [dbo].[LinhKien] ([maLinhKien])
GO
ALTER TABLE [dbo].[Anh] CHECK CONSTRAINT [FK_Anh_LinhKien]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([maDonHang])
REFERENCES [dbo].[DonHang] ([maDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_LinhKien] FOREIGN KEY([maLinhKien])
REFERENCES [dbo].[LinhKien] ([maLinhKien])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_LinhKien]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_LinhKien] FOREIGN KEY([maLinhKien])
REFERENCES [dbo].[LinhKien] ([maLinhKien])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_LinhKien]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([maPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([maPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_LinhKien] FOREIGN KEY([maLinhKien])
REFERENCES [dbo].[LinhKien] ([maLinhKien])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_LinhKien]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_PhieuXuat] FOREIGN KEY([maPhieuXuat])
REFERENCES [dbo].[PhieuXuat] ([maPhieuXuat])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_PhieuXuat]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_GioHang] FOREIGN KEY([maGioHang])
REFERENCES [dbo].[GioHang] ([maGioHang])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_GioHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_Users] FOREIGN KEY([userName])
REFERENCES [dbo].[Users] ([userName])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_Users]
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
