CREATE VIEW "Productos por categoria" AS
SELECT Categorias.NombreCategoria, Productos.NombreProducto, Productos.CantidadPorUnidad, Productos.UnidadesEnStock, Productos.Discontinuado
FROM Categorias INNER JOIN Productos ON Categorias.IDCategoria = Productos.IDCategoria
WHERE Productos.Discontinuado <> 1;
GO

