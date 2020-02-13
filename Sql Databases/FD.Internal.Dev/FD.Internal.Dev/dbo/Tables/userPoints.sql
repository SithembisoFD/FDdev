CREATE TABLE [dbo].[userPoints](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[remainingPoints] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[userPoints]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[userDetails] ([userID])