USE malta_gamers;

--Calcula total del pedido en la tabla pedido
DELIMITER //
DROP FUNCTION IF EXISTS calcular_total_pedido//
CREATE TRIGGER calcular_total_pedido
AFTER INSERT ON detalle_pedido
FOR EACH ROW
BEGIN
    DECLARE total_actual DECIMAL(10, 2);
    SELECT SUM((precio_unitario * cantidad) - (precio_unitario * cantidad * (descuento / 100)))
    INTO total_actual
    FROM DetallePedido
    WHERE id_pedido = NEW.id_pedido;

    UPDATE pedido
    SET total = total_actual + tarifa_envio
    WHERE id_pedido = NEW.id_pedido;
END//

DELIMITER ;


--Actualiza el estado del pedido al confirmar el pago
DELIMITER //
DROP FUNCTION IF EXISTS pedido_actualiza_estado//
CREATE TRIGGER pedido_actualiza_estado
AFTER INSERT ON Pago
FOR EACH ROW
BEGIN
    UPDATE Pedido
    SET estado = 'Pagado'
    WHERE id_pedido = NEW.id_pedido;
END//

DELIMITER ;

--Ejemplo
--Estado inicial
SELECT * FROM Pedido;

--Insertar pago y activa el trigger
INSERT INTO pago (id_pedido, fecha_pago, monto, metodo_pago)
VALUES (3, '2024-11-02', 450.00, 'Transferencia Bancaria');

--Volver a verificar el pedido
SELECT * FROM Pedido;