USE [BanLinhKienMayTinh]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 7/5/2020 3:23:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[maLinhKien] [int] NULL,
	[thongtin] [nvarchar](50) NULL CONSTRAINT [DF_GioHang_thongtin]  DEFAULT (getdate()),
	[maGioHang] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_GioHang_1] PRIMARY KEY CLUSTERED 
(
	[maGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinhKien]    Script Date: 7/5/2020 3:23:53 AM ******/
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
/****** Object:  Table [dbo].[LoaiLinhKien]    Script Date: 7/5/2020 3:23:53 AM ******/
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
/****** Object:  Table [dbo].[LoaiMay]    Script Date: 7/5/2020 3:23:53 AM ******/
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
/****** Object:  Table [dbo].[NhaCC]    Script Date: 7/5/2020 3:23:53 AM ******/
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
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 7/5/2020 3:23:53 AM ******/
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
	[ngayThang] [date] NULL CONSTRAINT [DF_PhieuNhap_ngayThang]  DEFAULT (getdate()),
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[maPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 7/5/2020 3:23:53 AM ******/
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
	[ngayThang] [date] NULL CONSTRAINT [DF_PhieuXuat_ngayThang]  DEFAULT (getdate()),
 CONSTRAINT [PK_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[maPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/5/2020 3:23:53 AM ******/
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
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userName] ASC,
	[passWord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([maLinhKien], [thongtin], [maGioHang]) VALUES (NULL, N'gán xong tài khoản', 4)
INSERT [dbo].[GioHang] ([maLinhKien], [thongtin], [maGioHang]) VALUES (NULL, N'gán xong tài khoản', 5)
INSERT [dbo].[GioHang] ([maLinhKien], [thongtin], [maGioHang]) VALUES (NULL, N'gán xong tài khoản', 6)
INSERT [dbo].[GioHang] ([maLinhKien], [thongtin], [maGioHang]) VALUES (NULL, N'gán xong tài khoản', 7)
INSERT [dbo].[GioHang] ([maLinhKien], [thongtin], [maGioHang]) VALUES (NULL, N'gán xong tài khoản', 8)
INSERT [dbo].[GioHang] ([maLinhKien], [thongtin], [maGioHang]) VALUES (NULL, N'gán xong tài khoản', 9)
INSERT [dbo].[GioHang] ([maLinhKien], [thongtin], [maGioHang]) VALUES (NULL, N'gán xong tài khoản', 10)
INSERT [dbo].[GioHang] ([maLinhKien], [thongtin], [maGioHang]) VALUES (NULL, N'gán xong tài khoản', 11)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
SET IDENTITY_INSERT [dbo].[LinhKien] ON 

INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (1, 1, 2, 1, N'bộ vi xử lý i5 9400f', N'Tốc độ xử lý  2.9 - 4.1 GHz', N'Hàng chính hãng', 1500, N'36 tháng', N'i59400f.png')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (2, 1, 2, 1, N'bộ vi xử lý i3 9100f ', N'Tốc độ xử lý  2.9 - 4.1 GHz', N'Hàng mới fullbox', 1500, N'36 tháng', N'cpu.jpg')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (3, 10, 2, 1, N'main h110', N'socket 1151v1', N'Hàng mới full box', 1500, N'36 tháng', N'main.jpg')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (4, 1, 2, 1, N'main b450', N'Hỗ trợ cho AMD Ryzen ™ thế hệ thứ 2 / Ryzen', N'hàng mới fullbox', 1500, N'36 tháng', N'mainb450.jpg')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (5, 2, 4, 1, N'ram', N'4gb buss 2400', N'Hàng cũ', 1500, N'36 tháng', N'ram.jpg')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (6, 2, 1, 2, N'ram', N'4gb buss 24444', N'Hàng cũ', NULL, N'6 tháng', N'ram.jpg')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (7, 11, 2, 1, N'SSD', N'read 450mb/s write 500mb/s', N'hàng mới', 1500, N'36 tháng', N'ssd.jpg')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (8, 11, 1, 1, N'hdd', N'4gb buss 2400', N'Hàng mới', NULL, N'36 tháng', N'hdd.jpg')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (9, 1, 2, 1, N'Nguồn power 450', N'450W', N'Hàng mới bảo hành 3 năm', 1500, N'36 tháng', N'nguon.jpg')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (10, 7, 1, 1, N'Vỏ case', N'', N'Hàng mới', 1500, N'6 tháng', N'vỏ case.png')
INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (11, 8, 2, 1, N'rx570 8gb', N'8bg', N'Hnagf mới ', NULL, N'36 tháng', N'rx570.jpg')
SET IDENTITY_INSERT [dbo].[LinhKien] OFF
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

INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (1, 1, 10, 10000, 100000, CAST(N'2020-07-04' AS Date))
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (2, 2, 10, 100000, 1000000, CAST(N'2020-07-04' AS Date))
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (7, 1, 10, 1000, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (8, 2, 10, 1000, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (9, 3, 10, 1000, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (10, 4, 10, 1000, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (12, 7, 10, 1000, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (13, 9, 10, 1000, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (14, 10, 10, 1000, 10000, NULL)
INSERT [dbo].[PhieuNhap] ([maPhieuNhap], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (15, 9, 10, 1000, 10000, NULL)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[PhieuXuat] ON 

INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (2, 2, 2, 1500, 150000, CAST(N'2020-07-04' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (4, 2, 2, 1500, 150000, CAST(N'2020-07-04' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (5, 1, 2, 1500, 3000, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (6, 1, 3, 1500, 4500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (7, 2, 3, 1500, 4500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (8, 3, 4, 1500, 6000, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (9, 2, 1, 1500, 1500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (10, 4, 1, 1500, 1500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (11, 4, 1, 1500, 1500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (12, 5, 1, 1500, 1500, CAST(N'2020-07-05' AS Date))
INSERT [dbo].[PhieuXuat] ([maPhieuXuat], [maLinhKien], [soLuong], [donGia], [tongTien], [ngayThang]) VALUES (14, 2, 1, 1500, 1500, CAST(N'2020-07-05' AS Date))
SET IDENTITY_INSERT [dbo].[PhieuXuat] OFF
INSERT [dbo].[Users] ([userName], [passWord], [chucNang], [trangThai], [maGioHang]) VALUES (N'admin', N'admin', N'admin', N'admin', 10)
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
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_GioHang] FOREIGN KEY([maGioHang])
REFERENCES [dbo].[GioHang] ([maGioHang])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_GioHang]
GO
