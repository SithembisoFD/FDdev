CREATE TABLE [dbo].[Event] (
    [EventID]              INT           IDENTITY (1, 1) NOT NULL,
    [EventName]            VARCHAR (200) NOT NULL,
    [EventScheduledDate]   DATETIME      NOT NULL,
    [EventOwnerEmployeeID] INT           NOT NULL,
    [PointMatrixID]        INT           NOT NULL,
    [IsActive]             BIT           NOT NULL,
    [CreatedByEmployeeID]  INT           NOT NULL,
    [CreatedDate]          DATETIME      NOT NULL,
    [EventDescription]     VARCHAR (500) NULL,
    [RegionID]             INT           NULL,
    [EventTypeID]          INT           NOT NULL,
    CONSTRAINT [PK_SocialEvent] PRIMARY KEY CLUSTERED ([EventID] ASC),
    CONSTRAINT [FK_Event_Employee] FOREIGN KEY ([EventOwnerEmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_Event_Employee1] FOREIGN KEY ([CreatedByEmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_Event_EventType] FOREIGN KEY ([EventTypeID]) REFERENCES [dbo].[EventType] ([EventTypeID]),
    CONSTRAINT [FK_Event_PointMatrix] FOREIGN KEY ([PointMatrixID]) REFERENCES [dbo].[PointMatrix] ([PointMatrixID]),
    CONSTRAINT [FK_Event_Region] FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Region] ([RegionID])
);

