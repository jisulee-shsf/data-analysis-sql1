-- 1. INNER JOIN
SELECT * 
FROM orders
INNER JOIN orderdetails ON orders.order_id = orderdetails.order_id;

-- 2. LEFT JOIN & RIGHT JOIN
SELECT * 
FROM orders
LEFT JOIN orderdetails ON orders.order_id = orderdetails.order_id;

SELECT * 
FROM orders
RIGHT JOIN orderdetails ON orders.order_id = orderdetails.order_id;

-- 3. OUTER JOIN(LEFT JOIN + RIGHT JOIN)
SELECT * 
FROM orders
LEFT JOIN orderdetails ON orders.order_id = orderdetails.order_id
UNION 
SELECT * 
FROM orders
RIGHT JOIN orderdetails ON orders.order_id = orderdetails.order_id;

-- 4. CROSS JOIN
SELECT * 
FROM orders
CROSS JOIN orderdetails;

-- 5. SELF JOIN
SELECT *
FROM orders orders1
INNER JOIN orders orders2 ON orders1.order_id = orders2.order_id;