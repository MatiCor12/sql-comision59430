USE malta_gamers;

--Calcula el Costo de Envío

DELIMITER //
DROP FUNCTION IF EXISTS CalcularCostoEnvio//
CREATE FUNCTION CalcularCostoEnvio(zona VARCHAR(100), metodo VARCHAR(100))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE costo DECIMAL(10, 2);
    SELECT costo
    INTO costo
    FROM tarifa
    WHERE zona = zona AND metodo_envio = metodo
    LIMIT 1;
    RETURN COALESCE(costo, 0); -- Devuelve 0 si no se encuentra tarifa.
END//

-- Ejemplo
SELECT CalcularCostoEnvio('Cordoba', 'Estandar') AS costo_envio;

--Genera Número de Seguimiento para Envío

DELIMITER //
DROP FUNCTION IF EXISTS GenerarNumeroSeguimiento//
CREATE FUNCTION GenerarNumeroSeguimiento(pedido INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    RETURN CONCAT('ENV-', pedido, '-', UNIX_TIMESTAMP());
END//
DELIMITER ;

-- Ejemplo
SELECT GenerarNumeroSeguimiento(1) AS numero_seguimiento;