CREATE TABLE [dbo].[UnitType] (
    [UnitTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (25) NOT NULL,
    [IsActive]   BIT           DEFAULT ((1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([UnitTypeID] ASC)
);

