CREATE TABLE [dbo].[Attachments] (
    [AttachmentID]    INT           NOT NULL,
    [EmployeeID]      INT           NOT NULL,
    [Attachment]      VARCHAR (MAX) NULL,
    [AttachedBy]      VARCHAR (50)  NULL,
    [CreatedDateTime] DATETIME      NULL,
    CONSTRAINT [PK_Attachments] PRIMARY KEY CLUSTERED ([AttachmentID] ASC)
);

