USE [CSDL_KARAOKE]
GO
/****** Object:  Table [dbo].[CHI_TIET_SU_DUNG_DV]    Script Date: 31/03/2024 11:29:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_SU_DUNG_DV](
	[MaDatPhong] [nvarchar](50) NOT NULL,
	[MaDV] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_CHI_TIET_SU_DUNG_DV] PRIMARY KEY CLUSTERED 
(
	[MaDatPhong] ASC,
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DAT_PHONG]    Script Date: 31/03/2024 11:29:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAT_PHONG](
	[MaDatPhong] [nvarchar](50) NOT NULL,
	[MaPhong] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[NgayDat] [date] NOT NULL,
	[GioBatDau] [time](7) NOT NULL,
	[GioKetThuc] [time](7) NOT NULL,
	[TienDatCoc] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TrangThaiDat] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DAT_PHONG1] PRIMARY KEY CLUSTERED 
(
	[MaDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICH_VU_DI_KEM]    Script Date: 31/03/2024 11:29:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICH_VU_DI_KEM](
	[MaDV] [nvarchar](50) NOT NULL,
	[TenDV] [nvarchar](50) NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
	[DonGia] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DICH_VU_DI_KEM] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 31/03/2024 11:29:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SoDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 31/03/2024 11:29:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[MaPhong] [nvarchar](50) NOT NULL,
	[LoaiPhong] [nvarchar](50) NOT NULL,
	[SoKhachToiDa] [int] NOT NULL,
	[GiaPhong] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHONG1] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHI_TIET_SU_DUNG_DV] ([MaDatPhong], [MaDV], [SoLuong]) VALUES (N'DP0001', N'DV0001', 20)
INSERT [dbo].[CHI_TIET_SU_DUNG_DV] ([MaDatPhong], [MaDV], [SoLuong]) VALUES (N'DP0001', N'DV0002', 10)
INSERT [dbo].[CHI_TIET_SU_DUNG_DV] ([MaDatPhong], [MaDV], [SoLuong]) VALUES (N'DP0001', N'DV0003', 3)
INSERT [dbo].[CHI_TIET_SU_DUNG_DV] ([MaDatPhong], [MaDV], [SoLuong]) VALUES (N'DP0002', N'DV0002', 10)
INSERT [dbo].[CHI_TIET_SU_DUNG_DV] ([MaDatPhong], [MaDV], [SoLuong]) VALUES (N'DP0002', N'DV0003', 1)
INSERT [dbo].[CHI_TIET_SU_DUNG_DV] ([MaDatPhong], [MaDV], [SoLuong]) VALUES (N'DP0003', N'DV0003', 2)
INSERT [dbo].[CHI_TIET_SU_DUNG_DV] ([MaDatPhong], [MaDV], [SoLuong]) VALUES (N'DP0003', N'DV0004', 10)
GO
INSERT [dbo].[DAT_PHONG] ([MaDatPhong], [MaPhong], [MaKH], [NgayDat], [GioBatDau], [GioKetThuc], [TienDatCoc], [GhiChu], [TrangThaiDat]) VALUES (N'DP0001', N'P0001', N'KH0002', CAST(N'2018-03-26' AS Date), CAST(N'11:00:00' AS Time), CAST(N'13:30:00' AS Time), N'100,000', NULL, N'Da dat')
INSERT [dbo].[DAT_PHONG] ([MaDatPhong], [MaPhong], [MaKH], [NgayDat], [GioBatDau], [GioKetThuc], [TienDatCoc], [GhiChu], [TrangThaiDat]) VALUES (N'DP0002', N'P0001', N'KH0003', CAST(N'2018-03-27' AS Date), CAST(N'17:15:00' AS Time), CAST(N'19:15:00' AS Time), N'50,000', NULL, N'Da huy')
INSERT [dbo].[DAT_PHONG] ([MaDatPhong], [MaPhong], [MaKH], [NgayDat], [GioBatDau], [GioKetThuc], [TienDatCoc], [GhiChu], [TrangThaiDat]) VALUES (N'DP0003', N'P0002', N'KH0002', CAST(N'2018-03-26' AS Date), CAST(N'20:30:00' AS Time), CAST(N'22:15:00' AS Time), N'100,000', NULL, N'Da dat')
INSERT [dbo].[DAT_PHONG] ([MaDatPhong], [MaPhong], [MaKH], [NgayDat], [GioBatDau], [GioKetThuc], [TienDatCoc], [GhiChu], [TrangThaiDat]) VALUES (N'DP0004', N'P0003', N'KH0001', CAST(N'2018-04-01' AS Date), CAST(N'19:30:00' AS Time), CAST(N'21:15:00' AS Time), N'200,000', N'', N'Da dat')
GO
INSERT [dbo].[DICH_VU_DI_KEM] ([MaDV], [TenDV], [DonViTinh], [DonGia]) VALUES (N'DV0001', N'Beer', N'lon', N'10,000')
INSERT [dbo].[DICH_VU_DI_KEM] ([MaDV], [TenDV], [DonViTinh], [DonGia]) VALUES (N'DV0002', N'Nuoc ngot', N'lon', N'8,000')
INSERT [dbo].[DICH_VU_DI_KEM] ([MaDV], [TenDV], [DonViTinh], [DonGia]) VALUES (N'DV0003', N'Trai cay', N'dia', N'35,000')
INSERT [dbo].[DICH_VU_DI_KEM] ([MaDV], [TenDV], [DonViTinh], [DonGia]) VALUES (N'DV0004', N'Khan uot', N'cai', N'2,000')
GO
INSERT [dbo].[KHACH_HANG] ([MaKH], [TenKH], [DiaChi], [SoDT]) VALUES (N'KH0001', N'Nguyen Van A', N'Hoa xuan', N'1111111111')
INSERT [dbo].[KHACH_HANG] ([MaKH], [TenKH], [DiaChi], [SoDT]) VALUES (N'KH0002', N'Nguyen Van B', N'Hoa hai', N'1111111112')
INSERT [dbo].[KHACH_HANG] ([MaKH], [TenKH], [DiaChi], [SoDT]) VALUES (N'KH0003', N'Phan Van A', N'Cam le', N'1111111113')
INSERT [dbo].[KHACH_HANG] ([MaKH], [TenKH], [DiaChi], [SoDT]) VALUES (N'KH0004', N'Phan Van B', N'Hoa xuan', N'1111111114')
GO
INSERT [dbo].[PHONG] ([MaPhong], [LoaiPhong], [SoKhachToiDa], [GiaPhong], [MoTa]) VALUES (N'P0001', N'Loai 1', 20, N'60,000', NULL)
INSERT [dbo].[PHONG] ([MaPhong], [LoaiPhong], [SoKhachToiDa], [GiaPhong], [MoTa]) VALUES (N'P0002', N'Loai 1', 25, N'80,000', NULL)
INSERT [dbo].[PHONG] ([MaPhong], [LoaiPhong], [SoKhachToiDa], [GiaPhong], [MoTa]) VALUES (N'P0003', N'Loai 2', 15, N'50,000', NULL)
INSERT [dbo].[PHONG] ([MaPhong], [LoaiPhong], [SoKhachToiDa], [GiaPhong], [MoTa]) VALUES (N'P0004', N'Loai 3', 20, N'50,000', NULL)
GO
ALTER TABLE [dbo].[CHI_TIET_SU_DUNG_DV]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_SU_DUNG_DV_DAT_PHONG1] FOREIGN KEY([MaDatPhong])
REFERENCES [dbo].[DAT_PHONG] ([MaDatPhong])
GO
ALTER TABLE [dbo].[CHI_TIET_SU_DUNG_DV] CHECK CONSTRAINT [FK_CHI_TIET_SU_DUNG_DV_DAT_PHONG1]
GO
ALTER TABLE [dbo].[CHI_TIET_SU_DUNG_DV]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_SU_DUNG_DV_DICH_VU_DI_KEM] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DICH_VU_DI_KEM] ([MaDV])
GO
ALTER TABLE [dbo].[CHI_TIET_SU_DUNG_DV] CHECK CONSTRAINT [FK_CHI_TIET_SU_DUNG_DV_DICH_VU_DI_KEM]
GO
ALTER TABLE [dbo].[DAT_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_DAT_PHONG1_KHACH_HANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACH_HANG] ([MaKH])
GO
ALTER TABLE [dbo].[DAT_PHONG] CHECK CONSTRAINT [FK_DAT_PHONG1_KHACH_HANG]
GO
ALTER TABLE [dbo].[DAT_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_DAT_PHONG1_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[DAT_PHONG] CHECK CONSTRAINT [FK_DAT_PHONG1_PHONG]
GO
