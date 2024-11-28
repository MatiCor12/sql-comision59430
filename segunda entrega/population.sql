-- Inserting data into cliente_vendedor
INSERT INTO cliente_vendedor (nombre_cliente_vendedor, telefono_cliente_vendedor, email_cliente_vendedor) VALUES
('Juan Perez', '987654321', 'juan.perez@gmail.com'),
('María Gonzalez', '912345678', 'maria.gonzalez@hotmail.com'),
('Carlos Rodriguez', '945678912', 'carlos.rodriguez@outlook.com'),
('Ana Martinez', '978123456', 'ana.martinez@yahoo.com'),
('Luis Fernando', '965432187', 'luis.fernando@gmail.com');

-- Inserting data into categoria_venta
INSERT INTO categoria_venta (descripcion_venta, tipo_venta) VALUES
('Venta de productos gaming', 'Electrónica'),
('Venta de accesorios', 'Complementos'),
('Venta de consolas', 'Tecnología'),
('Venta de componentes PC', 'Hardware'),
('Venta de juegos digitales', 'Software');

-- Inserting data into lugar_compra_venta
INSERT INTO lugar_compra_venta (ubicacion, encargado) VALUES
('Av. Los Olivos 123, Lima', 'Roberto Sánchez'),
('Centro Comercial Plaza Norte', 'Marcela Ríos'),
('Tienda Online', 'Carlos Mendoza'),
('Showroom Gamer', 'Laura Torres'),
('Local Especializado', 'Diego Ramírez');

-- Inserting data into trabajadores
/*INSERT INTO trabajadores (nombre_trabajadores, fecha_nacimiento, dni) VALUES
('Pedro Ramirez', '1990-05-15', '45678901'),
('Sofía López', '1988-11-22', '56789012'),
('Miguel Torres', '1995-03-10', '67890123'),
('Valentina Silva', '1992-07-30', '78901234'),
('Diego Mendoza', '1987-09-18', '89012345'); */

-- Inserting data into categoria_trabajadores
INSERT INTO categoria_trabajadores (descripcion_tarea) VALUES
('Ventas y Atención al Cliente'),
('Soporte Técnico'),
('Administración'),
('Logística y Distribución'),
('Marketing Digital');

-- Inserting data into cliente_comprador
INSERT INTO cliente_comprador (id_categoria_compra, nombre_cliente_comprador, email_cliente_comprador, direccion_cliente_comprador, telefono_cliente_comprador) VALUES
(1, 'Javier Herrera', 'javier.herrera@gmail.com', 'Calle Las Flores 456, Lima', '998765432'),
(2, 'Camila Ruiz', 'camila.ruiz@hotmail.com', 'Av. La Marina 789, Miraflores', '991234567'),
(3, 'Sebastián Ortiz', 'sebastian.ortiz@yahoo.com', 'Jr. Sucre 234, San Isidro', '997654321'),
(4, 'Valeria Chávez', 'valeria.chavez@outlook.com', 'Urb. Santa Patricia 567, Surco', '992345678'),
(5, 'Andrés Morales', 'andres.morales@gmail.com', 'Condominio Las Palmas 890, San Borja', '996543210');

-- Inserting data into productos_gamer
INSERT INTO productos_gamer (producto, precio, descripcion, stock) VALUES
('Nvidia GeForce RTX 3080', 1200.50, 'Tarjeta gráfica de alto rendimiento', 10),
('PlayStation 5', 599.99, 'Consola de última generación', 15),
('Razer Blackwidow V3', 159.99, 'Teclado mecánico gaming', 20),
('Monitor Ultrawide LG 34"', 499.75, 'Monitor curvo para gaming', 8),
('Auriculares Wireless SteelSeries', 249.99, 'Auriculares gaming inalámbricos', 12);

-- Inserting data into tarifa
INSERT INTO tarifa (zona, costo, metodo_envio) VALUES
('Lima Metropolitana', 10.50, 'Delivery Express'),
('Provincias Costa', 15.75, 'Envío Estándar'),
('Provincias Sierra', 20.25, 'Servicio Prioritario'),
('Provincias Selva', 25.00, 'Envío Especializado'),
('Lima Callao', 8.75, 'Delivery Rápido');

-- Inserting data into pedido
INSERT INTO pedido (id_cliente_comprador, fecha_pedido, estado, total) VALUES
(1, '2024-02-15', 'Completado', '1500.50'),
(2, '2024-02-16', 'En Proceso', '800.99'),
(3, '2024-02-17', 'Pendiente', '450.75'),
(4, '2024-02-18', 'Enviado', '1200.25'),
(5, '2024-02-19', 'Confirmado', '950.60');

-- Inserting data into detalle_pedido
INSERT INTO detalle_pedido (id_pedido, id_productos_gamer, id_lugar_compra_venta, cantidad, precio_unidad) VALUES
(1, 1, 1, 1, '1200.50'),
(2, 2, 2, 1, '599.99'),
(3, 3, 3, 2, '159.99'),
(4, 4, 4, 1, '499.75'),
(5, 5, 5, 1, '249.99');

-- Inserting data into pago
INSERT INTO pago (id_pedido, fecha_pago, monto, metodo_pago) VALUES
(1, '2024-02-15', 1500.50, 'Tarjeta de Crédito'),
(2, '2024-02-16', 800.99, 'PayPal'),
(3, '2024-02-17', 450.75, 'Transferencia Bancaria'),
(4, '2024-02-18', 1200.25, 'Tarjeta de Débito'),
(5, '2024-02-19', 950.60, 'Efectivo');

-- Inserting data into envio
INSERT INTO envio (id_pedido, id_tarifa, estado_envio, fecha_envio, fecha_recibimiento, numero_seguimiento) VALUES
(1, 1, 'Entregado', '2024-02-16', '2024-02-17', 'LIM-001-2024'),
(2, 2, 'En Tránsito', '2024-02-17', NULL, 'LIM-002-2024'),
(3, 3, 'Procesando', '2024-02-18', NULL, 'LIM-003-2024'),
(4, 4, 'En Ruta', '2024-02-19', NULL, 'LIM-004-2024'),
(5, 5, 'Entregado', '2024-02-20', '2024-02-21', 'LIM-005-2024');

-- Inserting data into oferta
INSERT INTO oferta (id_productos_gamer, descuento, fecha_inicio, fecha_fin) VALUES
(1, 10.00, '2024-02-15', '2024-02-28'),
(2, 5.50, '2024-02-16', '2024-02-29'),
(3, 15.25, '2024-02-17', '2024-03-01'),
(4, 8.75, '2024-02-18', '2024-03-02'),
(5, 12.50, '2024-02-19', '2024-03-03');

-- Inserting data into lugar_trabajadores
INSERT INTO lugar_trabajadores (id_lugar_compra_venta, id_trabajadores, fecha_inicio_trabajador) VALUES
(1, 1, '2023-01-15'),
(2, 2, '2023-02-20'),
(3, 3, '2023-03-10'),
(4, 4, '2023-04-05'),
(5, 5, '2023-05-01');

-- Inserting data into trabajadores_voluntarios
INSERT INTO trabajadores_voluntarios (id_categoria_trabajadores, id_trabajadores) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Inserting data into producto_venta
INSERT INTO producto_venta (id_cliente_vendedor, id_categoria_venta, id_lugar_compra_venta, fecha_de_venta, detalles) VALUES
(1, 1, 1, '2024-02-15', 'Venta de tarjeta gráfica'),
(2, 2, 2, '2024-02-16', 'Venta de accesorios gaming'),
(3, 3, 3, '2024-02-17', 'Venta de consola PlayStation'),
(4, 4, 4, '2024-02-18', 'Venta de componentes PC'),
(5, 5, 5, '2024-02-19', 'Venta de juegos digitales');