

CREATE PROCEDURE "Ventas por Anio" 
	@Fecha_inicio DateTime, 
	@Fecha_fin DateTime 
AS
SELECT Pedidos.FechaEnvio, Pedidos.IDPedido, "Subtotales de pedidos".Subtotal, DATENAME(yy,FechaEnvio) AS Anio
FROM Pedidos INNER JOIN "Subtotales de pedidos" ON Pedidos.IDPedido = "Subtotales de pedidos".IDPedido
WHERE Pedidos.FechaEnvio Between @Fecha_inicio And @Fecha_fin;
GO

