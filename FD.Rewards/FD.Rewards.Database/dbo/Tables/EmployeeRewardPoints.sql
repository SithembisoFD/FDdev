CREATE TABLE [dbo].[EmployeeRewardPoints] (
    [EmployeeRewardPointID] INT           IDENTITY (1, 1) NOT NULL,
    [EmployeeID]            INT           NOT NULL,
    [TotalPoints]           INT           NOT NULL,
    [UpdatedBy]             VARCHAR (100) NULL,
    [UpdatedByDate]         DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([EmployeeRewardPointID] ASC),
    CONSTRAINT [FK_EmployeeRewardPoints_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID])
);

