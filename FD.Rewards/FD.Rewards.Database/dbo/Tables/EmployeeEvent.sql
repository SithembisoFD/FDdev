CREATE TABLE [dbo].[EmployeeEvent] (
    [EmployeeEventID] INT      IDENTITY (1, 1) NOT NULL,
    [EmployeeID]      INT      NOT NULL,
    [EventID]         INT      NOT NULL,
    [CreatedDate]     DATETIME NOT NULL,
    CONSTRAINT [PK_EmployeeEvent] PRIMARY KEY CLUSTERED ([EmployeeEventID] ASC),
    CONSTRAINT [FK_EmployeeEvent_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_EmployeeEvent_Event] FOREIGN KEY ([EventID]) REFERENCES [dbo].[Event] ([EventID])
);

