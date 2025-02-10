-- Step 1: Drop table if it already exists (ensures clean setup)
DROP TABLE IF EXISTS ecommerce_data;

-- Step 2: Create the table structure
CREATE TABLE ecommerce_data (
    InvoiceNo TEXT NOT NULL,
    StockCode TEXT NOT NULL,
    Description TEXT,
    Quantity INTEGER CHECK (Quantity > 0),
    InvoiceDate TIMESTAMP NOT NULL,
    UnitPrice DECIMAL(10,2) CHECK (UnitPrice > 0),
    CustomerID TEXT,
    Country TEXT NOT NULL
);

-- Step 3: Insert sample data
INSERT INTO ecommerce_data (InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country)
VALUES 
('536365', '85123A', 'WHITE HANGING HEART T-LIGHT HOLDER', 6, '2010-12-01 08:26:00', 2.55, '17850', 'United Kingdom'),
('536366', '71053', 'WHITE METAL LANTERN', 6, '2010-12-01 08:28:00', 3.39, '17850', 'United Kingdom'),
('536367', '84406B', 'CREAM CUPID HEARTS COAT HANGER', 8, '2010-12-01 08:34:00', 2.75, '13047', 'United Kingdom'),
('536368', '84029G', 'KNITTED UNION FLAG HOT WATER BOTTLE', 6, '2010-12-01 08:34:00', 3.39, '13047', 'United Kingdom'),
('536369', '21756', 'BATH BUILDING BLOCK WORD', 3, '2010-12-01 08:35:00', 5.95, '12583', 'United Kingdom');

-- Step 4: Query the data
SELECT * FROM ecommerce_data LIMIT 10;
