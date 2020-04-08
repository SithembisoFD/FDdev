CREATE TABLE [dbo].[EmployeeReward] (
    [EmployeeRewardID]  INT      IDENTITY (1, 1) NOT NULL,
    [RewardID]          INT      NOT NULL,
    [RewardRequestDate] DATETIME NULL,
    [CreatedDate]       DATETIME CONSTRAINT [DF_EmployeeReward_CreatedDate] DEFAULT (getdate()) NULL,
    [EmployeeID]        INT      NOT NULL,
    [RewardPointValue]  INT      NOT NULL,
    CONSTRAINT [PK_EmployeeReward] PRIMARY KEY CLUSTERED ([EmployeeRewardID] ASC),
    CONSTRAINT [FK_EmployeeReward_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID]),
    CONSTRAINT [FK_EmployeeReward_Reward] FOREIGN KEY ([RewardID]) REFERENCES [dbo].[Reward] ([RewardID])
);

