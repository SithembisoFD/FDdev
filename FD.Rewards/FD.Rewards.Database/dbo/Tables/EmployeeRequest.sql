CREATE TABLE [dbo].[EmployeeRequest] (
    [EmployeeRequestID] BIGINT         IDENTITY (1, 1) NOT NULL,
    [RequestNote]       NVARCHAR (50)  NULL,
    [AttachmentID]      INT            NULL,
    [CreatedDate]       DATETIME       NULL,
    [CreatedBy]         NVARCHAR (200) NULL,
    [EmployeeID]        INT            NULL,
    [PointMatixID]      INT            NULL,
    CONSTRAINT [PK_EmployeeRequestCoinsData] PRIMARY KEY CLUSTERED ([EmployeeRequestID] ASC),
    CONSTRAINT [FK_EmployeeRequestData_Attachments] FOREIGN KEY ([AttachmentID]) REFERENCES [dbo].[Attachments] ([AttachmentID]),
    CONSTRAINT [FK_EmployeeRequestData_PointMatrix] FOREIGN KEY ([PointMatixID]) REFERENCES [dbo].[PointMatrix] ([PointMatrixID])
);

