SELECT
    o.Date AS order_date,
    pc.CategoryName AS category_name,
    p.ProdName AS product_name,
    p.Price AS product_price,
    o.Quantity AS order_qty,
    ROUND(o.Quantity * p.Price, 2) AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city
FROM `luamethan97.bank_muamalat.Orders` o
JOIN `luamethan97.bank_muamalat.Customers` c
    ON o.CustomerID = c.CustomerID
JOIN `luamethan97.bank_muamalat.Products` p
    ON o.ProdNumber = p.ProdNumber
JOIN `luamethan97.bank_muamalat.ProductCategory` pc
    ON p.Category = pc.CategoryID
ORDER BY o.Date ASC;