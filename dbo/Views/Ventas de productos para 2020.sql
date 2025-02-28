
CREATE VIEW "Ventas de productos para 2020" AS
SELECT Categorias.NombreCategoria, Productos.NombreProducto, 
Sum(CONVERT(decimal(19,4),("Detalles Pedido".PrecioUnitario*Cantidad*(1-Descuento)/100))*100) AS VentasProducto
FROM (Categorias INNER JOIN Productos ON Categorias.IDCategoria = Productos.IDCategoria) 
	INNER JOIN (Pedidos 
		INNER JOIN "Detalles Pedido" ON Pedidos.IDPedido = "Detalles Pedido".IDPedido) 
	ON Productos.IDProducto = "Detalles Pedido".IDProducto
WHERE (((Pedidos.FechaEnvio) Between '20200101' And '20201231'))
GROUP BY Categorias.NombreCategoria, Productos.NombreProducto;
GO

