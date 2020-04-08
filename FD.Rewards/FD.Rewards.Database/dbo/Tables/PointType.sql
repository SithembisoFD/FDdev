CREATE TABLE [dbo].[PointType] (
    [PointTypeID] INT          IDENTITY (1, 1) NOT NULL,
    [Description] VARCHAR (50) NULL,
    [MaxPoints]   INT          NULL,
    PRIMARY KEY CLUSTERED ([PointTypeID] ASC)
);

