-- Створення типу для класу User
CREATE TYPE user AS (
    name VARCHAR(100),         -- Ім'я користувача
    contactInfo VARCHAR(255)   -- Контактна інформація
);

-- Створення типу для класу Sculptor
CREATE TYPE sculptor AS (
    user_id INT,               -- ID користувача
    selectedTools tool[]       -- Список обраних інструментів
    currentLighting INT,       -- Поточне освітлення
    toolCatalog_id INT,        -- ID каталогу інструментів
    cart_id INT                -- ID кошика
);

-- Створення типу для класу Lighting
CREATE TYPE lighting AS (
    intensity INT,             -- Інтенсивність освітлення
    status VARCHAR(50),        -- Статус освітлення
    timeOfDay TIME,            -- Час доби
    adjustment_id INT          -- ID налаштувань освітлення
);

-- Створення типу для класу LightingAdjustment
CREATE TYPE lighting_adjustment AS (
    adjustmentType VARCHAR(50), -- Тип налаштування
    adjustmentTime TIMESTAMP    -- Час налаштування
);

-- Створення типу для класу Tool
CREATE TYPE tool AS (
    name VARCHAR(100),         -- Назва інструменту
    description TEXT,          -- Опис
    price FLOAT,               -- Ціна
    availability VARCHAR(50)   -- Наявність
);

-- Створення типу для класу ToolCatalog
CREATE TYPE tool_catalog AS (
    toolList tool[]            -- Список інструментів
);

-- Створення типу для класу Cart
CREATE TYPE cart AS (
    selectedTools tool[]       -- Обрані інструменти
);

-- Створення типу для класу Order
CREATE TYPE order AS (
    orderDate TIMESTAMP,       -- Дата замовлення
    confirmation BOOLEAN,      -- Підтвердження замовлення
    cart_id INT,               -- ID кошика
    sculptor_id INT            -- ID скульптора
);

-- Створення типу для класу Delivery
CREATE TYPE delivery AS (
    deliveryTime TIMESTAMP,    -- Час доставки
    deliveryTerms TEXT,        -- Умови доставки
    order_id INT               -- ID замовлення
);
