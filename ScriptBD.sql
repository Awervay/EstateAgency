USE [VinidiktovDay1]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 22.03.2024 11:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[ID_Agent] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DealShare] [int] NOT NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[ID_Agent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApartmentDemands]    Script Date: 22.03.2024 11:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApartmentDemands](
	[ID_ApartmentDemands] [int] NOT NULL,
	[Address_City] [nvarchar](50) NULL,
	[Address_Street] [int] NULL,
	[Address_House] [nvarchar](50) NULL,
	[Address_Number] [nvarchar](50) NULL,
	[MinPrice] [nvarchar](50) NULL,
	[MaxPrice] [nvarchar](50) NULL,
	[AgentId] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[MinArea] [nvarchar](max) NULL,
	[MaxArea] [nvarchar](max) NULL,
	[MinRooms] [int] NULL,
	[MaxRooms] [int] NULL,
	[MinFloor] [int] NULL,
	[MaxFloor] [int] NULL,
 CONSTRAINT [PK_ApartmentDemands] PRIMARY KEY CLUSTERED 
(
	[ID_ApartmentDemands] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Apartments]    Script Date: 22.03.2024 11:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apartments](
	[ID_Apartment] [int] NOT NULL,
	[Address_City] [nvarchar](50) NULL,
	[Address_Street] [int] NOT NULL,
	[Address_House] [nvarchar](50) NULL,
	[Address_Number] [nvarchar](50) NULL,
	[Coordinate_latitude] [nvarchar](50) NULL,
	[Coordinate_longitude] [nvarchar](50) NULL,
	[TotalArea] [nvarchar](max) NULL,
	[Rooms] [int] NULL,
	[Floor] [int] NULL,
 CONSTRAINT [PK_Apartments] PRIMARY KEY CLUSTERED 
(
	[ID_Apartment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 22.03.2024 11:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ID_Client] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ID_Client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 22.03.2024 11:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[ID_Districts] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Area] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[ID_Districts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HouseDemands]    Script Date: 22.03.2024 11:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HouseDemands](
	[ID_HouseDemands] [int] NOT NULL,
	[Address_City] [nvarchar](50) NULL,
	[Address_Street] [int] NULL,
	[Address_House] [nvarchar](50) NULL,
	[Address_Number] [nvarchar](50) NULL,
	[MinPrice] [nvarchar](50) NULL,
	[MaxPrice] [nvarchar](50) NULL,
	[AgentId] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[MinFloors] [nvarchar](50) NULL,
	[MaxFloors] [nvarchar](50) NULL,
	[MinArea] [nvarchar](50) NULL,
	[MaxArea] [nvarchar](50) NULL,
	[MinRooms] [int] NULL,
	[MaxRooms] [int] NULL,
 CONSTRAINT [PK_HouseDemands] PRIMARY KEY CLUSTERED 
(
	[ID_HouseDemands] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Houses]    Script Date: 22.03.2024 11:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Houses](
	[ID_House] [int] NOT NULL,
	[Address_City] [nvarchar](50) NULL,
	[Address_Street] [int] NOT NULL,
	[Address_House] [nvarchar](50) NULL,
	[Address_Number] [nvarchar](50) NULL,
	[Coordinate_latitude] [nvarchar](50) NULL,
	[Coordinate_longitude] [nvarchar](50) NULL,
	[TotalFloors] [nvarchar](50) NULL,
	[TotalArea] [nvarchar](50) NULL,
 CONSTRAINT [PK_Houses] PRIMARY KEY CLUSTERED 
(
	[ID_House] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LandDemands]    Script Date: 22.03.2024 11:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LandDemands](
	[ID_LandDemands] [int] NOT NULL,
	[Address_City] [nvarchar](50) NULL,
	[Address_Street] [int] NULL,
	[Address_House] [nvarchar](50) NULL,
	[Address_Number] [nvarchar](50) NULL,
	[MinPrice] [nvarchar](50) NULL,
	[MaxPrice] [nvarchar](50) NULL,
	[AgentId] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[MinArea] [nvarchar](max) NULL,
	[MaxArea] [nvarchar](max) NULL,
 CONSTRAINT [PK_LandDemands] PRIMARY KEY CLUSTERED 
(
	[ID_LandDemands] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lands]    Script Date: 22.03.2024 11:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lands](
	[ID_Land] [int] NOT NULL,
	[Address_City] [nvarchar](50) NULL,
	[Address_Street] [int] NULL,
	[Address_House] [nvarchar](50) NULL,
	[Address_Number] [nvarchar](50) NULL,
	[Coordinate_latitude] [nvarchar](50) NULL,
	[Coordinate_longitude] [nvarchar](50) NULL,
	[TotalArea] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lands] PRIMARY KEY CLUSTERED 
(
	[ID_Land] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 22.03.2024 11:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[ID_Street] [int] NOT NULL,
	[NameStreet] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[ID_Street] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApartmentDemands]  WITH CHECK ADD  CONSTRAINT [FK_ApartmentDemands_Agents] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([ID_Agent])
GO
ALTER TABLE [dbo].[ApartmentDemands] CHECK CONSTRAINT [FK_ApartmentDemands_Agents]
GO
ALTER TABLE [dbo].[ApartmentDemands]  WITH CHECK ADD  CONSTRAINT [FK_ApartmentDemands_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ID_Client])
GO
ALTER TABLE [dbo].[ApartmentDemands] CHECK CONSTRAINT [FK_ApartmentDemands_Clients]
GO
ALTER TABLE [dbo].[ApartmentDemands]  WITH CHECK ADD  CONSTRAINT [FK_ApartmentDemands_Street] FOREIGN KEY([Address_Street])
REFERENCES [dbo].[Street] ([ID_Street])
GO
ALTER TABLE [dbo].[ApartmentDemands] CHECK CONSTRAINT [FK_ApartmentDemands_Street]
GO
ALTER TABLE [dbo].[Apartments]  WITH CHECK ADD  CONSTRAINT [FK_Apartments_Street] FOREIGN KEY([Address_Street])
REFERENCES [dbo].[Street] ([ID_Street])
GO
ALTER TABLE [dbo].[Apartments] CHECK CONSTRAINT [FK_Apartments_Street]
GO
ALTER TABLE [dbo].[HouseDemands]  WITH CHECK ADD  CONSTRAINT [FK_HouseDemands_Agents] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([ID_Agent])
GO
ALTER TABLE [dbo].[HouseDemands] CHECK CONSTRAINT [FK_HouseDemands_Agents]
GO
ALTER TABLE [dbo].[HouseDemands]  WITH CHECK ADD  CONSTRAINT [FK_HouseDemands_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ID_Client])
GO
ALTER TABLE [dbo].[HouseDemands] CHECK CONSTRAINT [FK_HouseDemands_Clients]
GO
ALTER TABLE [dbo].[HouseDemands]  WITH CHECK ADD  CONSTRAINT [FK_HouseDemands_Street] FOREIGN KEY([Address_Street])
REFERENCES [dbo].[Street] ([ID_Street])
GO
ALTER TABLE [dbo].[HouseDemands] CHECK CONSTRAINT [FK_HouseDemands_Street]
GO
ALTER TABLE [dbo].[Houses]  WITH CHECK ADD  CONSTRAINT [FK_Houses_Street] FOREIGN KEY([Address_Street])
REFERENCES [dbo].[Street] ([ID_Street])
GO
ALTER TABLE [dbo].[Houses] CHECK CONSTRAINT [FK_Houses_Street]
GO
ALTER TABLE [dbo].[LandDemands]  WITH CHECK ADD  CONSTRAINT [FK_LandDemands_Agents] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([ID_Agent])
GO
ALTER TABLE [dbo].[LandDemands] CHECK CONSTRAINT [FK_LandDemands_Agents]
GO
ALTER TABLE [dbo].[LandDemands]  WITH CHECK ADD  CONSTRAINT [FK_LandDemands_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ID_Client])
GO
ALTER TABLE [dbo].[LandDemands] CHECK CONSTRAINT [FK_LandDemands_Clients]
GO
ALTER TABLE [dbo].[LandDemands]  WITH CHECK ADD  CONSTRAINT [FK_LandDemands_Street] FOREIGN KEY([Address_Street])
REFERENCES [dbo].[Street] ([ID_Street])
GO
ALTER TABLE [dbo].[LandDemands] CHECK CONSTRAINT [FK_LandDemands_Street]
GO
ALTER TABLE [dbo].[Lands]  WITH CHECK ADD  CONSTRAINT [FK_Lands_Street] FOREIGN KEY([Address_Street])
REFERENCES [dbo].[Street] ([ID_Street])
GO
ALTER TABLE [dbo].[Lands] CHECK CONSTRAINT [FK_Lands_Street]
GO
