

CREATE PROCEDURE "Ventas de empleados por pais" 
@Fecha_inicio DateTime, 
@Fecha_fin DateTime 
AS
SELECT Empleados.Pais, Empleados.Apellido, Empleados.Nombre, Pedidos.FechaEnvio, Pedidos.IDPedido, "Subtotales de pedidos".Subtotal AS MontoVenta
FROM Empleados INNER JOIN 
	(Pedidos INNER JOIN "Subtotales de pedidos" ON Pedidos.IDPedido = "Subtotales de pedidos".IDPedido) 
	ON Empleados.IDEmpleado = Pedidos.IDEmpleado
WHERE Pedidos.FechaEnvio Between @Fecha_inicio And @Fecha_fin
GO

