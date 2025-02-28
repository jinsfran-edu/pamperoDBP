CREATE TABLE [dbo].[EmpleadoTerritorios] (
    [IDEmpleado]   INT          NOT NULL,
    [IDTerritorio] VARCHAR (20) NOT NULL
);
GO

ALTER TABLE [dbo].[EmpleadoTerritorios]
    ADD CONSTRAINT [FK_EmpleadoTerritorios_Empleados] FOREIGN KEY ([IDEmpleado]) REFERENCES [dbo].[Empleados] ([IDEmpleado]);
GO

ALTER TABLE [dbo].[EmpleadoTerritorios]
    ADD CONSTRAINT [FK_EmpleadoTerritorios_Territorios] FOREIGN KEY ([IDTerritorio]) REFERENCES [dbo].[Territorios] ([IDTerritorio]);
GO

ALTER TABLE [dbo].[EmpleadoTerritorios]
    ADD CONSTRAINT [PK_EmpleadoTerritorios] PRIMARY KEY CLUSTERED ([IDEmpleado] ASC, [IDTerritorio] ASC);
GO

