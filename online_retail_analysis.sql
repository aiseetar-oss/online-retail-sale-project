drop table if exists online_retail;  
use online_retail_db;
CREATE TABLE online_retail (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(10,2),
    CustomerID varchar(20),
    Country VARCHAR(100)
);
show columns from online_retail;
select count(*) as total_rows
from online_retail;
select * from online_retail;
SELECT COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_retail;
SELECT SUM(Quantity * UnitPrice) AS total_revenue
FROM online_retail;
SELECT Description,
       SUM(Quantity) AS total_quantity
FROM online_retail
GROUP BY Description
ORDER BY total_quantity DESC
LIMIT 10;
SELECT Country,
       SUM(Quantity * UnitPrice) AS revenue
FROM online_retail
GROUP BY Country
ORDER BY revenue DESC;
SELECT SUM(Quantity) AS total_quantity
FROM online_retail;