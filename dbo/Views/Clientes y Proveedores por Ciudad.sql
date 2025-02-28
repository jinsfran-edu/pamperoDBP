CREATE VIEW "Clientes y Proveedores por Ciudad" AS
SELECT Ciudad, NombreEmpresa, NombreContacto, 'Clientes' AS Relacion 
FROM Clientes
UNION SELECT Ciudad, NombreEmpresa, NombreContacto, 'Proveedores'
FROM Proveedores;
GO

