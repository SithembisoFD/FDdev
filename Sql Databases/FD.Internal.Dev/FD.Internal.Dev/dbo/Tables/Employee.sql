CREATE TABLE [dbo].[Employee] (
    [EmployeeID]   INT  IDENTITY (1, 1) NOT NULL,
    [AzureLoginID] INT  NOT NULL,
    [IsDeleted]    DATE NULL,
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);

