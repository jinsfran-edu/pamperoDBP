CREATE TABLE [dbo].[Pedidos] (
    [IDPedido]          INT             IDENTITY (1, 1) NOT NULL,
    [IDCliente]         CHAR (5)        NULL,
    [IDEmpleado]        INT             NULL,
    [FechaPedido]       DATETIME        NULL,
    [FechaRequerida]    DATETIME        NULL,
    [FechaEnvio]        DATETIME        NULL,
    [EnvioPor]          INT             NULL,
    [Flete]             DECIMAL (19, 4) NULL,
    [NombreEnvio]       VARCHAR (40)    NULL,
    [DireccionEnvio]    VARCHAR (60)    NULL,
    [CiudadEnvio]       VARCHAR (15)    NULL,
    [RegionEnvio]       VARCHAR (15)    NULL,
    [CodigoPostalEnvio] VARCHAR (10)    NULL,
    [PaisEnvio]         VARCHAR (15)    NULL
);
GO

CREATE NONCLUSTERED INDEX [idx_nc_codigopostalenvio]
    ON [dbo].[Pedidos]([CodigoPostalEnvio] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_fechapedido]
    ON [dbo].[Pedidos]([FechaPedido] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_idempleado]
    ON [dbo].[Pedidos]([IDEmpleado] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_idcliente]
    ON [dbo].[Pedidos]([IDCliente] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_enviopor]
    ON [dbo].[Pedidos]([EnvioPor] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_fechaenvio]
    ON [dbo].[Pedidos]([FechaEnvio] ASC);
GO

ALTER TABLE [dbo].[Pedidos]
    ADD CONSTRAINT [FK_Pedidos_Transportistas] FOREIGN KEY ([EnvioPor]) REFERENCES [dbo].[Transportistas] ([IDTransportista]);
GO

ALTER TABLE [dbo].[Pedidos]
    ADD CONSTRAINT [FK_Pedidos_Empleados] FOREIGN KEY ([IDEmpleado]) REFERENCES [dbo].[Empleados] ([IDEmpleado]);
GO

ALTER TABLE [dbo].[Pedidos]
    ADD CONSTRAINT [FK_Pedidos_Clientes] FOREIGN KEY ([IDCliente]) REFERENCES [dbo].[Clientes] ([IDCliente]);
GO

ALTER TABLE [dbo].[Pedidos]
    ADD CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED ([IDPedido] ASC);
GO

ALTER TABLE [dbo].[Pedidos]
    ADD CONSTRAINT [DF_Pedidos_Flete] DEFAULT ((0)) FOR [Flete];
GO

