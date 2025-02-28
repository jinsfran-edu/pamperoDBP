CREATE VIEW "Lista de productos actual" AS
SELECT Product_List.IDProducto, Product_List.NombreProducto
FROM Productos AS Product_List
WHERE (((Product_List.Discontinuado)=0));
GO

