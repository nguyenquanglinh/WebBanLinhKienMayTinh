USE [BanLinhKienMayTinh]
GO
/****** Object:  Table [dbo].[LinhKien]    Script Date: 6/18/2020 7:17:04 AM ******/
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
	[thongSoKyThuat] [nvarchar](50) NULL,
	[moTa] [nvarchar](50) NULL,
	[giaBan] [float] NULL,
	[thoiGianBaoHanh] [nvarchar](50) NULL,
	[img] [nvarchar](50) NULL,
 CONSTRAINT [PK_LinhKien] PRIMARY KEY CLUSTERED 
(
	[maLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiLinhKien]    Script Date: 6/18/2020 7:17:04 AM ******/
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
/****** Object:  Table [dbo].[LoaiMay]    Script Date: 6/18/2020 7:17:04 AM ******/
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
/****** Object:  Table [dbo].[NhaCC]    Script Date: 6/18/2020 7:17:04 AM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 6/18/2020 7:17:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userName] [nvarchar](50) NOT NULL,
	[passWord] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userName] ASC,
	[passWord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[LinhKien] ON 

INSERT [dbo].[LinhKien] ([maLinhKien], [maLoaiLinhKien], [maNhaCungCap], [maLoaiMay], [tenLinhKien], [thongSoKyThuat], [moTa], [giaBan], [thoiGianBaoHanh], [img]) VALUES (3, 2, 1, 1, N'ram', N'4gb buss 2400', N'ram cũ', NULL, N'6 tháng', N'ram.jpg')
SET IDENTITY_INSERT [dbo].[LinhKien] OFF
SET IDENTITY_INSERT [dbo].[LoaiLinhKien] ON 

INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (1, N'CPU')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (2, N'Ram')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (3, N'Main')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (4, N'Power')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (5, N'Screen')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (6, N'Keyboarch')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (7, N'Mouse')
INSERT [dbo].[LoaiLinhKien] ([maLoai], [tenLoai]) VALUES (8, N'Bark')
SET IDENTITY_INSERT [dbo].[LoaiLinhKien] OFF
SET IDENTITY_INSERT [dbo].[LoaiMay] ON 

INSERT [dbo].[LoaiMay] ([maLoaiMay], [tenLoaiMay]) VALUES (1, N'Laptop')
INSERT [dbo].[LoaiMay] ([maLoaiMay], [tenLoaiMay]) VALUES (2, N'PC')
SET IDENTITY_INSERT [dbo].[LoaiMay] OFF
SET IDENTITY_INSERT [dbo].[NhaCC] ON 

INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (1, N'Kingston')
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (2, N'SamSung')
INSERT [dbo].[NhaCC] ([maNCC], [tenNhaCungCap]) VALUES (3, N'Intel')
SET IDENTITY_INSERT [dbo].[NhaCC] OFF
INSERT [dbo].[Users] ([userName], [passWord], [fullName]) VALUES (N'admin', N'admin', N'admin')
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
