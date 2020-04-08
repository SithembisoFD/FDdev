CREATE TABLE [dbo].[EmployeeSocialClub] (
    [EmployeeSocialClubID] BIGINT   IDENTITY (1, 1) NOT NULL,
    [EmployeeID]           INT      NOT NULL,
    [SocialClubID]         INT      NOT NULL,
    [CreatedDate]          DATETIME DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([EmployeeSocialClubID] ASC),
    FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    FOREIGN KEY ([SocialClubID]) REFERENCES [dbo].[SocialClub] ([SocialClubID])
);

