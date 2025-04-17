-- Create ADMIN table
create database food;
use food;
CREATE TABLE ADMIN (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    code VARCHAR(255),
    date DATE NOT NULL
);


CREATE TABLE DISHES (
    dish_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    slogan VARCHAR(255),
    price DECIMAL(10, 2) NOT NULL,
    img VARCHAR(255),
    FOREIGN KEY (restaurant_id) REFERENCES RESTAURANT(restaurant_id)
);

-- Create REMARK table
CREATE TABLE REMARK (
    remark_id INT PRIMARY KEY AUTO_INCREMENT,
    from_id INT NOT NULL,
    status VARCHAR(255),
    remark TEXT,
    remark_date DATE,
    FOREIGN KEY (from_id) REFERENCES ADMIN(admin_id)
);

-- Create RESTAURANT table
CREATE TABLE RESTAURANT (
    restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    url VARCHAR(255),
    open_hours TIME,
    close_hours TIME,
    open_days VARCHAR(255),
    address VARCHAR(255),
    img VARCHAR(255),
    date DATE NOT NULL,
    FOREIGN KEY (category_id) REFERENCES RES_CATEGORY(category_id)
);

-- Create RES_CATEGORY table
CREATE TABLE RES_CATEGORY (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL,
    date DATE NOT NULL
);

-- Create USERS table
CREATE TABLE USERS (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    password VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    status VARCHAR(255),
    date DATE NOT NULL
);

-- Create USERS_ORDERS table
CREATE TABLE USERS_ORDERS (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    dish_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    status VARCHAR(255),
    date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    FOREIGN KEY (dish_id) REFERENCES DISHES(dish_id)
);

-- Create triggers
DELIMITER //

CREATE TRIGGER admin_insert_trigger
BEFORE INSERT ON ADMIN
FOR EACH ROW
BEGIN
    IF NEW.username = '' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Username cannot be empty';
    END IF;
    IF NEW.password = '' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Password cannot be empty';
    END IF;
END //

CREATE TRIGGER dishes_price_check_trigger
BEFORE INSERT ON DISHES
FOR EACH ROW
BEGIN
    IF NEW.price <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Price must be greater than zero';
    END IF;
END //

CREATE TRIGGER remark_status_check_trigger
BEFORE INSERT ON REMARK
FOR EACH ROW
BEGIN
    IF NEW.status NOT IN ('Pending', 'Approved', 'Rejected') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid status';
    END IF;
END //

CREATE TRIGGER restaurant_phone_check_trigger
BEFORE INSERT ON RESTAURANT
FOR EACH ROW
BEGIN
    IF NEW.phone REGEXP '^[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Phone number must contain only digits';
    END IF;
END //

CREATE TRIGGER users_phone_check_trigger
BEFORE INSERT ON USERS
FOR EACH ROW
BEGIN
    IF NEW.phone REGEXP '^[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Phone number must contain only digits';
    END IF;
END //

DELIMITER ;

-- Insert values into ADMIN table
INSERT INTO ADMIN (username, password, email, code, date) 
VALUES 
('admin1', 'admin123', 'admin1@example.com', 'AD001', '2024-05-25'),
('admin2', 'admin456', 'admin2@example.com', 'AD002', '2024-05-25'),
('admin3', 'admin789', 'admin3@example.com', 'AD003', '2024-05-25'),
('admin4', 'admin101', 'admin4@example.com', 'AD004', '2024-05-25'),
('admin5', 'admin202', 'admin5@example.com', 'AD005', '2024-05-25'),
('admin6', 'admin303', 'admin6@example.com', 'AD006', '2024-05-25'),
('admin7', 'admin404', 'admin7@example.com', 'AD007', '2024-05-25'),
('admin8', 'admin505', 'admin8@example.com', 'AD008', '2024-05-25'),
('admin9', 'admin606', 'admin9@example.com', 'AD009', '2024-05-25'),
('admin10', 'admin707', 'admin10@example.com', 'AD010', '2024-05-25');

-- Insert values into DISHES table
INSERT INTO DISHES (restaurant_id, title, slogan, price, img) 
VALUES 
(1, 'Margherita Pizza', 'The classic Italian favorite', 9.99, 'margherita.jpg'),
(1, 'Spaghetti Bolognese', 'Authentic Italian taste', 12.50, 'spaghetti.jpg'),
(2, 'Sushi Platter', 'Fresh and delicious', 24.99, 'sushi.jpg'),
(2, 'Chicken Teriyaki', 'Grilled to perfection', 16.99, 'teriyaki.jpg'),
(3, 'Pad Thai', 'Thai street food at its best', 10.99, 'pad_thai.jpg'),
(3, 'Tom Yum Soup', 'Spicy and tangy Thai delight', 8.50, 'tom_yum.jpg'),
(4, 'Cheeseburger', 'Classic American burger', 11.99, 'burger.jpg'),
(4, 'BBQ Ribs', 'Fall-off-the-bone goodness', 18.99, 'ribs.jpg'),
(5, 'Fish and Chips', 'British pub favorite', 14.50, 'fish_chips.jpg'),
(5, 'Shepherd''s Pie', 'Hearty and comforting', 13.75, 'shepherds_pie.jpg');

-- Insert values into REMARK table
INSERT INTO REMARK (from_id, status, remark, remark_date) 
VALUES 
(1, 'Pending', 'Please review this order', '2024-05-25'),
(2, 'Approved', 'Order processed successfully', '2024-05-25'),
(3, 'Rejected', 'Item out of stock', '2024-05-25'),
(4, 'Pending', 'Waiting for confirmation', '2024-05-25'),
(5, 'Approved', 'Ready for delivery', '2024-05-25'),
(1, 'Rejected', 'Customer requested refund', '2024-05-25'),
(2, 'Pending', 'Need additional information', '2024-05-25'),
(3, 'Approved', 'Payment received', '2024-05-25'),
(4, 'Rejected', 'Customer unavailable', '2024-05-25'),
(5, 'Pending', 'Delivery delayed', '2024-05-25');

-- Insert values into RESTAURANT table
INSERT INTO RESTAURANT (category_id, title, email, phone, url, open_hours, close_hours, open_days, address, img, date) 
VALUES 
(1, 'Pizzeria Bella', 'info@pizzeriabella.com', '123-456-7890', 'www.pizzeriabella.com', '11:00:00', '22:00:00', 'Monday - Sunday', '123 Main St, City, Country', 'pizzeria_bella.jpg', '2024-05-25'),
(2, 'Sushi House', 'info@sushihouse.com', '123-456-7891', 'www.sushihouse.com', '12:00:00', '23:00:00', 'Monday - Sunday', '456 Oak St, City, Country', 'sushi_house.jpg', '2024-05-25'),
(3, 'Thai Taste', 'info@thaitaste.com', '123-456-7892', 'www.thaitaste.com', '10:30:00', '21:30:00', 'Monday - Sunday', '789 Pine St, City, Country', 'thai_taste.jpg', '2024-05-25'),
(4, 'Grill & Bar', 'info@grillandbar.com', '123-456-7893', 'www.grillandbar.com', '13:00:00', '00:00:00', 'Monday - Sunday', '101 Maple St, City, Country', 'grill_bar.jpg', '2024-05-25'),
(5, 'British Bites', 'info@britishbites.com', '123-456-7894', 'www.britishbites.com', '09:00:00', '21:00:00', 'Monday - Sunday', '202 Elm St, City, Country', 'british_bites.jpg', '2024-05-25');

-- Insert values into RES_CATEGORY table
INSERT INTO RES_CATEGORY (category_name, date) 
VALUES 
('Italian', '2024-05-25'),
('Japanese', '2024-05-25'),
('Thai', '2024-05-25'),
('American', '2024-05-25'),
('British', '2024-05-25');