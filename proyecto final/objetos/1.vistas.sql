USE malta_gamers;
--Ingresos totales por período

CREATE VIEW vw_ingresos_por_periodo AS
SELECT
    YEAR(fecha_pedido) AS año,
    MONTH(fecha_pedido) AS mes,
    ROUND(SUM(CAST(total AS DECIMAL(10,2))), 2) AS ingresos_totales
FROM pedido
GROUP BY YEAR(fecha_pedido), MONTH(fecha_pedido);

-- Top 10 productos mas vendidos

CREATE VIEW vw_productos_mas_vendidos AS
SELECT
    pg.producto,
    SUM(dp.cantidad) AS unidades_vendidas,
    ROUND(SUM(dp.cantidad * CAST(dp.precio_unidad AS DECIMAL(10,2))), 2) AS total_ventas
FROM detalle_pedido dp
JOIN productos_gamer pg ON dp.id_productos_gamer = pg.id_productos_gamer
GROUP BY pg.producto
ORDER BY unidades_vendidas DESC
LIMIT 10;

-- Vista de Total de Clientes General
CREATE VIEW vw_total_clientes AS
SELECT
    COUNT(*) as total_clientes,
    COUNT(DISTINCT telefono_cliente_comprador) as clientes_con_telefono,
    COUNT(DISTINCT email_cliente_comprador) as clientes_con_email
FROM cliente_comprador;

-- Vista de Nuevos Clientes por Período
CREATE VIEW vw_nuevos_clientes_periodo AS
SELECT
    YEAR(primera_compra) as año,
    MONTH(primera_compra) as mes,
    COUNT(*) as nuevos_clientes,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cliente_comprador) as porcentaje_total
FROM (
    SELECT
        cc.id_cliente_comprador,
        MIN(p.fecha_pedido) as primera_compra
    FROM cliente_comprador cc
    LEFT JOIN pedido p ON cc.id_cliente_comprador = p.id_cliente_comprador
    GROUP BY cc.id_cliente_comprador
) as primeras_compras
GROUP BY YEAR(primera_compra), MONTH(primera_compra)
ORDER BY año, mes;