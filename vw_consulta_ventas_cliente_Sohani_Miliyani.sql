USE DB_Customer360_Lab;
GO

CREATE VIEW vw_Gold_Cliente_360 AS
SELECT
    c.cliente_id,
    LTRIM(RTRIM(c.nombre)) AS nombre_completo,
    c.email,
    c.ciudad,
    v.venta_id,
    v.monto_venta,
    v.fecha_venta
FROM Tabla_Clientes AS c
LEFT JOIN Tabla_Ventas AS v
    ON c.cliente_id = v.cliente_id;
GO

-- Consultar la vista
SELECT * FROM vw_Gold_Cliente_360;