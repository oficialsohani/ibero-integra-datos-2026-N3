USE DB_Customer360_Lab;
GO

-- En el esquema base, nombre ya contiene nombres y apellidos.
CREATE OR ALTER VIEW dbo.vw_consulta_ventas_cliente_nombre_apellido
AS
    SELECT c.cliente_id,
           TRIM(c.nombre) AS nombre_apellido,
           v.venta_id,
           v.fecha_venta,
           v.monto_venta
    FROM dbo.Tabla_Clientes AS c
    INNER JOIN dbo.Tabla_Ventas AS v
        ON v.cliente_id = c.cliente_id;
GO

-- Mostrar las primeras ventas para la captura de evidencia.
SELECT TOP (10) cliente_id, nombre_apellido, venta_id,
       fecha_venta, monto_venta
FROM dbo.vw_consulta_ventas_cliente_nombre_apellido
ORDER BY venta_id;
GO
