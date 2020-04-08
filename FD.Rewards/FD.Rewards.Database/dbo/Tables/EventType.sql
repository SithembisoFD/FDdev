CREATE TABLE [dbo].[EventType] (
    [EventTypeID]   INT           IDENTITY (1, 1) NOT NULL,
    [PointTypeID]   INT           NOT NULL,
    [PointMatrixID] INT           NOT NULL,
    [EventTypeName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_EventType] PRIMARY KEY CLUSTERED ([EventTypeID] ASC)
);

