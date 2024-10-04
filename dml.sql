##inserciones


USE campus_pizza;

INSERT INTO Clientes (nombre, telefono, direccion, email) VALUES
('Juan Perez', '3123456789', 'Calle 123 #45-67', 'juanperez@mail.com'),
('Maria Gomez', '3109876543', 'Carrera 45 #23-45', 'mariagomez@mail.com'),
('Carlos Lopez', '3137654321', 'Avenida 89 #12-34', 'carloslopez@mail.com');


INSERT INTO Productos (nombre, tipo_producto, precio) VALUES
('Pizza margarita', 'Pizza', 18000),
('Pizza hawaiana', 'Pizza', 22000),
('Panzarotti jamon y queso', 'Panzarotti', 15000),
('Coca cola', 'bebida', 3000),
('helado de vainilla', 'Postre', 6000);


INSERT INTO Ingredientes (nombre) VALUES
('Queso mozarella'),
('jamon'),
('piña'),
('salsa de tomate'),
('masa de pizza');


INSERT INTO Producto_Ingredientes (producto_id, ingrediente_id) VALUES
(1, 1),
(1, 4), 
(1, 5), 
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5);


INSERT INTO Adiciones (nombre, precio) VALUES
('extra queso', 2000),
('tocineta', 2500),
('aceitunas', 1500);


INSERT INTO Combos (nombre, precio_total) VALUES
('Combo 1: Pizza margarita + coca cola', 20000),
('Combo 2: Pizza hawaiana + helado', 26000);


INSERT INTO Combo_Productos (combo_id, producto_id) VALUES
(1, 1),
(1, 4), 
(2, 2),
(2, 5);


INSERT INTO Pedidos (cliente_id, fecha, tipo_entrega, total) VALUES
(1, '2024-10-04 12:30:00', 1, 20000),
(2, '2024-10-04 13:00:00', 0, 26000);


INSERT INTO Pedido_Productos (pedido_id, producto_id, combo_id, hay_adicion, adicion_id, cantidad) VALUES
(1, 1, 1, 0, NULL, 1),
(2, 2, 2, 1, 1, 1);


INSERT INTO Menu (producto_id, disponible) VALUES
(1, TRUE),
(2, TRUE),
(3, TRUE),
(4, TRUE),
(5, TRUE);
