CREATE TABLE [dbo].[Comments] (
    [CommentID]          INT          NOT NULL,
    [EmployeeID]         INT          NOT NULL,
    [CommentDescription] VARCHAR (50) NOT NULL,
    [CommentDate]        DATETIME     NOT NULL,
    CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED ([CommentID] ASC)
);

