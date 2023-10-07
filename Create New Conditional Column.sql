CREATE DATABASE SURYA ;

SHOW databases  ;

USE  surya ;

CREATE TABLE sales_data (
    order_id INT PRIMARY KEY,
    sales DECIMAL(10, 2),
    profit DECIMAL(10, 2),
    ship_mode VARCHAR(20)
);


INSERT INTO sales_data (order_id, sales, profit, ship_mode)
VALUES
    (1, 100.00, 50.00, 'Same Day'),
    (2, 200.00, 80.00, 'First Class'),
    (3, 150.00, 60.00, 'Standard Class'),
    (4, 300.00, 100.00, 'Express'),
    (5, 120.00, 40.00, 'Standard Class');

SELECT * FROM sales_data;

SELECT
    order_id,
    sales,
    profit,
    ship_mode,
    CASE
        WHEN ship_mode = 'Same Day' THEN (sales - profit) * 1.2
        WHEN ship_mode = 'First Class' THEN (sales - profit) * 1.1
        WHEN ship_mode = 'Standard Class' THEN (sales - profit) * 1.05
        ELSE (sales - profit)
    END AS total_cost
FROM
    sales_data;
