CREATE PROC spEmpleadoPorNombre
@Apellido nvarchar(50) = NULL
AS
IF @Apellido IS NOT NULL
SELECT e.Apellido, e.Nombre, e.Puesto, e.FechaAlta
FROM Empleados e
WHERE e.Apellido LIKE @Apellido + '%';
ELSE
SELECT e.Apellido, e.Nombre, e.Puesto, e.FechaAlta
FROM Empleados e
GO

