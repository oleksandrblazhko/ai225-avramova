/* Видалення таблиць з каскадним видаленням */
DROP TABLE IF EXISTS delivery CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS cart CASCADE;
DROP TABLE IF EXISTS toolcatalog CASCADE;
DROP TABLE IF EXISTS tool CASCADE;
DROP TABLE IF EXISTS lightingadjustment CASCADE;
DROP TABLE IF EXISTS lightingrequest CASCADE;
DROP TABLE IF EXISTS lighting CASCADE;
DROP TABLE IF EXISTS sculptor CASCADE;
DROP TABLE IF EXISTS users CASCADE;

/* Створення таблиць */
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_info VARCHAR(200)
);

CREATE TABLE sculptor (
    user_id INT PRIMARY KEY,
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE lighting (
    lighting_id SERIAL PRIMARY KEY,
    intensity INT CHECK (intensity > 0),
    status VARCHAR(50) CHECK (regexp_like(status, '^[a-zA-Z\s]+$')),
    time_of_day TIME
);

CREATE TABLE lighting_request (
    request_id SERIAL PRIMARY KEY,
    request_time TIME NOT NULL,
    lighting_id INT,
    sculptor_id INT,
    FOREIGN KEY (lighting_id) REFERENCES lighting (lighting_id),
    FOREIGN KEY (sculptor_id) REFERENCES sculptor (user_id)
);

CREATE TABLE lighting_adjustment (
    adjustment_id SERIAL PRIMARY KEY,
    adjustment_type VARCHAR(50) NOT NULL
    CHECK (regexp_like(adjustment_type, '^[a-zA-Z ]{1,50}$')),
    adjustment_time TIME NOT NULL,
    lighting_id INT,
    request_id INT,
    FOREIGN KEY (lighting_id) REFERENCES lighting (lighting_id),
    FOREIGN KEY (request_id) REFERENCES lighting_request (request_id)
);

CREATE TABLE tool (
    tool_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(500),
    price DECIMAL(10, 2) CHECK (price > 0),
    availability VARCHAR(20)
    CHECK (availability IN ('available', 'out of stock'))
);

CREATE TABLE tool_catalog (
    catalog_id SERIAL PRIMARY KEY,
    tool_id INT,
    FOREIGN KEY (tool_id) REFERENCES tool (tool_id)
);

CREATE TABLE cart (
    cart_id SERIAL PRIMARY KEY,
    sculptor_id INT,
    FOREIGN KEY (sculptor_id) REFERENCES sculptor (user_id)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    confirmation BOOLEAN NOT NULL,
    cart_id INT,
    sculptor_id INT,
    FOREIGN KEY (cart_id) REFERENCES cart (cart_id),
    FOREIGN KEY (sculptor_id) REFERENCES sculptor (user_id)
);

CREATE TABLE delivery (
    delivery_id SERIAL PRIMARY KEY,
    delivery_time DATE,
    delivery_terms VARCHAR(200),
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES orders (order_id)
);
