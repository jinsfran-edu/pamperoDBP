
CREATE VIEW "Subtotales de pedidos" AS
SELECT "Detalles Pedido".IDPedido, Sum(CONVERT(decimal(19,4),("Detalles Pedido".PrecioUnitario*Cantidad*(1-Descuento)/100))*100) AS Subtotal
FROM "Detalles Pedido"
GROUP BY "Detalles Pedido".IDPedido;
GO

