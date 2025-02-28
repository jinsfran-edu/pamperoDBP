

CREATE PROCEDURE CliePedidosRealizados 
@IDCliente char(5)
AS
SELECT IDPedido, 
	FechaPedido,
	FechaRequerida,
	FechaEnvio
FROM Pedidos
WHERE IDCliente = @IDCliente
ORDER BY IDPedido;
GO

