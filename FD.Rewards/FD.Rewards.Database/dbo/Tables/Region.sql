CREATE TABLE [dbo].[Region] (
    [RegionID]     INT           IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (25) NOT NULL,
    [ADRegionName] NVARCHAR (25) NULL,
    [IsActive]     BIT           DEFAULT ((1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([RegionID] ASC)
);

