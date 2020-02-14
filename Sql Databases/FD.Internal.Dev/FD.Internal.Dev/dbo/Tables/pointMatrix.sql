CREATE TABLE [dbo].[PointMatrix] (
    [PointMatrixID]    INT           IDENTITY (1, 1) NOT NULL,
    [Description]      VARCHAR (50)  NULL,
    [IsDeleted]        BIT           NULL,
    [PointTypeID]      INT           NULL,
    [PointValue]       INT           NULL,
    [RewardPointValue] INT           NULL,
    [CreatedBy]        VARCHAR (100) NULL,
    [CreatedDate]      DATETIME      NULL,
    CONSTRAINT [PK__pointMat__D4E20934372CA4BC] PRIMARY KEY CLUSTERED ([PointMatrixID] ASC),
    CONSTRAINT [FK_PointMatrix_PointType] FOREIGN KEY ([PointTypeID]) REFERENCES [dbo].[PointType] ([PointTypeID])
);


GO
