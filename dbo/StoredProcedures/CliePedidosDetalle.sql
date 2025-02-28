CREATE PROCEDURE CliePedidosDetalle 
@IDPedido int
AS
SELECT NombreProducto,
    ROUND(Od.PrecioUnitario, 2) AS PrecioUnitario,
    Cantidad,
    CONVERT(int, Descuento * 100) AS Descuento, 
    ROUND(CONVERT(decimal(19,4), Cantidad * (1 - Descuento) * Od.PrecioUnitario), 2) AS PrecioAmpliado
FROM Productos P, "Detalles Pedido" Od
WHERE Od.IDProducto = P.IDProducto and Od.IDPedido = @IDPedido
GO

