CREATE FUNCTION GetClieOrdenes
(@cid AS char(5)) RETURNS TABLE
AS
RETURN
SELECT IDPedido, IDCliente, IDEmpleado, FechaPedido, FechaRequerida,
FechaEnvio, EnvioPor, Flete, NombreEnvio, DireccionEnvio, CiudadEnvio,
RegionEnvio, CodigoPostalEnvio, PaisEnvio
FROM Pedidos
WHERE IDCliente = @cid;
GO

