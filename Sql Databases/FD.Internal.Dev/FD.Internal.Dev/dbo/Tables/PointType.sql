CREATE TABLE [dbo].[PointType] (
    [pointTypeID] INT          IDENTITY (1, 1) NOT NULL,
    [description] VARCHAR (50) NULL,
    [userID]      INT          NULL,
    PRIMARY KEY CLUSTERED ([pointTypeID] ASC)
);

