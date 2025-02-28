
CREATE VIEW "Resumen de Ventas por Trimestre" AS
SELECT Pedidos.FechaEnvio, Pedidos.IDPedido, "Subtotales de pedidos".Subtotal
FROM Pedidos INNER JOIN "Subtotales de pedidos" ON Pedidos.IDPedido = "Subtotales de pedidos".IDPedido
WHERE Pedidos.FechaEnvio IS NOT NULL;
GO

