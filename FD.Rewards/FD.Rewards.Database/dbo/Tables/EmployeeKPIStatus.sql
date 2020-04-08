CREATE TABLE [dbo].[EmployeeKPIStatus] (
    [EmployeeKPIStatusID] INT            IDENTITY (1, 1) NOT NULL,
    [StatusDescription]   NVARCHAR (50)  NOT NULL,
    [Description]         NVARCHAR (255) NULL,
    [IsActive]            BIT            CONSTRAINT [DF_EmployeeKPIStatus_IsActive] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_EmployeeKPIStatus] PRIMARY KEY CLUSTERED ([EmployeeKPIStatusID] ASC)
);

