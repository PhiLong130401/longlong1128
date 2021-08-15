
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] NOT NULL,
	[MaSanPham] [nvarchar](10) NULL,
	[MaTaiKhoan] [nvarchar](128) NULL,
	[TenTaiKhoan] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](2048) NULL,
	[TinhTrang] [int] NULL,
	[Ngay] [datetime] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaSanPham] [nvarchar](10) NULL,
	[OrderID] [bigint] NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[idGH] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nchar](128) NULL,
	[MaSanPham] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
	[HinhChinh] [varchar](50) NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[idGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[NguoiDat] [nvarchar](128) NULL,
	[NguoiNhan] [nvarchar](50) NULL,
	[SDT] [varchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TongTien] [bigint] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](3) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](3) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinCaNhan]    Script Date: 26/07/2021 10:54:26 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinCaNhan](
	[id] [int] NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[SoDienThoai] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThongTinCaNhan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107150310277_InitialCreate', N'SHOPMOBILE_OL.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3FC0F90F829ECE3948AD5CCE2EB681BD45D649DAE02471B0CE2ECE5B404BB423AC44A912952628FACBFAD09FD4BFD0A144DD78D1C5566CA758606191C36F86C321391C0EF3E7EF7F8C7F78F63DE30947B11B908979343A340D4CECC071C96A622674F9DD07F3878FFFFCC7F8C2F19F8DAF39DD09A38396249E988F9486A79615DB8FD847F1C877ED288883251DD9816F2127B08E0F0FBFB78E8E2C0C10266019C6F87342A8EBE3F4033EA701B1714813E4DD040EF6625E0E35F314D5B8453E8E4364E38939FF69767733FB74757DF130BB1E65F4A671E6B9086499636F691A889080220A929E7E89F19C460159CD432840DEFD4B88816E89BC18F31E9C96E45D3B7378CC3A63950D73283B8969E0F7043C3AE1DAB1C4E66BE9D82CB407FABB003DD317D6EB548713F3CAC169D1E7C00305880C4FA75EC48827E64DC1E22C0E6F311DE50D4719E4650470BF04D1B75115F1C0E8DCEEA0B0A6E3D121FB77604C138F26119E109CD0087907C65DB2F05CFB7FF8E53EF886C9E4E468B13CF9F0EE3D724EDEFF179FBCABF614FA0A74B50228BA8B821047201B5E16FD370DABDECE121B16CD2A6D32AD802DC1C4308D1BF47C8DC98A3EC29439FE601A97EE3376F2126E5C5F880BF3081AD12881CFDBC4F3D0C2C345BDD5C893FDDFC0F5F8DDFB41B8DEA22777950EBDC01F264E04F3EA33F6D2DAF8D10DB3E9551BEF074E7619053EFBAEDB5756FB300F92C8669D09B424F7285A615A976E6C95C6DBC9A419D4F0669DA3EEBF69334965F35692B20EAD33137216DB9E0DB9BCAFCBB7B3C59D85210C5E6A5A4C234D06A7DAAE4642FB03A3A43266D7A5F91C75351F02DDFA3BAF86173E72BD0196C30E5CC01759BA918F8B5E7E0AC0F810E92DF31D8A63580D9C9F50FCD8203AFC1C40F439B693088C744E911FBE3AB7BBC780E0DBC45F30DBDF1EAFC186E6FE97E012D934882E086BB531DE75607F0B127A419C7344F1176AE780ECF3DEF5BB030C22CE996DE338BE0463C6CE3400573B07BC22F4E4B8371C5BA276ED8E4C3DE4FA6A7F44584C1F72D2D2275153487E89864CE59B34897A1DAC5CD24DD49C542F6A46D12A2A27EB2B2A03EB2629A7D40B9A12B4CA99510DE6EDA52334BCBB97C2EEBFBFB7D9E6AD5B0B2A6A9CC30A897FC40447B08C397788521C917204BAAC1BBB7016D2E1634C5F7D6F4A397D455E3234ABB56643BA080C3F1B52D8FD9F0DA99850FCE43ACC2BE97008CA8901BE13BDFA7CD53EE704C9B63D1D6ADDDC36F3EDAC01BAE97216C781EDA6B34011FEE2C18BBAFCE0C319ED918CAC376234043A0686EEB22D0F4AA06FA6685433728E3D4CB1716667E1C1298A6DE4C86A840E393D04CB775485606554A42EDC7F249E60E938628D103B04C530535D42E569E112DB0D91D7AA25A165C72D8CF5BDE021D69CE31013C6B055135D98AB83204C80828F30286D1A1A5B158B6B36448DD7AA1BF33617B61C772936B1159B6CF19D3576C9FDB75731CC668D6DC1389B55D245006D406F1706CACF2A5D0D403CB8EC9B810A27268D8172976A2B065AD7D80E0CB4AE923767A0D911B5EBF80BE7D57D33CFFA4179FBDB7AA3BA76609B357DEC996966BE27B4A1D00247B2799E2F58257EA68AC319C8C9CF67317775451361E0734CEB219BD2DF55FAA156338868444D80A5A1B580F2AB4009489A503D84CB63798DD2712FA2076C1E776B84E56BBF005BB10119BB7A255A21D45F9C8AC6D9E9F451F4ACB006C9C83B1D162A380A831017AF7AC73B284517979515D3C517EEE30D573AC607A341412D9EAB4649796706D7526E9AED5A5239647D5CB28DB424B84F1A2DE59D195C4BDC46DB95A4700A7AB8051BA9A8BE850F34D9F24847B1DB1475632BCB95E205634B935435BE4161E8925525C98A9718F32CC36AFADDBC7FE2919F615876ACC83F2AA42D38D120422B2CD4026B90F4D28D627A8E285A2016E7993ABE44A6DC5B35CB7FCEB2BA7DCA8398EF033935FBCD6F565517F8B5DD56764738CA25F4D1673E4D1A48575880BAB9C1D2DE90872245EC7E1A78894FF42E96BE757683576D9F95C808634B905F72A1247D498E6E5DF99D86469E16830D53E1C3AC3F547A089DC2730FB4AA729D57AA47C9835455145DE06A6743A773667A0E97E829F61FAD5684D7995B3C3DA50AC08B7A6254321C24B04A5D77D47A124A15B35ED31D51C834A9420A553DA4ACE693D484AC56AC85A7D1A89AA23B073983A48A2ED7764756E49254A115D56B602B6416EBBAA32AD24DAAC08AEAEED865EE89B88CEEF1EEA53DBF6CB07D6587DCCDF62F0DC6EBAC89C36C7F95BBFC2A50A5B82716BFAD97C078F95EDA93F6A4B7813D65D18DCDEC4983A15F7D6AF7E0F5C5A7F1F25E8F59BBDCAE2DF04D97FB7ABC7E56FBAAB6211DF54492827B71E4138E76637ECC6A7F54239DBB3212D3C8D50816F51253EC8F18C168FEB337F55CCC96F29CE006117789639A257498C78747C7C2AB9CFD792163C5B1E3298EA9BA6732F531DB426E16794291FD882239536283572425A81484BE220E7E9E98BFA6AD4ED37806FB95161F1857F117E2FE9C40C57D9460E33739F37398ACFA0EEF380A417F7B130F24BAABFCEAFF0F59D3036316C1743A350E0545AF33FCF56713BDA4C99A6E20CDDA8F29DEEE6CABBD5250A20AB365FD47090B970EF2202197F25F3E7AFE775FD1948F0E3642543C2C180A6F1015EA1E0EAC83A57D34E0C0274D1F0DF4EBACFA11C13AA2691F10B8A43F98F87CA0FB3294B7DCE13EA438326D63494AF5DC9A7EBD512EE6AEF726294B7BA3892E6762F7801B34DB7A3317E58D65310FB6752A929407C3DEA5DDBF7A66F2BE2423974EFB6E7390B79976DC70ADF4B7CA36DE83FC3845BECFEE738AB76D6BBA18F09E2766F6CB1CDE3363E3DBFCEEF383B76D6CBA00F19E1B5BAF2CE03DB3B55DED9F3BB6B4CE5BE8CE737AE5F424CD5D8E2A8ADC96B39B85DCE1F8BF08C008328F327B6AA94E126B4A706D615892E899EAB3D344C6D2C491F84A14CD6CFBF5956FF88D9DE534CD6C35399D4DBCF9FADFC89BD334F3D6644AEE22DB5899ABA8CA006F59C79A92A8DE527671AD272DC9EC6D3E6BE3C5FC5B4A261E4429B5D9A3B95D7E3BB9C383A864C8A9D3235758BE2886BDB3F2371A61FF8EDD5509C1FE6223C1766DD72C68AEC832C8376F41A29C4488D0DC608A1CD852CF22EA2E914DA19A05A0D3B7E269508F5D832CB0734566090D130A5DC6FEC2AB05BC9813D0C43F4D88AECB3C9E85EC2B1EA20B20A6CB02F733F229713DA790FB521113D24030EF82877BD9585216F65DBD1448B701E908C4D5573845F7D80F3D008B67648E9EF03AB281F95DE315B25FCA08A00EA47D20EA6A1F9FBB6815213FE618657BF8041B76FCE78F7F01B1CCBEF6AA540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a4530940-7bcf-44b2-8922-9259fe57c094', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7f4cb9eb-619a-4aa1-aa6e-cde27cf30e33', N'a4530940-7bcf-44b2-8922-9259fe57c094')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'68ed3eb3-7597-4a7b-b219-d8dbb6bec4fb', N'longhoang1128@gmail.com', 0, N'ALIIShFP7pDXw3jTGeGYrjQ4hz3jr4fVV/ZWUilrO6XYidVbr5upsQkscOpiZYRinQ==', N'91cb0f4e-2025-485d-9a3c-bc16f64c3635', NULL, 0, 0, NULL, 1, 0, N'longhoang1128@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7f4cb9eb-619a-4aa1-aa6e-cde27cf30e33', N'Admin@gmail.com', 0, N'ADglXjf0Vw1j/17JpJjRqkM2l5CjbpMwgW4oYalUDkQvr12js7fwlCgdjK62tU4P1A==', N'dc042f95-00d6-4cdb-8308-cdac9e19561e', NULL, 0, 0, NULL, 0, 0, N'Admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7fd62d23-3853-44ea-aed6-5a133e1ea380', N'longhoang.130401@gmail.com', 0, N'AB6JMjq8/UmTrj2qJx0Wusto83dx3ZjxQpCv57xQA3UGBhP8jOkj1J/xbE/48DgM/Q==', N'a8e4d3f9-9b22-4b49-97be-2d1141d63f94', NULL, 0, 0, NULL, 1, 0, N'longhoang.130401@gmail.com')
GO
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP07', 0, N'SamSung 12', 1, 3750000, 3750000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP11', 0, N'Oppo R5', 1, 10190000, 10190000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP03', 1, N'Iphone 8', 1, 5920000, 5920000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP02', 2, N'Iphone 6s', 2, 3550000, 7100000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP04', 3, N'Iphone 12', 2, 18800000, 37600000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP06', 4, N'SamSung Z', 1, 46500000, 46500000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP09', 5, N'Oppo X3', 1, 23990000, 23990000)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai]) VALUES (1, CAST(N'2021-07-25T15:43:31.607' AS DateTime), N'7f4cb9eb-619a-4aa1-aa6e-cde27cf30e33', N'longlong', N'0333911508', N'binhphuoc', 5920000, 0)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai]) VALUES (2, CAST(N'2021-07-25T15:46:15.237' AS DateTime), N'7f4cb9eb-619a-4aa1-aa6e-cde27cf30e33', N'culong', N'0293283234', N'123546hjghjkgh', 7100000, 0)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai]) VALUES (3, CAST(N'2021-07-25T15:48:14.787' AS DateTime), N'7f4cb9eb-619a-4aa1-aa6e-cde27cf30e33', N'philong', N'12334445', N'098765fegre', 37600000, 0)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai]) VALUES (4, CAST(N'2021-07-25T15:49:12.770' AS DateTime), N'7f4cb9eb-619a-4aa1-aa6e-cde27cf30e33', N'hoang phi long', N'0333911508', N'đội 6 ấp suối đôi xã đồng tiến huyện đồng phú tỉnh', 46500000, 0)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai]) VALUES (5, CAST(N'2021-07-25T23:07:02.000' AS DateTime), N'7f4cb9eb-619a-4aa1-aa6e-cde27cf30e33', N'phi', N'0333911508', N'binhphuoc', 23990000, 0)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP01', N'Cao Cấp', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP02', N'Trung Bình', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP03', N'Sang Trọng', N'0')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX01', N'Iphone', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX02', N'SamSung', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX03', N'Oppo', N'0')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'123', N'LSP02', N'NSX01', N'lllll', N'<p>432343</p>
', N'123.png', N'123_1.png', N'123_2.png', N'123_3.png', N'123_4.png', 1432432, 0, 0, N'1         ', N'new')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP01', N'LSP01', N'NSX01', N'Iphone 7 ', N'<p>Phần cứng b&ecirc;n trong được n&acirc;ng cấp mạnh mẽ,&nbsp;<br />
- với CPU Apple A10 Fusion 16 nm (4 nhấn 2.34 GHz).&nbsp;<br />
- iPhone 7 c&oacute; 2GB RAM, trong khi iPhone 7 Plus sở hữu 3GB RAM. ...&nbsp;<br />
- iPhone 7 c&oacute; pin 1960 mAh, 7 Plus c&oacute; pin 2900mAh.&nbsp;<br />
- Bộ đ&ocirc;i c&oacute; camera selfie 7 MP, f/2.2, 32mm HDR, hỗ trợ quay video 1080p@30fps.<br />
- M&aacute;y ảnh sau: 7: Sony Exmor RS 12 MP thế hệ ...<br />
- CPU: 2.34 GHz 64-bit 4 nh&acirc;n Apple A10 Fusion ...<br />
- K&iacute;ch thước: 7: 138,3 mm (5,44 in) H; 67,1 mm ...<br />
- SoC: Apple A10 Fusion</p>
', N'SP01.png', N'SP01_1.png', N'SP01_2.png', N'SP01_3.png', N'SP01_4.png', 6920000, 0, 10001, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP02', N'LSP02', N'NSX01', N'Iphone 6s', N'<p>Th&ocirc;ng số kỹ thuật iPhone 6s 64GB (Cũ 99%)<br />
- M&agrave;n h&igrave;nh: LED-backlit IPS LCD, 4.7&quot;, Retina HD.<br />
- Camera trước: 5 MP.<br />
- Camera sau: 12 MP.<br />
- Chipset: Apple A9 2 nh&acirc;n 64-bit.<br />
- RAM: 2 GB.<br />
- Bộ nhớ trong: 64 GB.<br />
- Thẻ Sim: 1 Nano SIM.<br />
- Dung lượng pin: 1715 mAh.</p>
', N'SP02.png', N'SP02_1.png', N'SP02_2.png', N'SP02_3.png', N'SP02_4.png', 3550000, 0, 10, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP03', N'LSP01', N'NSX01', N'Iphone 8', N'<p>M&agrave;n h&igrave;nh:LED-backlit IPS LCD5.5&quot;Retina HD<br />
- Hệ điều h&agrave;nh:iOS 13<br />
- Camera sau:2 camera 12 MP<br />
- Camera trước:7 MP<br />
- Chip:Apple A11 Bionic<br />
- RAM:3 GB<br />
- Bộ nhớ trong:256 GB<br />
- SIM:1 Nano SIMHỗ trợ 4G<br />
- Pin, Sạc:2691 mAh</p>
', N'SP03.png', N'SP03_1.png', N'SP03_2.png', N'SP03_3.png', N'SP03_4.png', 5920000, 0, 8, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP04', N'LSP03', N'NSX01', N'Iphone 12', N'<p>Cấu h&igrave;nh iPhone 12<br />
- Chip A14 Bionic.<br />
- RAM: 4GB.<br />
- Bộ nhớ 64GB/128GB/256GB.<br />
- M&agrave;n h&igrave;nh 6.1 inch Super Retina XDR OLED (2532 x 1170 ở mật độ điểm ảnh 476ppi),&nbsp;<br />
- tỉ lệ tương phản 2,000,000:1, độ s&aacute;ng 625/1,200 nit, True Tone.</p>
', N'SP04.png', N'SP04_1.png', N'SP04_2.png', N'SP04_3.png', N'SP04_4.png', 18800000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP05', N'LSP01', N'NSX02', N'SamSung s21', N'<p>- K&iacute;ch thước m&agrave;n h&igrave;nh:6.8 inches<br />
- C&ocirc;ng nghệ m&agrave;n h&igrave;nh:Dynamic AMOLED<br />
- Camera sau&nbsp;&nbsp; &nbsp;<br />
- Ống k&iacute;nh ch&iacute;nh g&oacute;c rộng: 108MP, f/1.8<br />
- Ống k&iacute;nh zoom tiềm vọng: 10MP, zoom quang 10x<br />
- Cảm biến tele: 10MP, zoom quang 3x<br />
- Cảm biến si&ecirc;u rộng: 12MP, f/2.2<br />
- Cảm biến Laser AF<br />
- Camera trước&nbsp;&nbsp; &nbsp;40 MP, f/2.2<br />
- Chipset&nbsp;&nbsp; &nbsp;Exynos 2100 8 nh&acirc;n<br />
- Dung lượng RAM&nbsp;&nbsp; &nbsp;12 GB<br />
- Bộ nhớ trong&nbsp;&nbsp; &nbsp;128 GB<br />
Pin: Dung lượng pin 5,000mAh<br />
- Sạc nhanh c&oacute; d&acirc;y 25W<br />
- Sạc nhanh kh&ocirc;ng d&acirc;y 15W<br />
Hệ điều h&agrave;nh&nbsp;&nbsp; &nbsp;Android 11, One UI 3.0</p>
', N'SP05.png', N'SP05_1.png', N'SP05_2.png', N'SP05_3.png', N'SP05_4.png', 25000000, 0, 100002, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP06', N'LSP03', N'NSX02', N'SamSung Z', N'<p>Th&ocirc;ng số kỹ thuật<br />
- K&iacute;ch thước m&agrave;n h&igrave;nh&nbsp;&nbsp; &nbsp;Ch&iacute;nh: 7.6 inches &amp; Phụ: 6.23 inches<br />
- Camera sau:Camera ch&iacute;nh: 12 MP<br />
Camera ra tele: 12 MP<br />
Camera g&oacute;c si&ecirc;u rộng: 12 MP, f/2.2, 123˚, 12mm (ultrawide), 1.12&micro;m<br />
Camera trước:Camera ch&iacute;nh: 10 MP, f/2.2, 26mm (wide), 1.22&micro;m<br />
Camera phụ: 10 MP, f/2.2, 26mm (wide), 1.22&micro;m<br />
Chipset&nbsp;&nbsp; &nbsp;Qualcomm SM8250 Snapdragon 865+ (7 nm+)<br />
Dung lượng RAM:12 GB<br />
Bộ nhớ trong:256 GB<br />
Pin:Li-Po: 4500 mAh<br />
Sạc nhanh 25W<br />
Sạc nhanh kh&ocirc;ng d&acirc;y 11W<br />
Sạc ngược 5.4W<br />
Thẻ SIM&nbsp;&nbsp; &nbsp;Nano-SIM<br />
Hệ điều h&agrave;nh:Android 10, One UI 2.5<br />
Độ ph&acirc;n giải m&agrave;n h&igrave;nh&nbsp;&nbsp; &nbsp;Ch&iacute;nh: 1768 x 2208 pixels &amp; Phụ: 816 x 2260 pixels</p>
', N'SP06.png', N'SP06_1.png', N'SP06_2.png', N'SP06_3.png', N'SP06_4.png', 46500000, 0, 6, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP07', N'LSP02', N'NSX02', N'SamSung 12', N'<p>Th&ocirc;ng số kỹ thuật<br />
-K&iacute;ch thước m&agrave;n h&igrave;nh:6.5 inches<br />
-C&ocirc;ng nghệ m&agrave;n h&igrave;nh:TFT LCD<br />
-Camera sau:Camera g&oacute;c rộng: 48 MP, f/2.0, 26mm, AF<br />
-Camera g&oacute;c si&ecirc;u rộng: 5 MP, f/2.2, 123˚<br />
-Camera chụp cận cảnh: 2 MP, f/2.4<br />
-Camera x&oacute;a ph&ocirc;ng: 2 MP, f/2.4<br />
-Camera trước:8 MP, f/2.2<br />
-Chipset&nbsp;&nbsp; &nbsp;Helio G35<br />
-Dung lượng RAM:4 GB<br />
-Bộ nhớ trong:128 GB<br />
-Pin:Li-Po 5000 mAh, sạc nhanh 15W<br />
-Thẻ SIM&nbsp;&nbsp; &nbsp;2 SIM (Nano-SIM)<br />
-Hệ điều h&agrave;nh:Android 10</p>
', N'SP07.png', N'SP07_1.png', N'SP07_2.png', N'SP07_3.png', N'SP07_4.png', 3750000, 0, 150011, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP08', N'LSP01', N'NSX02', N'SamSung A72', N'<p>Th&ocirc;ng số kỹ thuật<br />
-K&iacute;ch thước m&agrave;n h&igrave;nh:6.7 inches<br />
-C&ocirc;ng nghệ m&agrave;n h&igrave;nh:Super AMOLED<br />
-Camera sau:Camera g&oacute;c rộng: 64 MP, f/1.8, 26mm (wide), PDAF, OIS<br />
-Camera tele: 8 MP, f/2.4, (telephoto), PDAF, OIS, Zoom quang 3X<br />
-Camera g&oacute;c si&ecirc;u rộng: 12 MP, f/2.2, 123˚<br />
-Camere macro: 5 MP, f/2.4<br />
-Camera trước:32 MP, f/2.2, 26mm (wide), 1/2.8&quot;, 0.8&micro;m<br />
-Chipset:Snapdragon 720G (8 nm)<br />
-Dung lượng RAM:8 GB<br />
-Bộ nhớ trong:256 GB<br />
-Pin:Li-Ion 5000 mAh<br />
-Thẻ SIM&nbsp;&nbsp; &nbsp;2 SIM (Nano-SIM)<br />
-Hệ điều h&agrave;nh:Android 11, One UI 3.0</p>
', N'SP08.png', N'SP08_1.png', N'SP08_2.png', N'SP08_3.png', N'SP08_4.png', 10150000, 0, 5, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP09', N'LSP03', N'NSX03', N'Oppo X3', N'<p>Th&ocirc;ng số kỹ thuật<br />
-K&iacute;ch thước m&agrave;n h&igrave;nh:6.7 inches<br />
-C&ocirc;ng nghệ m&agrave;n h&igrave;nh:AMOLED<br />
-Camera sau:Camera ch&iacute;nh: 50 MP, f/1.8, 1/1.56&quot;, 1.0&micro;m, PDAF, OIS<br />
-Camera tele: 13 MP, f/2.4, 52mm PDAF, zoom quang 5x<br />
-Camera g&oacute;c rộng: 50 MP, f/2.2, 110˚, 1/1.56&quot;, 1.0&micro;m, omnidirectional PDAF<br />
-Camera macro: 3 MP, f/3.0<br />
-Camera trước:32 MP, f/2.4, 26mm (wide), 1/2.8&quot;, 0.8&micro;m<br />
-Chipset&nbsp;&nbsp; &nbsp;Snapdragon 888 (5 nm)<br />
-Dung lượng RAM:12 GB<br />
-Bộ nhớ trong:256 GB<br />
-Pin:4500mAh<br />
-Thẻ SIM&nbsp;&nbsp; &nbsp;2 SIM (Nano-SIM)<br />
-Hệ điều h&agrave;nh:ColorOS 11.2, nền tảng Android 11</p>
', N'SP09.png', N'SP09_1.png', N'SP09_2.png', N'SP09_3.png', N'SP09_4.png', 23990000, 0, 6, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP10', N'LSP02', N'NSX03', N'Oppo A93', N'<p>Th&ocirc;ng số kỹ thuật<br />
-K&iacute;ch thước m&agrave;n h&igrave;nh:6.43 inches<br />
-C&ocirc;ng nghệ m&agrave;n h&igrave;nh:Super AMOLED<br />
-Camera sau:48 MP, f/1.8, 26mm (wide), 1/2.0&quot;, 0.8&micro;m, PDAF<br />
8 MP, f/2.2, 119˚ (ultrawide), 1/4.0&quot;, 1.12&micro;m<br />
2 MP, f/2.4, (depth)<br />
2 MP, f/2.4, (depth)<br />
-Camera trước&nbsp;&nbsp; &nbsp;16 MP, f/2.4, (wide), 1/3&quot;, 1.0&micro;m<br />
2 MP, f/2.4, (depth)<br />
-Chipset&nbsp;&nbsp; &nbsp;Mediatek Helio P95 (12 nm)<br />
-Dung lượng RAM:8 GB<br />
-Bộ nhớ trong:128 GB<br />
-Pin:4000mAh<br />
-Sạc si&ecirc;u nhanh 18W<br />
-Thẻ SIM&nbsp;&nbsp; &nbsp;2 SIM (Nano-SIM)<br />
-Hệ điều h&agrave;nh:Android 10, ColorOS 7.2</p>
', N'SP10.png', N'SP10_1.png', N'SP10_2.png', N'SP10_3.png', N'SP10_4.png', 5690000, 0, 4, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP11', N'LSP01', N'NSX03', N'Oppo R5', N'<p>Th&ocirc;ng số kỹ thuật<br />
-K&iacute;ch thước m&agrave;n h&igrave;nh:6.43 inches<br />
-C&ocirc;ng nghệ m&agrave;n h&igrave;nh:AMOLED<br />
-Camera sau:64 MP + 8 MP + 2 MP + 2 MP<br />
-Camera trước:32 MP, F/2.4<br />
-Chipset&nbsp;&nbsp; &nbsp;Qualcomm SM7250 Snapdragon 765G (7 nm)<br />
-Dung lượng RAM:8 GB<br />
-Bộ nhớ trong:128 GB<br />
-Pin:4300mAh (Typ), Sạc si&ecirc;u nhanh<br />
-Thẻ SIM&nbsp;&nbsp; &nbsp;2 SIM (Nano-SIM)<br />
-Hệ điều h&agrave;nh:ColorOS 11.1, Nền tảng Android 11</p>
', N'SP11.png', N'SP11_1.png', N'SP11_2.png', N'SP11_3.png', N'SP11_4.png', 10190000, 0, 42245, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP12', N'LSP01', N'NSX03', N'Oppo A94', N'<p>Th&ocirc;ng số kỹ thuật<br />
-K&iacute;ch thước m&agrave;n h&igrave;nh:6.43 inches<br />
-C&ocirc;ng nghệ m&agrave;n h&igrave;nh:AMOLED<br />
Camera sau:Camera ch&iacute;nh g&oacute;c rộng 48 MP (F/1.7)<br />
Camera g&oacute;c si&ecirc;u rộng 8 MP (F/2.2)<br />
Camera macro 2 MP (F/2.4)<br />
Camera đơn sắc 2 MP (F/2.4)<br />
-Camera trước:32 MP<br />
-Khẩu độ:F/2.4<br />
-Chipset:Helio P95, tối đa 2.2GHz<br />
-Dung lượng RAM:8 GB<br />
-Bộ nhớ trong:128 GB<br />
-Pin:Li-Po 4310mAh<br />
-Thẻ SIM2 SIM (Nano-SIM)<br />
-Hệ điều h&agrave;nh:ColorOS 11.1, nền tảng Android 11</p>
', N'SP12.png', N'SP12_1.png', N'SP12_2.png', N'SP12_3.png', N'SP12_4.png', 6190000, 0, 0, N'0         ', N'New')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 26/07/2021 10:54:26 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 26/07/2021 10:54:26 SA ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 26/07/2021 10:54:26 SA ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 26/07/2021 10:54:26 SA ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 26/07/2021 10:54:26 SA ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 26/07/2021 10:54:26 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BinhLuan] ADD  CONSTRAINT [DF_BinhLuan_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  CONSTRAINT [DF_ChiTietHoaDon_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[LoaiSanPham] ADD  CONSTRAINT [DF_LoaiSanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[NhaSanXuat] ADD  CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_GhiChu]  DEFAULT (N'New') FOR [GhiChu]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO

