USE malta_gamers;

-- Ver efectividad de todas las ofertas
DELIMITER //
DROP FUNCTION IF EXISTS sp_efectividad_oferta//
CREATE PROCEDURE sp_efectividad_oferta()
BEGIN
    SELECT
        o.id_oferta,
        pg.producto,
        o.descuento,
        o.fecha_inicio,
        o.fecha_fin,
        COUNT(DISTINCT dp.id_pedido) as pedidos_durante_oferta,
        SUM(dp.cantidad) as unidades_vendidas,
        SUM(dp.cantidad * CAST(dp.precio_unidad AS DECIMAL(10,2))) as ingreso_total,
        (SELECT AVG(ventas_diarias)
        FROM (
            SELECT COUNT(*) as ventas_diarias
            FROM detalle_pedido dp2
            JOIN pedido p2 ON dp2.id_pedido = p2.id_pedido
            WHERE dp2.id_productos_gamer = pg.id_productos_gamer
            AND p2.fecha_pedido NOT BETWEEN o.fecha_inicio AND o.fecha_fin
            GROUP BY DATE(p2.fecha_pedido)
        ) t) as promedio_ventas_diarias_normal
    FROM oferta o
    JOIN productos_gamer pg ON o.id_productos_gamer = pg.id_productos_gamer
    LEFT JOIN detalle_pedido dp ON pg.id_productos_gamer = dp.id_productos_gamer
    LEFT JOIN pedido p ON dp.id_pedido = p.id_pedido
    WHERE p.fecha_pedido BETWEEN o.fecha_inicio AND o.fecha_fin
    GROUP BY o.id_oferta
    ORDER BY unidades_vendidas DESC;
END //

--Call para ver la visualizar la efectividad de la oferta
CALL sp_efectividad_oferta();


-- Ver preferencias del cliente
DELIMITER //
DROP FUNCTION IF EXISTS sp_preferencias_cliente//
CREATE PROCEDURE sp_preferencias_cliente(
    IN id_cliente INT
)
BEGIN
    SELECT
        pg.producto,
        pg.descripcion,
        COUNT(dp.id_detalle_pedido) as veces_comprado,
        SUM(dp.cantidad) as unidades_totales,
        SUM(dp.cantidad * CAST(dp.precio_unidad AS DECIMAL(10,2))) as gasto_total,
        MAX(p.fecha_pedido) as ultima_compra
    FROM cliente_comprador cc
    JOIN pedido p ON cc.id_cliente_comprador = p.id_cliente_comprador
    JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
    JOIN productos_gamer pg ON dp.id_productos_gamer = pg.id_productos_gamer
    WHERE cc.id_cliente_comprador = id_cliente
    GROUP BY pg.id_productos_gamer
    ORDER BY veces_comprado DESC;
END //

--Call para ver la visualizar la preferencia del cliente
CALL sp_preferencias_cliente(1);