
CREATE VIEW "Ventas por Categoria" AS
SELECT Categorias.IDCategoria, Categorias.NombreCategoria, Productos.NombreProducto, 
	Sum("Detalles Pedido ampliados".PrecioAmpliado) AS VentasProducto
FROM 	Categorias INNER JOIN 
		(Productos INNER JOIN 
			(Pedidos INNER JOIN "Detalles Pedido ampliados" ON Pedidos.IDPedido = "Detalles Pedido ampliados".IDPedido) 
		ON Productos.IDProducto = "Detalles Pedido ampliados".IDProducto) 
	ON Categorias.IDCategoria = Productos.IDCategoria
WHERE Pedidos.FechaPedido BETWEEN '20200101' And '20201231'
GROUP BY Categorias.IDCategoria, Categorias.NombreCategoria, Productos.NombreProducto;
GO

