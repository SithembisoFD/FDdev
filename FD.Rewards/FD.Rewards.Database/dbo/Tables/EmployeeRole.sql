CREATE TABLE [dbo].[EmployeeRole] (
    [EmployeeRoleID] INT IDENTITY (1, 1) NOT NULL,
    [EmployeeID]     INT NOT NULL,
    [RoleID]         INT NOT NULL,
    CONSTRAINT [PK_EmployeeRole] PRIMARY KEY CLUSTERED ([EmployeeRoleID] ASC),
    CONSTRAINT [FK_EmployeeRole_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_EmployeeRole_Role] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Role] ([RoleID])
);

