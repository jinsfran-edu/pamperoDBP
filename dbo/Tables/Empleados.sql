CREATE TABLE [dbo].[Empleados] (
    [IDEmpleado]      INT            IDENTITY (1, 1) NOT NULL,
    [Apellido]        VARCHAR (20)   NOT NULL,
    [Nombre]          VARCHAR (10)   NOT NULL,
    [Puesto]          VARCHAR (30)   NULL,
    [Saludo]          VARCHAR (25)   NULL,
    [FechaNacimiento] DATE           NULL,
    [FechaAlta]       DATE           NULL,
    [Direccion]       VARCHAR (60)   NULL,
    [Ciudad]          VARCHAR (15)   NULL,
    [Region]          VARCHAR (15)   NULL,
    [CodigoPostal]    VARCHAR (10)   NULL,
    [Pais]            VARCHAR (15)   NULL,
    [TelefonoCasa]    VARCHAR (24)   NULL,
    [Interno]         VARCHAR (4)    NULL,
    [Notas]           VARCHAR (4000) NULL,
    [JefeID]          INT            NULL,
    [RutaFoto]        VARCHAR (255)  NULL
);
GO

CREATE NONCLUSTERED INDEX [idx_nc_apellido]
    ON [dbo].[Empleados]([Apellido] ASC);
GO

CREATE NONCLUSTERED INDEX [idx_nc_codigopostal]
    ON [dbo].[Empleados]([CodigoPostal] ASC);
GO

ALTER TABLE [dbo].[Empleados]
    ADD CONSTRAINT [FK_Empleados_Empleados] FOREIGN KEY ([JefeID]) REFERENCES [dbo].[Empleados] ([IDEmpleado]);
GO

ALTER TABLE [dbo].[Empleados]
    ADD CONSTRAINT [CK_FechaNacimiento] CHECK ([FechaNacimiento]<getdate());
GO

ALTER TABLE [dbo].[Empleados]
    ADD CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED ([IDEmpleado] ASC);
GO

