
CREATE PROCEDURE VentasPorCategoria
    @NombreCategoria varchar(15), 
	@AnioPedido varchar(4) = '2021'
AS
IF @AnioPedido != '2019' AND @AnioPedido != '2020' AND @AnioPedido != '2021' 
BEGIN
	SELECT @AnioPedido = '2021'
END

SELECT NombreProducto,
	ROUND(SUM(CONVERT(decimal(14,2), OD.Cantidad * (1-OD.Descuento) * OD.PrecioUnitario)), 0) AS CompraTotal
FROM "Detalles Pedido" OD, Pedidos O, Productos P, Categorias C
WHERE OD.IDPedido = O.IDPedido 
	AND OD.IDProducto = P.IDProducto 
	AND P.IDCategoria = C.IDCategoria
	AND C.NombreCategoria = @NombreCategoria
	AND SUBSTRING(CONVERT(varchar(22), O.FechaPedido, 111), 1, 4) = @AnioPedido
GROUP BY NombreProducto
ORDER BY NombreProducto
GO

