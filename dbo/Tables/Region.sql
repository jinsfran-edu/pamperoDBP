CREATE TABLE [dbo].[Region] (
    [IDRegion]          INT       NOT NULL,
    [RegionDescripcion] CHAR (50) NOT NULL
);
GO

ALTER TABLE [dbo].[Region]
    ADD CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED ([IDRegion] ASC);
GO

