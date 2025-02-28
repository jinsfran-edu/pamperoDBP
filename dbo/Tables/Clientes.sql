CREATE TABLE [dbo].[Clientes] (
    [IDCliente]      CHAR (5)     NOT NULL,
    [NombreEmpresa]  VARCHAR (40) NOT NULL,
    [NombreContacto] VARCHAR (30) NULL,
    [PuestoContacto] VARCHAR (30) NULL,
    [Direccion]      VARCHAR (60) NULL,
    [Ciudad]         VARCHAR (15) NULL,
    [Region]         VARCHAR (15) NULL,
    [CodigoPostal]   VARCHAR (10) NULL,
    [Pais]           VARCHAR (15) NULL,
    [Telefono]       VARCHAR (24) NULL,
    [Fax]            VARCHAR (24) NULL
);
GO

CREATE NONCLUSTERED INDEX [idx_nc_ciudad]
    ON [dbo].[Clientes]([Ciudad] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_region]
    ON [dbo].[Clientes]([Region] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_codigopostal]
    ON [dbo].[Clientes]([CodigoPostal] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_nombreempresa]
    ON [dbo].[Clientes]([NombreEmpresa] ASC);
GO

ALTER TABLE [dbo].[Clientes]
    ADD CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED ([IDCliente] ASC);
GO

