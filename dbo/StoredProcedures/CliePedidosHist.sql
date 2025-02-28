
CREATE PROCEDURE CliePedidosHist 
@IDCliente char(5)
AS
SELECT NombreProducto, SUM(Cantidad) AS Total
FROM Productos P, "Detalles Pedido" OD, Pedidos O, Clientes C
WHERE C.IDCliente = @IDCliente
AND C.IDCliente = O.IDCliente AND O.IDPedido = OD.IDPedido AND OD.IDProducto = P.IDProducto
GROUP BY NombreProducto;
GO

