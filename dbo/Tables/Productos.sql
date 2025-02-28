CREATE TABLE [dbo].[Productos] (
    [IDProducto]        INT             IDENTITY (1, 1) NOT NULL,
    [NombreProducto]    VARCHAR (40)    NOT NULL,
    [IDProveedor]       INT             NULL,
    [IDCategoria]       INT             NULL,
    [CantidadPorUnidad] VARCHAR (20)    NULL,
    [PrecioUnitario]    DECIMAL (19, 4) NULL,
    [UnidadesEnStock]   SMALLINT        NULL,
    [UnidadesEnPedidos] SMALLINT        NULL,
    [NivelNuevoPedido]  SMALLINT        NULL,
    [Discontinuado]     TINYINT         NOT NULL
);
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [DF_Productos_NivelNuevoPedido] DEFAULT ((0)) FOR [NivelNuevoPedido];
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [DF_Productos_PrecioUnitario] DEFAULT ((0)) FOR [PrecioUnitario];
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [DF_Productos_Discontinuado] DEFAULT ((0)) FOR [Discontinuado];
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [DF_Productos_UnidadesEnStock] DEFAULT ((0)) FOR [UnidadesEnStock];
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [DF_Productos_UnidadesEnPedidos] DEFAULT ((0)) FOR [UnidadesEnPedidos];
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [CK_UnidadesEnPedidos] CHECK ([UnidadesEnPedidos]>=(0));
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [CK_NivelNuevoPedido] CHECK ([NivelNuevoPedido]>=(0));
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [CK_Productos_PrecioUnitario] CHECK ([PrecioUnitario]>=(0));
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [CK_UnidadesEnStock] CHECK ([UnidadesEnStock]>=(0));
GO

CREATE NONCLUSTERED INDEX [idx_nc_nombreproducto]
    ON [dbo].[Productos]([NombreProducto] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_proveedorid]
    ON [dbo].[Productos]([IDProveedor] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_categoriaid]
    ON [dbo].[Productos]([IDCategoria] ASC);
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [FK_Productos_Proveedores] FOREIGN KEY ([IDProveedor]) REFERENCES [dbo].[Proveedores] ([IDProveedor]);
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY ([IDCategoria]) REFERENCES [dbo].[Categorias] ([IDCategoria]);
GO

ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED ([IDProducto] ASC);
GO

