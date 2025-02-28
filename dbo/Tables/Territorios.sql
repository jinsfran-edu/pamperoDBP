CREATE TABLE [dbo].[Territorios] (
    [IDTerritorio]          VARCHAR (20) NOT NULL,
    [DescripcionTerritorio] CHAR (50)    NOT NULL,
    [IDRegion]              INT          NOT NULL
);
GO

ALTER TABLE [dbo].[Territorios]
    ADD CONSTRAINT [PK_Territorios] PRIMARY KEY CLUSTERED ([IDTerritorio] ASC);
GO

ALTER TABLE [dbo].[Territorios]
    ADD CONSTRAINT [FK_Territorios_Region] FOREIGN KEY ([IDRegion]) REFERENCES [dbo].[Region] ([IDRegion]);
GO

