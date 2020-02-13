CREATE TABLE [dbo].[pointMatrix](
	[pointMatrixID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
	[pointType] [varchar](50) NULL,
	[pointValue] [int] NULL,
	[rewardValuePoints] [int] NULL,
	[userID] [int] NULL,
	[pointRewardType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[pointMatrixID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pointMatrix]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[userDetails] ([userID])