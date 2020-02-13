CREATE TABLE [dbo].[rewardIdeas](
	[IdeaID] [int] IDENTITY(1,1) NOT NULL,
	[RewardSuggestion] [varchar](50) NULL,
	[createdBy] [varchar](50) NULL,
	[createdDate] [date] NULL,
	[activeDate] [datetime] NULL,
	[rewardID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdeaID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[rewardIdeas]  WITH CHECK ADD FOREIGN KEY([rewardID])
REFERENCES [dbo].[rewards] ([rewardID])