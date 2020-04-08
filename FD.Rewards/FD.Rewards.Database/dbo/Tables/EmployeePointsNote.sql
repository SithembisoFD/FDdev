CREATE TABLE [dbo].[EmployeePointsNote] (
    [NoteID]              INT           IDENTITY (1, 1) NOT NULL,
    [Note]                VARCHAR (MAX) NULL,
    [EmployeePointDataID] INT           NOT NULL,
    CONSTRAINT [PK_EmployeePointsNote] PRIMARY KEY CLUSTERED ([NoteID] ASC),
    CONSTRAINT [FK_EmployeePointsNote_EmployeePointsNote] FOREIGN KEY ([EmployeePointDataID]) REFERENCES [dbo].[EmployeePoints] ([EmployeePointID])
);

