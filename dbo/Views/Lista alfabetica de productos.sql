CREATE VIEW "Lista alfabetica de productos" AS
SELECT Productos.*, Categorias.NombreCategoria
FROM Categorias INNER JOIN Productos ON Categorias.IDCategoria = Productos.IDCategoria
WHERE (((Productos.Discontinuado)=0));
GO

