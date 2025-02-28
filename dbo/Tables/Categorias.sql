CREATE TABLE [dbo].[Categorias] (
    [IDCategoria]     INT            IDENTITY (1, 1) NOT NULL,
    [NombreCategoria] VARCHAR (15)   NOT NULL,
    [Descripcion]     VARCHAR (4000) NULL
);
GO

CREATE NONCLUSTERED INDEX [idx_nc_nombrecategoria]
    ON [dbo].[Categorias]([NombreCategoria] ASC);
GO

ALTER TABLE [dbo].[Categorias]
    ADD CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED ([IDCategoria] ASC);
GO

