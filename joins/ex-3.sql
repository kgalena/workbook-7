
-- 1. List the product id, product name, unit price and category name of all
-- products. Order by category name and within that, by product name.
SELECT productID, ProductName,UnitPrice, categories.CategoryName
FROM products
Join categories on products.CategoryID = categories.CategoryID;
-- 2. List the product id, product name, unit price and supplier name of all
-- products that cost more than $75. Order by product name.
Select products.productID, products.productName, products.unitPrice, suppliers.CompanyName
From products
join suppliers on products.SupplierID = suppliers.SupplierID
Where UnitPrice > 75 
order by ProductName;
-- 3. List the product id, product name, unit price, category name, and supplier
-- name of every product. Order by product name.
select products.ProductID,
products.ProductName,
products.UnitPrice,
categories.categoryname,
suppliers.CompanyName
From products
join suppliers on products.SupplierID = suppliers.SupplierID
Join categories on products.CategoryID = categories.CategoryID;



-- 4. What is the product name(s) and categories of the most expensive
-- products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.
-- 5. List the order id, ship name, ship address, and shipping company name of
-- every order that shipped to Germany.
-- 6. List the order id, order date, ship name, ship address of all orders that
-- ordered "Sasquatch Ale"?
-- Commit and push your code!