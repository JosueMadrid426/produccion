CREATE DATABASE bdtuestilo;
USE bdtuestilo;


INSERT INTO categories (id, name, description) VALUES 
(1, 'Ropa Hombre', 'Categoría de ropa para hombres'),
(2, 'Ropa Mujer', 'Categoría de ropa para mujeres'),
(3, 'Bisutería', 'Categoría de accesorios de joyería y bisutería'),
(4, 'Electrónica', 'Categoría de productos electrónicos y gadgets');


INSERT INTO products (id, color, description, image_url, name, price, size, stock, category_id) VALUES 
(1, 'Blanco', 'Camiseta de algodón 100% para uso diario', 'http://192.168.100.36:8080/images/camiseta_basica.jpg', 'Camiseta Básica', 15.99, 'M', 50, 1),  -- Ropa Hombre
(2, 'Azul', 'Jeans ajustados con diseño moderno', 'http://192.168.100.36:8080/images/jeans_slim_fit.jpg', 'Jeans Slim Fit', 49.99, '32', 30, 1),       -- Ropa Hombre
(3, 'Rojo', 'Vestido ligero para climas cálidos', 'http://192.168.100.36:8080/images/vestido_verano.jpg', 'Vestido de Verano', 29.99, 'M', 20, 2),   -- Ropa Mujer
(4, 'Negro', 'Zapatillas ligeras y cómodas para correr', 'http://192.168.100.36:8080/images/zapatillas_deportivas.jpg', 'Zapatillas Deportivas', 59.99, '42', 40, 1),  -- Ropa Hombre
(5, 'Plateado', 'Reloj analógico de acero inoxidable', 'http://192.168.100.36:8080/images/reloj_pulsera.jpg', 'Reloj de Pulsera', 149.99, 'Único', 15, 3), -- Bisutería
(6, 'Marrón', 'Bolso de cuero genuino de alta calidad', 'http://192.168.100.36:8080/images/bolso_cuero.jpg', 'Bolso de Cuero', 99.99, 'Único', 25, 3), -- Bisutería
(7, 'Negro', 'Sombrero de ala ancha para proteger del sol', 'http://192.168.100.36:8080/images/sombrero_fedora.jpg', 'Sombrero Fedora', 35.99, 'L', 10, 1),  -- Ropa Hombre
(8, 'Plateado', 'Anillo de plata esterlina con detalles finos', 'http://192.168.100.36:8080/images/anillo_plata.jpg', 'Anillo de Plata', 59.99, 'Único', 35, 3), -- Bisutería
(9, 'Verde', 'Pantalones cortos de algodón perfectos para el verano', 'http://192.168.100.36:8080/images/pantalones_cortos.jpg', 'Pantalones Cortos', 19.99, 'L', 50, 1),  -- Ropa Hombre
(10, 'Marrón', 'Sandalias de cuero con suela acolchonada', 'http://192.168.100.36:8080/images/sandalias_planas.jpg', 'Sandalias Planas', 29.99, '39', 60, 2), -- Ropa Mujer
(11, 'Negro', 'Auriculares inalámbricos con cancelación de ruido', 'http://192.168.100.36:8080/images/auriculares_inalambricos.jpg', 'Auriculares Inalámbricos', 89.99, 'Único', 50, 4), -- Electrónica
(12, 'Plateado', 'Smartwatch con seguimiento de actividad', 'http://192.168.100.36:8080/images/smartwatch.jpg', 'Smartwatch', 199.99, 'Único', 30, 4), -- Electrónica
(13, 'Negro', 'Cámara digital de alta resolución', 'http://192.168.100.36:8080/images/camara_digital.jpg', 'Cámara Digital', 499.99, 'Único', 20, 4), -- Electrónica
(14, 'Blanco', 'Tablet de 10 pulgadas con 128GB de almacenamiento', 'http://192.168.100.36:8080/images/tablet.jpg', 'Tablet 10"', 299.99, 'Único', 15, 4); -- Electrónica



INSERT INTO addresses (street, city, state, country, postal_code, additional_info) VALUES
('123 Main St', 'New York', 'NY', 'USA', '10001', 'Apt 4B'),
('456 Oak St', 'Los Angeles', 'CA', 'USA', '90001', NULL),
('789 Pine St', 'Chicago', 'IL', 'USA', '60601', 'Suite 250'),
('101 Maple Ave', 'Houston', 'TX', 'USA', '77001', NULL),
('202 Cedar Blvd', 'Phoenix', 'AZ', 'USA', '85001', 'Unit 12'),
('303 Birch St', 'Philadelphia', 'PA', 'USA', '19101', 'Floor 5'),
('404 Walnut Ave', 'San Antonio', 'TX', 'USA', '78201', 'Building B'),
('505 Elm St', 'San Diego', 'CA', 'USA', '92101', NULL),
('606 Ash Dr', 'Dallas', 'TX', 'USA', '75201', 'Apartment 7C'),
('707 Willow Ln', 'Austin', 'TX', 'USA', '73301', 'Room 14');

INSERT INTO users (first_name, last_name, email, password, phone, address_id) VALUES
('John', 'Doe', 'johndoe@example.com', 'password123', '1234567890', 1),
('Jane', 'Smith', 'janesmith@example.com', 'password456', '0987654321', 2),
('Robert', 'Johnson', 'robertj@example.com', 'pass789', '1112223333', 3),
('Emily', 'Williams', 'emilyw@example.com', 'securepass321', '3334445555', 4),
('Michael', 'Brown', 'michaelb@example.com', 'mypassword', '4445556666', 5),
('Olivia', 'Davis', 'oliviad@example.com', 'supersecure', '5556667777', 6),
('William', 'Miller', 'williamm@example.com', 'strongpass098', '6667778888', 7),
('Sophia', 'Wilson', 'sophiaw@example.com', 'secretpass567', '7778889999', 8),
('James', 'Moore', 'jamesm@example.com', 'anotherpass654', '8889990000', 9),
('Isabella', 'Taylor', 'isabellat@example.com', 'bestpassword', '9990001111', 10);

SELECT * FROM products;
SELECT * FROM categories;
SELECT * FROM users;
SELECT * FROM addresses;
SELECT * from order_items;