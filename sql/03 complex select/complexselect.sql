CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product VARCHAR(100) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    sale_date DATE NOT NULL,
    region VARCHAR(50) NOT NULL
);

INSERT INTO sales (product, amount, sale_date, region) VALUES
    ('Laptop',     1200.00, '2025-05-10', 'Europe'),
    ('Smartphone',  800.00, '2025-05-12', 'North America'),
    ('Headphones',  150.50, '2025-05-11', 'Asia'),
    ('Monitor',     300.75, '2025-05-09', 'Europe'),
    ('Keyboard',     75.99, '2025-05-08', 'North America');


SELECT * FROM sales ORDER BY sale_date DESC;
SELECT * FROM sales LIMIT 2;

SELECT SUM(amount) AS totalSales FROM sales;
SELECT SUM(amount) AS totalSales FROM sales ORDER BY sale_date DESC LIMIT 1;
