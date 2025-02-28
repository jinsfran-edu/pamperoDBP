
CREATE VIEW "Detalles Pedido ampliados" AS
SELECT "Detalles Pedido".IDPedido, "Detalles Pedido".IDProducto, Productos.NombreProducto, 
	"Detalles Pedido".PrecioUnitario, "Detalles Pedido".Cantidad, "Detalles Pedido".Descuento, 
	(CONVERT(decimal(19,4),("Detalles Pedido".PrecioUnitario*Cantidad*(1-Descuento)/100))*100) AS PrecioAmpliado
FROM Productos INNER JOIN "Detalles Pedido" ON Productos.IDProducto = "Detalles Pedido".IDProducto;
GO

