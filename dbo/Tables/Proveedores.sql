CREATE TABLE [dbo].[Proveedores] (
    [IDProveedor]    INT            IDENTITY (1, 1) NOT NULL,
    [NombreEmpresa]  VARCHAR (40)   NOT NULL,
    [NombreContacto] VARCHAR (30)   NULL,
    [PuestoContacto] VARCHAR (30)   NULL,
    [Direccion]      VARCHAR (60)   NULL,
    [Ciudad]         VARCHAR (15)   NULL,
    [Region]         VARCHAR (15)   NULL,
    [CodigoPostal]   VARCHAR (10)   NULL,
    [Pais]           VARCHAR (15)   NULL,
    [Telefono]       VARCHAR (24)   NULL,
    [Fax]            VARCHAR (24)   NULL,
    [Web]            VARCHAR (4000) NULL
);
GO

CREATE NONCLUSTERED INDEX [idx_nc_nombreempresa]
    ON [dbo].[Proveedores]([NombreEmpresa] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_codigopostal]
    ON [dbo].[Proveedores]([CodigoPostal] ASC);
GO

ALTER TABLE [dbo].[Proveedores]
    ADD CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED ([IDProveedor] ASC);
GO

