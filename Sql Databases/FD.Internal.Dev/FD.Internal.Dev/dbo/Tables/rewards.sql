CREATE TABLE [dbo].[rewards](
	[rewardID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
	[expiredDate] [datetime] NULL,
	[activeDate] [datetime] NULL,
	[userPointID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[rewardID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[rewards]  WITH CHECK ADD FOREIGN KEY([userPointID])
REFERENCES [dbo].[userPointsData] ([userPointID])