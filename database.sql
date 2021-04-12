CREATE TABLE cliente
(
    id_cliente VARCHAR(10) NOT NULL,
    identificacion VARCHAR(10) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    sexo CHAR NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    fecha_nacimiento VARCHAR(10) NOT NULL,
    PRIMARY KEY (id_cliente)
);

CREATE TABLE ventas
(
    idventa VARCHAR(10) NOT NULL,
    id_cliente VARCHAR(10) NOT NULL,
    id_producto VARCHAR(30) NOT NULL,
    total INT NOT NULL,
    PRIMARY KEY (idventa)
);

CREATE TABLE productos
(
    id VARCHAR(10) NOT NULL,
    nombre VARCHAR(10) NOT NULL,
    descripcion VARCHAR(30) NOT NULL,
    precio_unitario INT NOT NULL,
    PRIMARY KEY (id)
);