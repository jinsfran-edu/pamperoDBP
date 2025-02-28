
CREATE VIEW ClientesOrdenes AS
SELECT
  O.IDCliente, 
  DATEADD(month, DATEDIFF(month, CAST('19000101' AS DATE), O.FechaPedido), CAST('19000101' AS DATE)) AS MesOrden,
  SUM(OD.Cantidad) AS cantidad
FROM Pedidos AS O
  JOIN [Detalles Pedido] AS OD
    ON OD.IDPedido = O.IDPedido
GROUP BY IDCliente, DATEADD(month, DATEDIFF(month, CAST('19000101' AS DATE), O.FechaPedido), CAST('19000101' AS DATE));
GO

