CREATE TABLE [dbo].[EmployeePointsData] (
    [EmployeePointDataID]    VARCHAR (100) NOT NULL,
    [CreatedDate]            DATETIME      NULL,
    [PointIMatrixID]         INT           NULL,
    [Note]                   VARCHAR (MAX) NULL,
    [CreatedBy]              VARCHAR (100) NULL,
    [EmployeeKPIID]          INT           NULL,
    [IsRewardPointAllocated] BIT           NULL,
    CONSTRAINT [PK__userPoin__091093DE7B6333C2] PRIMARY KEY CLUSTERED ([EmployeePointDataID] ASC),
    CONSTRAINT [FK_EmployeeKPI_PointMatrix] FOREIGN KEY ([PointIMatrixID]) REFERENCES [dbo].[PointMatrix] ([PointMatrixID])
);

