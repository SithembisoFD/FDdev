CREATE TABLE [dbo].[pointTypes](
	[pointTypeID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NULL,
	[userID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pointTypeID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pointTypes]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[userDetails] ([userID])