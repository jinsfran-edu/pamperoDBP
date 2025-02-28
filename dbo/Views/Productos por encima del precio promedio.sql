CREATE VIEW "Productos por encima del precio promedio" AS
SELECT Productos.NombreProducto, Productos.PrecioUnitario
FROM Productos
WHERE Productos.PrecioUnitario>(SELECT AVG(PrecioUnitario) From Productos);
GO

