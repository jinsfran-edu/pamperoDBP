CREATE TABLE [dbo].[Nums] (
    [n] INT NOT NULL
);
GO

ALTER TABLE [dbo].[Nums]
    ADD CONSTRAINT [PK_Nums] PRIMARY KEY CLUSTERED ([n] ASC);
GO

