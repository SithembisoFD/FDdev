CREATE TABLE [dbo].[EmployeeKPI] (
    [UserKpiID]           INT            IDENTITY (1, 1) NOT NULL,
    [Description]         VARCHAR (MAX)  NULL,
    [EmployeeID]          INT            NOT NULL,
    [PointMatrixID]       INT            NOT NULL,
    [CreatedDate]         DATETIME       NULL,
    [CreatedBy]           VARCHAR (100)  NULL,
    [IsApproved]          BIT            DEFAULT ((0)) NULL,
    [EmployeeKPIStatusID] INT            NULL,
    [CancellationReason]  NVARCHAR (255) NULL,
    [EmployeeRequestID]   BIGINT         NULL,
    CONSTRAINT [PK_EmployeeKPI] PRIMARY KEY CLUSTERED ([UserKpiID] ASC),
    FOREIGN KEY ([EmployeeKPIStatusID]) REFERENCES [dbo].[EmployeeKPIStatus] ([EmployeeKPIStatusID]),
    CONSTRAINT [FK_EmployeeKPI_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_EmployeeKPI_EmployeeRequest] FOREIGN KEY ([EmployeeRequestID]) REFERENCES [dbo].[EmployeeRequest] ([EmployeeRequestID])
);

