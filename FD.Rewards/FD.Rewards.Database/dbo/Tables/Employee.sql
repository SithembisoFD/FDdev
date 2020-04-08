CREATE TABLE [dbo].[Employee] (
    [EmployeeID]   INT           IDENTITY (1, 1) NOT NULL,
    [FQDN]         VARCHAR (200) NOT NULL,
    [IsActive]     BIT           NULL,
    [CreatedDated] DATETIME      NULL,
    [Email]        VARCHAR (100) NULL,
    [RegionID]     INT           NULL,
    CONSTRAINT [PK__userDeta__CB9A1CDF6E6B90E6] PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
    CONSTRAINT [FK_Employee_Region] FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Region] ([RegionID])
);

