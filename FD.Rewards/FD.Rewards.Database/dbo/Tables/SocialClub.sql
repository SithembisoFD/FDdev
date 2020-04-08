CREATE TABLE [dbo].[SocialClub] (
    [SocialClubID]        INT           IDENTITY (1, 1) NOT NULL,
    [SocialclubName]      VARCHAR (100) NOT NULL,
    [Description]         VARCHAR (500) NULL,
    [IsActive]            BIT           NULL,
    [CreatedDate]         DATETIME      NOT NULL,
    [CreatedByEmployeeID] INT           NOT NULL,
    [SocialClubChampion]  VARCHAR (200) NULL,
    CONSTRAINT [PK_SocialClub] PRIMARY KEY CLUSTERED ([SocialClubID] ASC)
);

