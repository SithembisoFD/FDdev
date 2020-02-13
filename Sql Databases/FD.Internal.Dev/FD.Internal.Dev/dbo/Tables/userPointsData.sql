CREATE TABLE [dbo].[userPointsData](
	[userPointID] [int] IDENTITY(1,1) NOT NULL,
	[redeemed] [int] NOT NULL,
	[nonRedeemed] [int] NOT NULL,
	[TotalPoints] [int] NOT NULL,
	[createdDate] [datetime] NULL,
	[pointID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userPointID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[userPointsData]  WITH CHECK ADD FOREIGN KEY([pointID])
REFERENCES [dbo].[points] ([pointID])