CREATE TABLE [dbo].[Idea] (
    [IdeaID]      INT           IDENTITY (1, 1) NOT NULL,
    [Suggestion]  VARCHAR (MAX) NULL,
    [CreatedBy]   VARCHAR (50)  NULL,
    [CreatedDate] DATETIME      NULL,
    [IdeaTypeID]  INT           NULL,
    CONSTRAINT [PK__rewardId__FE21822318EF1D9B] PRIMARY KEY CLUSTERED ([IdeaID] ASC),
    CONSTRAINT [FK_Idea_IdeaType] FOREIGN KEY ([IdeaTypeID]) REFERENCES [dbo].[IdeaType] ([IdeaTypeID])
);

