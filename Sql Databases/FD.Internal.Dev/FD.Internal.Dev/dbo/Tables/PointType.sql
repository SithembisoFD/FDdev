CREATE TABLE [dbo].[PointType] (
    [pointTypeID] INT          IDENTITY (1, 1) NOT NULL,
    [description] VARCHAR (50) NULL,
    [EmployeeID]      INT          NULL,
    PRIMARY KEY CLUSTERED ([pointTypeID] ASC),
    CONSTRAINT [FK_PointType_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID])
);

