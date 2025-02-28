CREATE TABLE [dbo].[Transportistas] (
    [IDTransportista] INT          IDENTITY (1, 1) NOT NULL,
    [NombreEmpresa]   VARCHAR (40) NOT NULL,
    [Telefono]        VARCHAR (24) NULL
);
GO

ALTER TABLE [dbo].[Transportistas]
    ADD CONSTRAINT [PK_Transportistas] PRIMARY KEY CLUSTERED ([IDTransportista] ASC);
GO

