
CREATE VIEW "Totales de ventas por cantidad" AS
SELECT "Subtotales de pedidos".Subtotal AS MontoVenta, Pedidos.IDPedido, Clientes.NombreEmpresa, Pedidos.FechaEnvio
FROM 	Clientes INNER JOIN 
		(Pedidos INNER JOIN "Subtotales de pedidos" ON Pedidos.IDPedido = "Subtotales de pedidos".IDPedido) 
	ON Clientes.IDCliente = Pedidos.IDCliente
WHERE ("Subtotales de pedidos".Subtotal >2500) AND (Pedidos.FechaEnvio BETWEEN '20200101' And '20201231');
GO

