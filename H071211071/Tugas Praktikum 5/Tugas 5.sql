-- USE classicmodels;
-- 
-- -- Soal 1
-- -- SELECT * FROM customers;
-- -- SELECT * FROM orders;
-- -- 
-- -- SELECT customers.customerName, orders.status, customers.creditLimit, orders.comments
-- -- FROM customers
-- -- INNER JOIN orders
-- -- ON customers.customerNumber = orders.customerNumber
-- -- WHERE orders.status ='On Hold' AND orders.comments LIKE "%credit limit exceeded%";
-- 
-- -- Soal 2
-- -- SELECT * FROM customers;
-- -- SELECT * FROM orders;
-- -- 
-- -- SELECT customers.customerName, orders.status, orders.comments
-- -- FROM customers
-- -- INNER JOIN orders
-- -- ON customers.customerNumber = orders.customerNumber
-- -- WHERE orders.comments LIKE '%DHL%'
-- -- 
-- -- Soal 3
-- -- SELECT * FROM customers;
-- -- SELECT * FROM products;
-- -- SELECT * FROM orders;
-- -- SELECT * FROM orderdetails;
-- -- 
-- -- SELECT customers.customerName, products.productName, orders.`status`, orders.shippedDate
-- -- FROM products
-- -- INNER JOIN orderdetails
-- -- ON products.productCode = orderdetails.productCode
-- -- INNER JOIN orders
-- -- ON orderdetails.orderNumber = orders.orderNumber
-- -- INNER JOIN customers
-- -- ON orders.customerNumber = customers.customerNumber
-- -- WHERE products.productName LIKE '%Ferrari%' ORDER BY orders.shippedDate DESC;
-- 
-- -- Soal 4
-- INSERT  INTO orders(orderNumber,orderDate,requiredDate,shippedDate, `status`, comments,customerNumber)
-- VALUES ('10426',CURRENT_DATE(),CURRENT_DATE() + INTERVAL 1 YEAR, NULL, 'In Process',NULL,'465');
-- SELECT * FROM orders WHERE customerNumber = '465';
-- 
-- INSERT INTO orderdetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
-- VALUES ('10426', 'S18_2957', '50', '62.46', '1');
-- SELECT * FROM orderdetails WHERE orderNumber = '2022';
-- 
-- SELECT c.customerNumber, c.customerName, o.`status`, o.orderDate, o.shippedDate, od.quantityOrdered, p.productName
-- FROM customers AS c
-- JOIN orders AS o
-- ON c.customerNumber = o.customerNumber
-- JOIN orderdetails AS od
-- ON o.orderNumber = od.orderNumber
-- JOIN products AS p
-- ON od.productCode = p.productCode
-- WHERE c.customerNumber = '465';