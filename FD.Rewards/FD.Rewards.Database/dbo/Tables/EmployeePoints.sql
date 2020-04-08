CREATE TABLE [dbo].[EmployeePoints] (
    [EmployeePointID]   INT           IDENTITY (1, 1) NOT NULL,
    [CreatedDate]       DATETIME      NOT NULL,
    [PointMatrixID]     INT           NOT NULL,
    [CreatedBy]         VARCHAR (100) NOT NULL,
    [EmployeeID]        INT           NOT NULL,
    [PointValue]        INT           NULL,
    [RewardPointValue]  INT           NULL,
    [EmployeeRequestID] BIGINT        NULL,
    CONSTRAINT [PK__userPoin__091093DE7B6333C2] PRIMARY KEY CLUSTERED ([EmployeePointID] ASC),
    CONSTRAINT [FK_EmployeePoints_EmployeeRequest] FOREIGN KEY ([EmployeeRequestID]) REFERENCES [dbo].[EmployeeRequest] ([EmployeeRequestID]),
    CONSTRAINT [FK_EmployeePointsData_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_EmployeePointsData_PointMatrix] FOREIGN KEY ([PointMatrixID]) REFERENCES [dbo].[PointMatrix] ([PointMatrixID])
);

