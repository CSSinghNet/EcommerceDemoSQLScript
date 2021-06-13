USE [ECommerceDemo]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/14/2021 12:06:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProdCatId] [int] NOT NULL,
	[ProdName] [varchar](250) NOT NULL,
	[ProdDescription] [varchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttribute]    Script Date: 6/14/2021 12:06:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttribute](
	[ProductId] [bigint] NOT NULL,
	[AttributeId] [int] NOT NULL,
	[AttributeValue] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttributeLookup]    Script Date: 6/14/2021 12:06:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributeLookup](
	[AttributeId] [int] IDENTITY(1,1) NOT NULL,
	[ProdCatId] [int] NOT NULL,
	[AttributeName] [varchar](250) NOT NULL,
 CONSTRAINT [PK_ProductAttributeLookup] PRIMARY KEY CLUSTERED 
(
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 6/14/2021 12:06:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProdCatId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](250) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProdCatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (1, 1, N'BMW', N'BMW CAR')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (2, 1, N'Hyundai', N'Hyundai')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (3, 2, N'Vivo', N'Vivo Mobile')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (4, 2, N'Oppo', N'Oppo Mobile')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (5, 2, N'MI', N'MI Mobile')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (6, 2, N'MI', N'MI Mobile')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (7, 2, N'MI', N'MI Mobile')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (8, 1, N'Hyundai SuV', N'Hyundai')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (9, 1, N'Hyundai i20', N'Hyundai')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (10, 1, N'Hyundai Creta', N'This is Hyundai Creta')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (11, 2, N'Samsung', N'Samsung Mobile')
INSERT [dbo].[Product] ([ProductId], [ProdCatId], [ProdName], [ProdDescription]) VALUES (12, 2, N'Realone', N'this is realone')
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (1, 1, N'Red')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (1, 2, N'2020')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (1, 3, N'X6')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (2, 1, N'Red')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (2, 2, N'2020')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (2, 3, N'ZS')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (7, 4, N'12 GB')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (8, 1, N'Red')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (9, 2, N'2020')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (10, 1, N'Red')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (11, 5, N'10 mp')
INSERT [dbo].[ProductAttribute] ([ProductId], [AttributeId], [AttributeValue]) VALUES (12, 4, N'20gb')
SET IDENTITY_INSERT [dbo].[ProductAttributeLookup] ON 

INSERT [dbo].[ProductAttributeLookup] ([AttributeId], [ProdCatId], [AttributeName]) VALUES (1, 1, N'Color')
INSERT [dbo].[ProductAttributeLookup] ([AttributeId], [ProdCatId], [AttributeName]) VALUES (2, 1, N'Make')
INSERT [dbo].[ProductAttributeLookup] ([AttributeId], [ProdCatId], [AttributeName]) VALUES (3, 1, N'Model')
INSERT [dbo].[ProductAttributeLookup] ([AttributeId], [ProdCatId], [AttributeName]) VALUES (4, 2, N'RAM')
INSERT [dbo].[ProductAttributeLookup] ([AttributeId], [ProdCatId], [AttributeName]) VALUES (5, 2, N'Front Camera')
INSERT [dbo].[ProductAttributeLookup] ([AttributeId], [ProdCatId], [AttributeName]) VALUES (6, 2, N'Rear Camera')
SET IDENTITY_INSERT [dbo].[ProductAttributeLookup] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ProdCatId], [CategoryName]) VALUES (1, N'Car')
INSERT [dbo].[ProductCategory] ([ProdCatId], [CategoryName]) VALUES (2, N'Mobile')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProdCatId])
REFERENCES [dbo].[ProductCategory] ([ProdCatId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[ProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttribute_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ProductAttribute] CHECK CONSTRAINT [FK_ProductAttribute_Product]
GO
ALTER TABLE [dbo].[ProductAttribute]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttribute_ProductAttributeLookup] FOREIGN KEY([AttributeId])
REFERENCES [dbo].[ProductAttributeLookup] ([AttributeId])
GO
ALTER TABLE [dbo].[ProductAttribute] CHECK CONSTRAINT [FK_ProductAttribute_ProductAttributeLookup]
GO
ALTER TABLE [dbo].[ProductAttributeLookup]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributeLookup_ProductCategory] FOREIGN KEY([ProdCatId])
REFERENCES [dbo].[ProductCategory] ([ProdCatId])
GO
ALTER TABLE [dbo].[ProductAttributeLookup] CHECK CONSTRAINT [FK_ProductAttributeLookup_ProductCategory]
GO
