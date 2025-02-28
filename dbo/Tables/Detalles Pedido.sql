CREATE TABLE [dbo].[Detalles Pedido] (
    [IDPedido]       INT             NOT NULL,
    [IDProducto]     INT             NOT NULL,
    [PrecioUnitario] DECIMAL (19, 4) NOT NULL,
    [Cantidad]       SMALLINT        NOT NULL,
    [Descuento]      NUMERIC (4, 3)  NOT NULL
);
GO

ALTER TABLE [dbo].[Detalles Pedido]
    ADD CONSTRAINT [CK_Cantidad] CHECK ([Cantidad]>(0));
GO

ALTER TABLE [dbo].[Detalles Pedido]
    ADD CONSTRAINT [CK_Descuento] CHECK ([Descuento]>=(0) AND [Descuento]<=(1));
GO

ALTER TABLE [dbo].[Detalles Pedido]
    ADD CONSTRAINT [CK_PrecioUnitario] CHECK ([PrecioUnitario]>=(0));
GO

ALTER TABLE [dbo].[Detalles Pedido]
    ADD CONSTRAINT [DF_Detalles_Pedido_Cantidad] DEFAULT ((1)) FOR [Cantidad];
GO

ALTER TABLE [dbo].[Detalles Pedido]
    ADD CONSTRAINT [DF_Detalles_Pedido_Descuento] DEFAULT ((0)) FOR [Descuento];
GO

ALTER TABLE [dbo].[Detalles Pedido]
    ADD CONSTRAINT [DF_Detalles_Pedido_PrecioUnitario] DEFAULT ((0)) FOR [PrecioUnitario];
GO

CREATE NONCLUSTERED INDEX [idx_nc_idpedido]
    ON [dbo].[Detalles Pedido]([IDPedido] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_idproducto]
    ON [dbo].[Detalles Pedido]([IDProducto] ASC);
GO

ALTER TABLE [dbo].[Detalles Pedido]
    ADD CONSTRAINT [FK_Detalles_Pedido_Productos] FOREIGN KEY ([IDProducto]) REFERENCES [dbo].[Productos] ([IDProducto]);
GO

ALTER TABLE [dbo].[Detalles Pedido]
    ADD CONSTRAINT [FK_Detalles_Pedido_Pedidos] FOREIGN KEY ([IDPedido]) REFERENCES [dbo].[Pedidos] ([IDPedido]);
GO

ALTER TABLE [dbo].[Detalles Pedido]
    ADD CONSTRAINT [PK_DetallesPedido] PRIMARY KEY CLUSTERED ([IDPedido] ASC, [IDProducto] ASC);
GO

