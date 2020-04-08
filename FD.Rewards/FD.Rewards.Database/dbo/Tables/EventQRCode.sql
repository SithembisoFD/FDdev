CREATE TABLE [dbo].[EventQRCode] (
    [EventQRCodeID]       INT           NOT NULL,
    [QRCode]              VARCHAR (MAX) NOT NULL,
    [EventID]             INT           NOT NULL,
    [ActiveFromDate]      DATETIME      NOT NULL,
    [ExpireDate]          DATETIME      NOT NULL,
    [CreatedByEmployeeID] INT           NOT NULL,
    [CreatedDate]         DATETIME      NOT NULL,
    CONSTRAINT [PK_EventQRCode] PRIMARY KEY CLUSTERED ([EventQRCodeID] ASC),
    CONSTRAINT [FK_EventQRCode_Employee] FOREIGN KEY ([CreatedByEmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_EventQRCode_Event] FOREIGN KEY ([EventID]) REFERENCES [dbo].[Event] ([EventID])
);

