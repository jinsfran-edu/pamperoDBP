
CREATE VIEW "Ventas por Categoria en 2020" AS
SELECT "Ventas de productos para 2020".NombreCategoria, Sum("Ventas de productos para 2020".VentasProducto) AS VentasCategoria
FROM "Ventas de productos para 2020"
GROUP BY "Ventas de productos para 2020".NombreCategoria;
GO

