CREATE TABLE [dbo].[SocialClubEvent] (
    [SocialClubEventID] BIGINT IDENTITY (1, 1) NOT NULL,
    [SocialClubID]      INT    NOT NULL,
    [EventID]           INT    NOT NULL,
    PRIMARY KEY CLUSTERED ([SocialClubEventID] ASC),
    FOREIGN KEY ([EventID]) REFERENCES [dbo].[Event] ([EventID]),
    FOREIGN KEY ([SocialClubID]) REFERENCES [dbo].[SocialClub] ([SocialClubID])
);

