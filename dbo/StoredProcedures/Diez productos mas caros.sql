

CREATE PROCEDURE "Diez productos mas caros" AS
SET ROWCOUNT 10
SELECT Productos.NombreProducto AS TenMostExpensiveProductos, Productos.PrecioUnitario
FROM Productos
ORDER BY Productos.PrecioUnitario DESC
GO

