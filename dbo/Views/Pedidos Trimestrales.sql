
CREATE VIEW "Pedidos Trimestrales" AS
SELECT DISTINCT Clientes.IDCliente, Clientes.NombreEmpresa, Clientes.Ciudad, Clientes.Pais
FROM Clientes RIGHT JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente
WHERE Pedidos.FechaPedido BETWEEN '20200101' And '20201231';
GO

