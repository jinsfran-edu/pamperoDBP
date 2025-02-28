CREATE VIEW ValoresPedido AS
SELECT O.IDPedido, O.IDCliente, O.IDEmpleado, O.EnvioPor, O.FechaPedido, O.FechaRequerida, O.FechaEnvio,
  SUM(OD.Cantidad) AS cantidad,
  CAST(SUM(OD.Cantidad * OD.PrecioUnitario * (1 - OD.Descuento))
       AS DECIMAL(12, 2)) AS val
FROM Pedidos AS O
  JOIN [Detalles Pedido] AS OD
    ON O.IDPedido = OD.IDPedido
GROUP BY O.IDPedido, O.IDCliente, O.IDEmpleado, O.EnvioPor, O.FechaPedido, O.FechaRequerida, O.FechaEnvio;
GO

