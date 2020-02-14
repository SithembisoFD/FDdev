CREATE TABLE [dbo].[EmployeeKPI] (
    [UserKpiID]     INT           IDENTITY (1, 1) NOT NULL,
    [Description]   VARCHAR (MAX) NULL,
    [UserID]        INT           NOT NULL,
    [PointMatrixID] INT           NOT NULL,
    [CreatedDate]   DATETIME      NULL,
    [CreatedBy]     VARCHAR (100) NULL,
    CONSTRAINT [PK_EmployeeKPI] PRIMARY KEY CLUSTERED ([UserKpiID] ASC)
);

