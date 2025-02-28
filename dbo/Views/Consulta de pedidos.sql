CREATE VIEW "Consulta de pedidos" AS
SELECT Pedidos.IDPedido, Pedidos.IDCliente, Pedidos.IDEmpleado, Pedidos.FechaPedido, Pedidos.FechaRequerida, 
	Pedidos.FechaEnvio, Pedidos.EnvioPor, Pedidos.Flete, Pedidos.NombreEnvio, Pedidos.DireccionEnvio, Pedidos.CiudadEnvio, 
	Pedidos.RegionEnvio, Pedidos.CodigoPostalEnvio, Pedidos.PaisEnvio, 
	Clientes.NombreEmpresa, Clientes.Direccion, Clientes.Ciudad, Clientes.Region, Clientes.CodigoPostal, Clientes.Pais
FROM Clientes INNER JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente;
GO

