DROP DATABASE IF EXISTS malta_gamers;
CREATE DATABASE malta_gamers;
USE malta_gamers;

CREATE TABLE producto_venta(
    id_producto_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente_vendedor INT,
    id_categoria_venta INT,
    id_lugar_compra_venta INT,
    fecha_de_venta DATE,
    detalles VARCHAR(200)
);

CREATE TABLE cliente_vendedor(
    id_cliente_vendedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente_vendedor VARCHAR(100) NOT NULL,
    telefono_cliente_vendedor VARCHAR(15) NOT NULL,
    email_cliente_vendedor VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE categoria_venta(
    id_categoria_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion_venta VARCHAR(200),
    tipo_venta VARCHAR(200) NOT NULL
);

CREATE TABLE lugar_compra_venta(
    id_lugar_compra_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ubicacion VARCHAR(200) UNIQUE NOT NULL,
    encargado VARCHAR(100) NOT NULL
);

CREATE TABLE trabajadores(
    id_trabajadores INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_trabajadores VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    dni VARCHAR(8) NOT NULL
);

CREATE TABLE categoria_trabajadores(
    id_categoria_trabajadores INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion_tarea VARCHAR(200)
);

CREATE TABLE detalle_pedido(
    id_detalle_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_productos_gamer INT,
    id_lugar_compra_venta INT,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unidad VARCHAR(200)
);


CREATE TABLE pedido(
    id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente_comprador INT,
    fecha_pedido DATE,
    estado VARCHAR(100),
    total VARCHAR(100)
);

CREATE TABLE cliente_comprador(
    id_cliente_comprador INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_categoria_compra INT,
    nombre_cliente_comprador VARCHAR(100) NOT NULL,
    email_cliente_comprador VARCHAR(200) NOT NULL UNIQUE,
    direccion_cliente_comprador VARCHAR(100) NOT NULL UNIQUE,
    telefono_cliente_comprador VARCHAR(100)
);

CREATE TABLE pago(
    id_pago INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    fecha_pago DATE NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    metodo_pago VARCHAR(100)
);

CREATE TABLE envio(
    id_envio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_tarifa INT,
    estado_envio VARCHAR(100),
    fecha_envio DATE,
    fecha_recibimiento DATE,
    numero_seguimiento VARCHAR(100)
);

CREATE TABLE tarifa(
    id_tarifa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    zona VARCHAR(100) NOT NULL,
    costo DECIMAL(10,2) NOT NULL,
    metodo_envio VARCHAR(100)
);

CREATE TABLE productos_gamer(
    id_productos_gamer INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(200),
    precio  DECIMAL(10, 2) NOT NULL,
    descripcion VARCHAR(200),
    stock INT NOT NULL CHECK (stock >= 0)
);

CREATE TABLE oferta(
    id_oferta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_productos_gamer INT,
    descuento DECIMAL(6,2),
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE lugar_trabajadores(
    id_lugar_trabajadores INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_lugar_compra_venta  INT,
    id_trabajadores  INT,
    fecha_inicio_trabajador DATE
);

CREATE TABLE trabajadores_voluntarios(
    id_trabajadores_voluntarios INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_categoria_trabajadores  INT,
    id_trabajadores  INT
);


ALTER TABLE
    producto_venta
    ADD CONSTRAINT fk_constraint_id_cliente_vendedor
    FOREIGN KEY
    (id_cliente_vendedor) REFERENCES cliente_vendedor(id_cliente_vendedor);
ALTER TABLE
    producto_venta
    ADD CONSTRAINT fk_constraint_id_categoria_venta
    FOREIGN KEY
    (id_categoria_venta) REFERENCES categoria_venta(id_categoria_venta);
ALTER TABLE
    producto_venta
    ADD CONSTRAINT fk_constraint_id_lugar_compra_venta
    FOREIGN KEY
    (id_lugar_compra_venta) REFERENCES lugar_compra_venta(id_lugar_compra_venta);

ALTER TABLE
    detalle_pedido
    ADD CONSTRAINT fk_const_id_pedido
    FOREIGN KEY
    (id_pedido) REFERENCES pedido(id_pedido);
ALTER TABLE
    detalle_pedido
    ADD CONSTRAINT fk_const_id_productos_gamer
    FOREIGN KEY
    (id_productos_gamer) REFERENCES productos_gamer(id_productos_gamer);
ALTER TABLE
    detalle_pedido
    ADD CONSTRAINT fk_const_id_lugar_compra_venta
    FOREIGN KEY
    (id_lugar_compra_venta) REFERENCES lugar_compra_venta(id_lugar_compra_venta);

ALTER TABLE
    pedido
    ADD CONSTRAINT fk_constrain_id_cliente_comprador
    FOREIGN KEY
    (id_cliente_comprador) REFERENCES cliente_comprador(id_cliente_comprador);

ALTER TABLE
    pago
    ADD CONSTRAINT fk_constrai_id_pedido
    FOREIGN KEY
    (id_pedido) REFERENCES pedido(id_pedido);

ALTER TABLE
    envio
    ADD CONSTRAINT fk_constra_id_pedido
    FOREIGN KEY
    (id_pedido) REFERENCES pedido(id_pedido);
ALTER TABLE
    envio
    ADD CONSTRAINT fk_constra_id_tarifa
    FOREIGN KEY
    (id_tarifa) REFERENCES tarifa(id_tarifa);

ALTER TABLE
    oferta
    ADD CONSTRAINT fk_constr_id_productos_gamer
    FOREIGN KEY
    (id_productos_gamer) REFERENCES productos_gamer(id_productos_gamer);

ALTER TABLE
    lugar_trabajadores
    ADD CONSTRAINT fk_cons_id_lugar_compra_venta
    FOREIGN KEY
    (id_lugar_compra_venta) REFERENCES lugar_compra_venta(id_lugar_compra_venta);
ALTER TABLE
    lugar_trabajadores
    ADD CONSTRAINT fk_cons_id_productos_gamer
    FOREIGN KEY
    (id_trabajadores) REFERENCES trabajadores(id_trabajadores);

ALTER TABLE
    trabajadores_voluntarios
    ADD CONSTRAINT fk_c_id_categoria_trabajadores
    FOREIGN KEY
    (id_categoria_trabajadores) REFERENCES categoria_trabajadores(id_categoria_trabajadores);
ALTER TABLE
    trabajadores_voluntarios
    ADD CONSTRAINT fk_c_id_trabajadores
    FOREIGN KEY
    (id_trabajadores) REFERENCES trabajadores(id_trabajadores);
