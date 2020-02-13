CREATE TABLE [dbo].[points](
	[pointID] [int] IDENTITY(1,1) NOT NULL,
	[rewardRedeemable] [int] NOT NULL,
	[pointValue] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[pointID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]