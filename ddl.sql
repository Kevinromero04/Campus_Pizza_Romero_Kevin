##tablas


CREATE DATABASE campus_pizza;

USE campus_pizza;

CREATE TABLE Clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(150),
    email VARCHAR(100)
);


CREATE TABLE Productos (
    producto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo_producto VARCHAR(50),
    precio INT NOT NULL
);


CREATE TABLE Ingredientes (
    ingrediente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Producto_Ingredientes (
    producto_id INT,
    ingrediente_id INT,
    PRIMARY KEY (producto_id, ingrediente_id),
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id),
    FOREIGN KEY (ingrediente_id) REFERENCES Ingredientes(ingrediente_id)
);

CREATE TABLE Adiciones (
    adicion_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio INT NOT NULL
);

CREATE TABLE Combos (
    combo_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio_total INT NOT NULL
);

CREATE TABLE Combo_Productos (
    combo_id INT,
    producto_id INT,
    PRIMARY KEY (combo_id, producto_id),
    FOREIGN KEY (combo_id) REFERENCES Combos(combo_id),
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

CREATE TABLE Pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    fecha DATETIME NOT NULL,
    tipo_entrega boolean NOT NULL,
    total INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

CREATE TABLE Menu (
    menu_id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT,
    disponible BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

CREATE TABLE Pedido_Productos (
    pedido_id INT,
    producto_id INT,
    combo_id INT DEFAULT NULL,
    hay_adicion Boolean,
    adicion_id INT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY (pedido_id, producto_id),
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(pedido_id),
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id),
    FOREIGN KEY (combo_id) REFERENCES Combos(combo_id),
    FOREIGN KEY (adicion_id) REFERENCES Adiciones(adicion_id)
);
