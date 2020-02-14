CREATE TABLE [dbo].[Reward] (
    [RewardID]      INT           IDENTITY (1, 1) NOT NULL,
    [Description]   VARCHAR (50)  NULL,
    [IsDeleted]     BIT           NULL,
    [ExpiredDate]   DATETIME      NULL,
    [ActiveDate]    DATETIME      NULL,
    [CreatedBy]     VARCHAR (100) NULL,
    [CreatedDate]   DATETIME      NULL,
    [PointMatrixID] INT           NULL,
    CONSTRAINT [PK__rewards__B868BF8C90F517AD] PRIMARY KEY CLUSTERED ([RewardID] ASC),
    CONSTRAINT [FK_Reward_PointMatrix] FOREIGN KEY ([PointMatrixID]) REFERENCES [dbo].[PointMatrix] ([PointMatrixID])
);

