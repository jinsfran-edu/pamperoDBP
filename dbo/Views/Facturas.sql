CREATE VIEW Facturas AS
SELECT Pedidos.NombreEnvio, Pedidos.DireccionEnvio, Pedidos.CiudadEnvio, Pedidos.RegionEnvio, Pedidos.CodigoPostalEnvio, 
	Pedidos.PaisEnvio, Pedidos.IDCliente, Clientes.NombreEmpresa AS NombreCliente, Clientes.Direccion, Clientes.Ciudad, 
	Clientes.Region, Clientes.CodigoPostal, Clientes.Pais, 
	CONCAT(Nombre, ' ', Apellido) AS Vendedor, 
	Pedidos.IDPedido, Pedidos.FechaPedido, Pedidos.FechaRequerida, Pedidos.FechaEnvio, Transportistas.NombreEmpresa As NombreTransportista, 
	"Detalles Pedido".IDProducto, Productos.NombreProducto, "Detalles Pedido".PrecioUnitario, "Detalles Pedido".Cantidad, 
	"Detalles Pedido".Descuento, 
	(CONVERT(decimal(19,4),("Detalles Pedido".PrecioUnitario*Cantidad*(1-Descuento)/100))*100) AS PrecioAmpliado, Pedidos.Flete
FROM 	Transportistas INNER JOIN 
		(Productos INNER JOIN 
			(
				(Empleados INNER JOIN 
					(Clientes INNER JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente) 
				ON Empleados.IDEmpleado = Pedidos.IDEmpleado) 
			INNER JOIN "Detalles Pedido" ON Pedidos.IDPedido = "Detalles Pedido".IDPedido) 
		ON Productos.IDProducto = "Detalles Pedido".IDProducto) 
	ON Transportistas.IDTransportista = Pedidos.EnvioPor;
GO

