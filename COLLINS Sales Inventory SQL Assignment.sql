-- CREATE schema assignment
CREATE SCHEMA assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;

-- 1. Write a query to select all data from the `Customers` table.


SELECT *
FROM assignment.customers;



-- 2. Write a query to select the total number of products from the `Products` table.



SELECT COUNT(*) AS total_products
FROM assignment.products;



-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.



SELECT product_name, price
FROM assignment.products
WHERE price > 500;



-- 4. Write a query to find the average price of all products from the `Products` table.



SELECT AVG(price) AS average_price
FROM assignment.products;


SELECT ROUND(AVG(price), 2) AS average_price
FROM assignment.products;



-- 5. Write a query to find the total sales amount across all records from the `Sales` table.



SELECT SUM(total_amount) AS total_sales
FROM assignment.sales;



-- 6. Write a query to select distinct membership statuses from the `Customers` table.


SELECT DISTINCT membership_status
FROM assignment.customers;


-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.


SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM assignment.customers;


-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.


SELECT *
FROM assignment.products
WHERE category = 'Electronics';


-- 9. Write a query to find the highest price from the `Products` table.



SELECT MAX(price) AS highest_price
FROM assignment.products;


SELECT *
FROM assignment.products
WHERE price = (SELECT MAX(price) FROM assignment.products);




-- 10. Write a query to count the number of sales for each product from the `Sales` table.



SELECT p.product_name, COUNT(s.sale_id) AS number_of_sales
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.product_name;




SELECT product_id, SUM(quantity_sold) AS total_quantity_sold
FROM assignment.sales
GROUP BY product_id;



SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.product_name;



-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.



SELECT 
    p.product_id,
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name;



-- 12. Write a query to find the lowest price of products in the `Products` table.


SELECT MIN(price) AS lowest_price
FROM assignment.products;



-- 13. Write a query to find customers who have purchased products with a price greater than 1000.



SELECT 
    c.first_name || ' ' || c.last_name AS full_name,
    p.price
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
JOIN assignment.products p
  ON s.product_id = p.product_id
WHERE p.price > 1000;



-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product



SELECT 
    p.product_name,
=    SUM(s.total_amount) AS total_sales_amount
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.product_name;



-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.


SELECT 
    c.first_name || ' ' || c.last_name AS full_name,
    SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
GROUP BY c.first_name, c.last_name;





-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.



SELECT 
    c.first_name,
    c.last_name,
    p.product_name,
    s.quantity_sold
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
JOIN assignment.products p
  ON s.product_id = p.product_id;





-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.


SELECT 
    c1.customer_id AS customer1_id,
    c1.first_name || ' ' || c1.last_name AS customer1_name,
    c2.customer_id AS customer2_id,
    c2.first_name || ' ' || c2.last_name AS customer2_name,
    c1.membership_status
FROM assignment.customers c1
JOIN assignment.customers c2
  ON c1.membership_status = c2.membership_status
WHERE c1.customer_id < c2.customer_id;






-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.


SELECT 
    p.product_name,
    COUNT(s.sale_id) AS total_sales
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.product_name;






-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.



SELECT *
FROM assignment.products
WHERE stock_quantity < 100;




-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.


SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.product_name
HAVING SUM(s.quantity_sold) >=2;





-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.


SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
JOIN assignment.products p
  ON s.product_id = p.product_id
WHERE p.category IN ('Electronics', 'Appliances');





-- 22. Write a query to calculate the total sales amount per product and group the result by product name.




SELECT 
    p.product_name,
    SUM(s.total_amount) AS total_sales_amount
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.product_name;





-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.

SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM assignment.sales s
JOIN assignment.customers c
  ON s.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023;





-- 24. Write a query to find the customers with the highest total sales in 2023.


SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM assignment.sales s
JOIN assignment.customers c
  ON s.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent desc;




-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.


SELECT 
    p.product_id,
    p.product_name,
    p.price
FROM assignment.products p
JOIN assignment.sales s
  ON p.product_id = s.product_id
WHERE p.price = (
    SELECT MAX(p2.price)
    FROM assignment.products p2
    JOIN assignment.sales s2
      ON p2.product_id = s2.product_id
);



-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.



select count(*) as customers_above_500
from(
     select customer_id
     from assignment.sales
     group by customer_id
     having sum(total_amount) > 500
) sub;







-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.



SELECT 
    p.product_name,
    COUNT(s.sale_id) AS total_sales
FROM assignment.sales s
JOIN assignment.customers c
  ON s.customer_id = c.customer_id
JOIN assignment.products p
  ON s.product_id = p.product_id
WHERE c.membership_status = 'Gold'
GROUP BY p.product_name;



-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10). 


select
     p.product_id,
     p.product_name,
     i.stock_quantity
from assignment.products p
left join assignment.inventory i
    on p.product_id = i.product_id
where i.stock_quantity < 10;
show search_path;
select * from assignment.products order by stock_quantity;





-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.



SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.quantity_sold) AS total_quantity_bought
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.quantity_sold) > 5;



-- 30. Write a query to find the average quantity sold per product.



SELECT 
    p.product_name,
    AVG(s.quantity_sold) AS avg_quantity_sold
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.product_name;



SELECT AVG(quantity_sold) AS overall_avg_quantity
FROM assignment.sales;


SELECT 
    product_id,
    AVG(quantity_sold) AS avg_quantity_sold
FROM assignment.sales
GROUP BY product_id;






-- 31. Write a query to find the number of sales made in the month of December 2023.



SELECT COUNT(*) AS december_2023_sales
FROM assignment.sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023
  AND EXTRACT(MONTH FROM sale_date) = 12;






-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.


SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM assignment.sales s
JOIN assignment.customers c
  ON s.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;




-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.



SELECT DISTINCT 
    p.product_id,
    p.product_name,
    i.stock_quantity
FROM assignment.products p
JOIN assignment.sales s
  ON p.product_id = s.product_id
JOIN assignment.inventory i
  ON p.product_id = i.product_id
WHERE i.stock_quantity < 21;





-- 34. Write a query to find the total sales for each product and order the result by the highest sales.


SELECT 
    p.product_id,
    p.product_name,
    SUM(s.total_amount) AS total_sales
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sales DESC;




-- 35. Write a query to find all customers who bought products within 7 days of their registration date.


SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
WHERE s.sale_date BETWEEN c.registration_date 
                      AND c.registration_date + INTERVAL '7 days';







-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.



SELECT 
    s.sale_id,
    p.product_name,
    p.price,
    s.quantity_sold,
    s.total_amount
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
WHERE p.price BETWEEN 100 AND 500;






-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.



SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS full_name,
    COUNT(s.sale_id) AS purchase_count
FROM assignment.sales s
JOIN assignment.customers c
  ON s.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(s.sale_id) = (
    SELECT MAX(cnt)
    FROM (
        SELECT customer_id, COUNT(*) AS cnt
        FROM assignment.sales
        GROUP BY customer_id
    ) sub
);





-- 38. Write a query to find the total quantity of products sold per customer.




SELECT 
    c.first_name || ' ' || c.last_name AS full_name,
    SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.sales s
JOIN assignment.customers c
  ON s.customer_id = c.customer_id
GROUP BY c.first_name, c.last_name;



-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.


(
SELECT 
    product_id,
    product_name,
    stock_quantity
FROM assignment.products
WHERE stock_quantity = (SELECT MAX(stock_quantity) FROM assignment.products)
)
UNION
(
SELECT 
    product_id,
    product_name,
    stock_quantity
FROM assignment.products
WHERE stock_quantity = (SELECT MIN(stock_quantity) FROM assignment.products)
);






-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.



SELECT 
    p.product_name,
    SUM(s.total_amount) AS total_sales
FROM assignment.products p
JOIN assignment.sales s
  ON p.product_id = s.product_id
WHERE p.product_name ILIKE '%phone%'
GROUP BY p.product_name;





-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.



SELECT 
    c.first_name || ' ' || c.last_name AS full_name,
    p.product_name,
    SUM(s.total_amount) AS total_sales
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
JOIN assignment.products p
  ON s.product_id = p.product_id
WHERE c.membership_status = 'Gold'
GROUP BY c.first_name, c.last_name, p.product_name;




-- 42. Write a query to find the total sales of products by category.



SELECT 
    p.category,
    SUM(s.total_amount) AS total_sales
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.category;



-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.



SELECT 
    p.product_name,
    EXTRACT(YEAR FROM s.sale_date) AS year,
    EXTRACT(MONTH FROM s.sale_date) AS month,
    SUM(s.total_amount) AS total_sales
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY p.product_name, year, month
ORDER BY year, month;





-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.




SELECT DISTINCT 
    p.product_id,
    p.product_name,
    i.stock_quantity
FROM assignment.products p
JOIN assignment.sales s
  ON p.product_id = s.product_id
JOIN assignment.inventory i
  ON p.product_id = i.product_id
WHERE i.stock_quantity > 0;






-- 45. Write a query to find the top 5 customers who have made the highest purchases.



SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;







-- 46. Write a query to calculate the total number of unique products sold in 2023.




SELECT COUNT(DISTINCT product_id) AS unique_products_sold
FROM assignment.sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023;





-- 47. Write a query to find the products that have not been sold in the last 6 months.




SELECT *
FROM assignment.products p
WHERE NOT EXISTS (
    SELECT 1
    FROM assignment.sales s
    WHERE s.product_id = p.product_id
      AND s.sale_date >= CURRENT_DATE - INTERVAL '6 months'
);





-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.




SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.products p
JOIN assignment.sales s
  ON p.product_id = s.product_id
WHERE p.price BETWEEN 200 AND 800
GROUP BY p.product_name;





-- 49. Write a query to find the customers who spent the most money in the year 2023.




SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM assignment.sales s
JOIN assignment.customers c
  ON s.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;






-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.



SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity_sold,
    p.price
FROM assignment.products p
JOIN assignment.sales s
  ON p.product_id = s.product_id
WHERE p.price > 200
GROUP BY p.product_name, p.price
HAVING SUM(s.quantity_sold) > 100;








-- SUBQUERY QUESTIONS

-- 51. Which customers have spent more than the average spending of all customers?



SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > (
    SELECT AVG(total_spent)
    FROM (
        SELECT SUM(total_amount) AS total_spent
        FROM assignment.sales
        GROUP BY customer_id
    ) sub
);






-- 52. Which products are priced higher than the average price of all products?



SELECT *
FROM assignment.products
WHERE price > (
    SELECT AVG(price)
    FROM assignment.products
);



-- 53. Which customers have never made a purchase?



SELECT *
FROM assignment.customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM assignment.sales s
    WHERE s.customer_id = c.customer_id
);






-- 54. Which products have never been sold?


SELECT *
FROM assignment.products p
WHERE NOT EXISTS (
    SELECT 1
    FROM assignment.sales s
    WHERE s.product_id = p.product_id
);






-- 55. Which customer made the single most expensive purchase (total amount)?



SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    s.total_amount
FROM assignment.sales s
JOIN assignment.customers c
  ON s.customer_id = c.customer_id
WHERE s.total_amount = (
    SELECT MAX(total_amount)
    FROM assignment.sales
);





-- 56. Which products have total sales greater than the average total sales across all products?




SELECT 
    p.product_name,
    SUM(s.total_amount) AS total_sales
FROM assignment.products p
JOIN assignment.sales s
  ON p.product_id = s.product_id
GROUP BY p.product_name
HAVING SUM(s.total_amount) > (
    SELECT AVG(total_sales)
    FROM (
        SELECT SUM(total_amount) AS total_sales
        FROM assignment.sales
        GROUP BY product_id
    ) sub
);





-- 57. Which customers registered earlier than the average registration date?
-- Average of a date column can be calculated using; SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE FROM assignment.customers




SELECT 
    customer_id,
    first_name,
    last_name,
    registration_date
FROM assignment.customers
WHERE registration_date < (
    SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE
    FROM assignment.customers
);





-- 58. Which products have a price higher than the average price within their own category?



SELECT 
    p.product_name,
    p.category,
    p.price
FROM assignment.products p
WHERE p.price > (
    SELECT AVG(p2.price)
    FROM assignment.products p2
    WHERE p2.category = p.category
);





-- 59. Which customers have spent more than the customer with ID = 10?



SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > (
    SELECT SUM(total_amount)
    FROM assignment.sales
    WHERE customer_id = 10
);








-- 60. Which products have total quantity sold greater than the overall average quantity sold?




SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.products p
JOIN assignment.sales s
  ON p.product_id = s.product_id
GROUP BY p.product_name
HAVING SUM(s.quantity_sold) > (
    SELECT AVG(quantity_sold)
    FROM assignment.sales
);







-- COMMON TABLE EXPRESSIONS (CTEs)

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.





WITH customer_spending AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(s.total_amount) AS total_spent
    FROM assignment.customers c
    JOIN assignment.sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT *
FROM customer_spending
ORDER BY total_spent DESC;





-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.




WITH product_sales AS (
    SELECT 
        p.product_id,
        p.product_name,
        SUM(s.quantity_sold) AS total_quantity
    FROM assignment.products p
    JOIN assignment.sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT *
FROM product_sales
ORDER BY total_quantity DESC;







-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.





WITH category_sales AS (
    SELECT 
        p.category,
        SUM(s.total_amount) AS total_revenue
    FROM assignment.products p
    JOIN assignment.sales s
      ON p.product_id = s.product_id
    GROUP BY p.category
)
SELECT *
FROM category_sales
WHERE total_revenue = (
    SELECT MAX(total_revenue)
    FROM category_sales
);






-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.




WITH customer_purchases AS (
    SELECT 
        customer_id,
        COUNT(*) AS purchase_count
    FROM assignment.sales
    GROUP BY customer_id
)
SELECT *
FROM customer_purchases
WHERE purchase_count > 2;








-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.



WITH product_qty AS (
    SELECT 
        product_id,
        SUM(quantity_sold) AS total_qty
    FROM assignment.sales
    GROUP BY product_id
),
avg_qty AS (
    SELECT AVG(total_qty) AS avg_quantity
    FROM product_qty
)
SELECT *
FROM product_qty
WHERE total_qty > (SELECT avg_quantity FROM avg_qty);







-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.




WITH customer_spending AS (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent
    FROM assignment.sales
    GROUP BY customer_id
),
avg_spending AS (
    SELECT AVG(total_spent) AS avg_spent
    FROM customer_spending
)
SELECT *
FROM customer_spending
WHERE total_spent > (SELECT avg_spent FROM avg_spending);








-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.



WITH product_revenue AS (
    SELECT 
        p.product_id,
        p.product_name,
        SUM(s.total_amount) AS total_revenue
    FROM assignment.products p
    JOIN assignment.sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT *
FROM product_revenue
ORDER BY total_revenue DESC;








-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.




WITH monthly_sales AS (
    SELECT 
        EXTRACT(YEAR FROM sale_date) AS year,
        EXTRACT(MONTH FROM sale_date) AS month,
        SUM(total_amount) AS total_revenue
    FROM assignment.sales
    GROUP BY year, month
)
SELECT *
FROM monthly_sales
WHERE total_revenue = (
    SELECT MAX(total_revenue)
    FROM monthly_sales
);









-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.




WITH product_customers AS (
    SELECT 
        product_id,
        COUNT(DISTINCT customer_id) AS customer_count
    FROM assignment.sales
    GROUP BY product_id
)
SELECT *
FROM product_customers
WHERE customer_count > 3;







-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.




WITH product_qty AS (
    SELECT 
        product_id,
        SUM(quantity_sold) AS total_qty
    FROM assignment.sales
    GROUP BY product_id
),
avg_qty AS (
    SELECT AVG(total_qty) AS avg_quantity
    FROM product_qty
)
SELECT *
FROM product_qty
WHERE total_qty < (SELECT avg_quantity FROM avg_qty);







-- WINDOW FUNCTION QUESTIONS

-- 71. Rank customers based on the total amount they have spent.


SELECT 
    customer_id,
    total_spent,
    RANK() OVER (ORDER BY total_spent DESC) AS rank
FROM (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent
    FROM assignment.sales
    GROUP BY customer_id
) sub;






-- 72. Rank products based on total quantity sold.


SELECT 
    product_id,
    total_quantity,
    RANK() OVER (ORDER BY total_quantity DESC) AS rank
FROM (
    SELECT 
        product_id,
        SUM(quantity_sold) AS total_quantity
    FROM assignment.sales
    GROUP BY product_id
) sub;




-- 73. Identify the 3rd highest spending customer.



SELECT *
FROM (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent,
        RANK() OVER (ORDER BY SUM(total_amount) DESC) AS rank
    FROM assignment.sales
    GROUP BY customer_id
) sub
WHERE rank = 3;






-- 74. Identify the 2nd most expensive product.



SELECT *
FROM (
    SELECT 
        product_id,
        product_name,
        price,
        RANK() OVER (ORDER BY price DESC) AS rank
    FROM assignment.products
) sub
WHERE rank = 2;






-- 75. Show the ranking of products within each category based on price.




SELECT 
    product_id,
    product_name,
    category,
    price,
    RANK() OVER (PARTITION BY category ORDER BY price DESC) AS rank_in_category
FROM assignment.products;





-- 76. Show the ranking of customers based on the number of purchases they made.


SELECT 
    customer_id,
    purchase_count,
    RANK() OVER (ORDER BY purchase_count DESC) AS rank
FROM (
    SELECT 
        customer_id,
        COUNT(*) AS purchase_count
    FROM assignment.sales
    GROUP BY customer_id
) sub;








-- 77. Show the running total of sales amounts ordered by sale_date.


SELECT 
    sale_id,
    sale_date,
    total_amount,
    SUM(total_amount) OVER (ORDER BY sale_date) AS running_total
FROM assignment.sales;






-- 78. Show the previous sale amount for each sale ordered by sale_date.



SELECT 
    sale_id,
    sale_date,
    total_amount,
    LAG(total_amount) OVER (ORDER BY sale_date) AS previous_sale
FROM assignment.sales;






-- 79. Show the next sale amount for each sale ordered by sale_date.


SELECT 
    sale_id,
    sale_date,
    total_amount,
    LEAD(total_amount) OVER (ORDER BY sale_date) AS next_sale
FROM assignment.sales;





-- 80. Divide customers into 4 groups based on total spending.


SELECT 
    customer_id,
    total_spent,
    NTILE(4) OVER (ORDER BY total_spent DESC) AS spending_group
FROM (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent
    FROM assignment.sales
    GROUP BY customer_id
) sub;








-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?


SELECT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT p.category) > 1;







-- 82. Which customers purchased products within 7 days of registering?



SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
WHERE s.sale_date BETWEEN c.registration_date 
                      AND c.registration_date + INTERVAL '7 days';





-- 83. Which products have lower stock remaining than the average stock quantity?



SELECT *
FROM assignment.products
WHERE stock_quantity < (
    SELECT AVG(stock_quantity)
    FROM assignment.products
);




-- 84. Which customers purchased the same product more than once?


SELECT 
    customer_id,
    product_id,
    COUNT(*) AS purchase_count
FROM assignment.sales
GROUP BY customer_id, product_id
HAVING COUNT(*) > 1;






-- 85. Which product categories generated the highest total revenue?


SELECT 
    p.category,
    SUM(s.total_amount) AS total_revenue
FROM assignment.products p
JOIN assignment.sales s
  ON p.product_id = s.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;





-- 86. Which products are among the top 3 most sold products?



SELECT *
FROM (
    SELECT 
        p.product_id,
        p.product_name,
        SUM(s.quantity_sold) AS total_quantity,
        RANK() OVER (ORDER BY SUM(s.quantity_sold) DESC) AS rank
    FROM assignment.products p
    JOIN assignment.sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
) sub
WHERE rank <= 3;




-- 87. Which customers purchased the most expensive product?


SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
JOIN assignment.products p
  ON s.product_id = p.product_id
WHERE p.price = (
    SELECT MAX(price)
    FROM assignment.products
);




-- 88. Which products were purchased by the highest number of unique customers?



SELECT *
FROM (
    SELECT 
        p.product_id,
        p.product_name,
        COUNT(DISTINCT s.customer_id) AS customer_count,
        RANK() OVER (ORDER BY COUNT(DISTINCT s.customer_id) DESC) AS rank
    FROM assignment.products p
    JOIN assignment.sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
) sub
WHERE rank = 1;








-- 89. Which customers made purchases above the average sale amount?


SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM assignment.customers c
JOIN assignment.sales s
  ON c.customer_id = s.customer_id
WHERE s.total_amount > (
    SELECT AVG(total_amount)
    FROM assignment.sales
);




-- 90. Which customers purchased more products than the average quantity purchased per customer?


SELECT *
FROM (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(s.quantity_sold) AS total_quantity,
        AVG(SUM(s.quantity_sold)) OVER () AS avg_quantity
    FROM assignment.customers c
    JOIN assignment.sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
) sub
WHERE total_quantity > avg_quantity;







-- ADVANCED WINDOW + ANALYTICAL PROBLEMS

-- 91. Which customers rank in the top 10% of spending?



SELECT *
FROM (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent,
        NTILE(10) OVER (ORDER BY SUM(total_amount) DESC) AS percentile_rank
    FROM assignment.sales
    GROUP BY customer_id
) sub
WHERE percentile_rank = 1;







-- 92. Which products contribute to the top 50% of total revenue?




WITH product_revenue AS (
    SELECT 
        product_id,
        SUM(total_amount) AS revenue
    FROM assignment.sales
    GROUP BY product_id
),
ranked AS (
    SELECT *,
           SUM(revenue) OVER (ORDER BY revenue DESC) AS running_total,
           SUM(revenue) OVER () AS total_revenue
    FROM product_revenue
)
SELECT *
FROM ranked
WHERE running_total <= total_revenue * 0.5;






-- 93. Which customers made purchases in consecutive months?



SELECT DISTINCT customer_id
FROM (
    SELECT 
        customer_id,
        DATE_TRUNC('month', sale_date) AS month,
        LAG(DATE_TRUNC('month', sale_date)) OVER (
            PARTITION BY customer_id ORDER BY sale_date
        ) AS prev_month
    FROM assignment.sales
) sub
WHERE month = prev_month + INTERVAL '1 month';






-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?


SELECT 
    p.product_id,
    p.product_name,
    i.stock_quantity,
    COALESCE(SUM(s.quantity_sold), 0) AS sold,
    ABS(i.stock_quantity - COALESCE(SUM(s.quantity_sold), 0)) AS difference
FROM assignment.products p
LEFT JOIN assignment.sales s
  ON p.product_id = s.product_id
JOIN assignment.inventory i
  ON p.product_id = i.product_id
GROUP BY p.product_id, p.product_name, i.stock_quantity
ORDER BY difference DESC;









-- 95. Which customers have spending above the average spending of their membership tier?



SELECT *
FROM (
    SELECT 
        c.customer_id,
        c.membership_status,
        SUM(s.total_amount) AS total_spent,
        AVG(SUM(s.total_amount)) OVER (PARTITION BY c.membership_status) AS avg_spent
    FROM assignment.customers c
    JOIN assignment.sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.membership_status
) sub
WHERE total_spent > avg_spent;








-- 96. Which products have higher sales than the average sales within their category?



SELECT *
FROM (
    SELECT 
        p.product_id,
        p.category,
        SUM(s.total_amount) AS total_sales,
        AVG(SUM(s.total_amount)) OVER (PARTITION BY p.category) AS avg_sales
    FROM assignment.products p
    JOIN assignment.sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.category
) sub
WHERE total_sales > avg_sales;







-- 97. Which customer made the largest single purchase relative to their total spending?


SELECT *
FROM (
    SELECT 
        customer_id,
        total_amount,
        total_amount / SUM(total_amount) OVER (PARTITION BY customer_id) AS ratio
    FROM assignment.sales
) sub
ORDER BY ratio DESC;







-- 98. Which products rank among the top 3 most sold products within each category?



SELECT *
FROM (
    SELECT 
        p.product_id,
        p.category,
        SUM(s.quantity_sold) AS total_qty,
        RANK() OVER (
            PARTITION BY p.category
            ORDER BY SUM(s.quantity_sold) DESC
        ) AS rank
    FROM assignment.products p
    JOIN assignment.sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.category
) sub
WHERE rank <= 3;








-- 99. Which customers are tied for the highest total spending?


SELECT *
FROM (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent,
        RANK() OVER (ORDER BY SUM(total_amount) DESC) AS rank
    FROM assignment.sales
    GROUP BY customer_id
) sub
WHERE rank = 1;









-- 100. Which products generated sales every year present in the dataset?



SELECT product_id
FROM assignment.sales
GROUP BY product_id
HAVING COUNT(DISTINCT EXTRACT(YEAR FROM sale_date)) = (
    SELECT COUNT(DISTINCT EXTRACT(YEAR FROM sale_date))
    FROM assignment.sales
);






-- 101. Update the products table to assign a price_category as Expensive (price > 1000), Moderate (price between 500 and 1000), or Affordable (price < 500) using CASE WHEN


SELECT 
    product_id,
    product_name,
    price,
    CASE
        WHEN price > 1000 THEN 'Expensive'
        WHEN price BETWEEN 500 AND 1000 THEN 'Moderate'
        ELSE 'Affordable'
    END AS price_category
FROM assignment.products;








-- 102. Update the customers table to assign a customer_level based on total spending as VIP (>20000), Regular (10000–20000), or New (<10000) using CASE WHEN


SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COALESCE(SUM(s.total_amount), 0) AS total_spent,
    CASE
        WHEN COALESCE(SUM(s.total_amount), 0) > 20000 THEN 'VIP'
        WHEN COALESCE(SUM(s.total_amount), 0) BETWEEN 10000 AND 20000 THEN 'Regular'
        ELSE 'New'
    END AS customer_level
FROM assignment.customers c
LEFT JOIN assignment.sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;







-- 103. Update the products table to assign a stock_status as Low Stock or Sufficient Stock based on stock_quantity using CASE WHEN



SELECT 
    product_id,
    product_name,
    stock_quantity,
    CASE 
        WHEN stock_quantity < 50 THEN 'Low Stock'
        ELSE 'Sufficient Stock'
    END AS stock_status
FROM assignment.products;






-- 104. Display each customer’s registration year from the registration_date


SELECT 
    customer_id,
    EXTRACT(YEAR FROM registration_date) AS registration_year
FROM assignment.customers;



-- 105. Count how many customers registered in each year



SELECT 
    EXTRACT(YEAR FROM registration_date) AS year,
    COUNT(*) AS total_customers
FROM assignment.customers
GROUP BY year;







-- 106. Find the total sales amount for each month


SELECT 
    TO_CHAR(sale_date, 'Mon YYYY') AS sales_month,
    SUM(total_amount) AS total_sales
FROM assignment.sales
GROUP BY TO_CHAR(sale_date, 'Mon YYYY'), DATE_TRUNC('month', sale_date)
ORDER BY DATE_TRUNC('month', sale_date);





-- 107. Show all sales made in the year 2023



SELECT 
    sale_id,
    customer_id,
    product_id,
    quantity_sold,
    sale_date,
    total_amount
FROM assignment.sales
WHERE sale_date >= DATE '2023-01-01'
  AND sale_date < DATE '2024-01-01';



-- 108. Find the total sales amount for each year


SELECT 
    EXTRACT(YEAR FROM sale_date) AS sales_year,
    SUM(total_amount) AS total_sales
FROM assignment.sales
GROUP BY EXTRACT(YEAR FROM sale_date)
ORDER BY sales_year;





-- 109. Calculate the number of days each customer has been registered (from registration_date to current date)


SELECT 
    customer_id,
    first_name,
    last_name,
    registration_date,
    CURRENT_DATE - registration_date AS days_registered
FROM assignment.customers;






-- 110. Display each sale and extract the year and month from the sale date



SELECT 
    sale_id,
    TO_CHAR(sale_date, 'YYYY') AS sales_year,
    TO_CHAR(sale_date, 'MM') AS sales_month
FROM assignment.sales;



-- 111. Display each customer’s email and replace null values with 'No Email Provided' using COALESCE



SELECT 
    customer_id,
    first_name,
    last_name,
    COALESCE(email, 'No Email Provided') AS email
FROM assignment.customers;





-- 112. Find customers who do not have an email address



SELECT 
    customer_id,
    first_name,
    last_name
FROM assignment.customers
WHERE email IS NULL;






-- 113. Find products that have never been sold using a subquery




SELECT 
    p.product_id,
    p.product_name
FROM assignment.products p
LEFT JOIN assignment.sales s
  ON p.product_id = s.product_id
WHERE s.product_id IS NULL;







-- 114. Find customers who have not made any purchases using a subquery



SELECT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM assignment.customers c
LEFT JOIN assignment.sales s
  ON c.customer_id = s.customer_id
WHERE s.customer_id IS NULL;






-- 115. Update the products table to assign a price_category (Premium, Standard, Budget) based on price using CASE WHEN



SELECT 
    product_id,
    product_name,
    price,
    CASE 
        WHEN price > 1000 THEN 'Premium'
        WHEN price BETWEEN 500 AND 1000 THEN 'Standard'
        ELSE 'Budget'
    END AS price_category
FROM assignment.products;









-- 116. Create a PostgreSQL function/procedure that takes a minimum revenue as input and returns all products whose total sales exceed that value


CREATE OR REPLACE FUNCTION assignment.products_above_revenue(min_revenue NUMERIC)
RETURNS TABLE(product_id INT, total_revenue NUMERIC)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        s.product_id,
        SUM(s.total_amount) AS total_revenue
    FROM assignment.sales s
    GROUP BY s.product_id
    HAVING SUM(s.total_amount) > min_revenue;
END;
$$;






-- 117. Create a PostgreSQL function/procedure that takes a customer_id as input and returns the total amount spent by that customer



CREATE OR REPLACE FUNCTION assignment.customer_spending(cust_id INT)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
    total NUMERIC;
BEGIN
    SELECT COALESCE(SUM(total_amount), 0)
    INTO total
    FROM assignment.sales
    WHERE customer_id = cust_id;

    RETURN total;
END;
$$;










-- 118. Create a PostgreSQL function/procedure that takes a start_date and end_date as input and returns the number of orders made within that date range



CREATE OR REPLACE FUNCTION assignment.orders_in_range(start_d DATE, end_d DATE)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    order_count INT;
BEGIN
    SELECT COUNT(*)
    INTO order_count
    FROM assignment.sales
    WHERE sale_date BETWEEN start_d AND end_d;

    RETURN order_count;
END;
$$;






-- 119. Create a PostgreSQL stored procedure that inserts a new record into the sales table 



CREATE OR REPLACE PROCEDURE assignment.insert_sale(
    p_sale_id INT,
    p_customer_id INT,
    p_product_id INT,
    p_qty INT,
    p_sale_date DATE,
    p_total NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO assignment.sales
    VALUES (
        p_sale_id,
        p_customer_id,
        p_product_id,
        p_qty,
        p_sale_date,
        p_total
    );
END;
$$;




-- 120. Create an index on the product_id column in the sales table to improve join performance



CREATE INDEX IF NOT EXISTS idx_sales_product_id
ON assignment.sales(product_id);



-- 121. Create an index on the registration_date column in the customers table to improve filtering by date


CREATE INDEX IF NOT EXISTS idx_customers_registration_date
ON assignment.customers(registration_date);


-- 122. Write a transaction that inserts a new sale using sale_id, customer_id, product_id, quantity_sold, sale_date, and total_amount, then updates the corresponding product stock_quantity, ensuring both operations succeed or fail together


BEGIN;

INSERT INTO assignment.sales
VALUES (1000, 1, 1, 2, CURRENT_DATE, 1999.98);

UPDATE assignment.products
SET stock_quantity = stock_quantity - 2
WHERE product_id = 1;



-- 123. Write a transaction that updates a customer’s email and rolls back the change if the email is invalid

BEGIN;

UPDATE assignment.customers
SET email = 'invalid_email'
WHERE customer_id = 1;

-


-- 124. Create a view that shows total revenue per product


CREATE OR REPLACE VIEW assignment.product_revenue AS
SELECT 
    product_id,
    SUM(total_amount) AS total_revenue
FROM assignment.sales
GROUP BY product_id;


-- 125. Create a view that shows each customer and their total spending


CREATE OR REPLACE VIEW assignment.customer_spending AS
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM assignment.sales
GROUP BY customer_id;


-- 126. Use UNION to combine a list of all customer first names and product names into a single column


SELECT first_name AS name FROM assignment.customers
UNION
SELECT product_name FROM assignment.products;


-- 127. Use INTERSECT to find values that appear in both a list of customer IDs and a list of customer IDs who made purchases


SELECT customer_id FROM assignment.customers
INTERSECT
SELECT customer_id FROM assignment.sales;

-- 128. Perform an anti-join to find products that have never been sold using LEFT JOIN


SELECT p.*
FROM assignment.products p
LEFT JOIN assignment.sales s
  ON p.product_id = s.product_id
WHERE s.product_id IS NULL;




-- 129. Use NOT EXISTS to find customers who have not made any purchases


SELECT *
FROM assignment.customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM assignment.sales s
    WHERE s.customer_id = c.customer_id
);




-- 130. Cast the price column to an integer and display it alongside the original price


SELECT 
    price,
    price::INT AS price_integer
FROM assignment.products;



-- 131. Convert registration_date to text format and display it in 'YYYY-MM' format


SELECT 
    customer_id,
    TO_CHAR(registration_date, 'YYYY-MM') AS registration_month
FROM assignment.customers;




-- 132. The following query returns an error due to improper GROUP BY usage. Identify and fix the issue
-- SELECT product_id, product_name, SUM(total_amount) FROM sales GROUP BY product_id;


SELECT 
    s.product_id,
    p.product_name,
    SUM(s.total_amount) AS total_sales
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id
GROUP BY s.product_id, p.product_name;







-- 133. The following query incorrectly filters aggregated results using WHERE. Identify and correct it
-- SELECT product_id, SUM(total_amount) FROM sales WHERE SUM(total_amount) > 1000 GROUP BY product_id;


SELECT 
    product_id,
    SUM(total_amount) AS total_sales
FROM assignment.sales
GROUP BY product_id
HAVING SUM(total_amount) > 1000;





-- 134. The following query returns incorrect results because it uses the wrong join condition. Identify and fix it
-- SELECT *
-- FROM assignment.sales s
-- JOIN assignment.products p
--   ON s.customer_id = p.product_id;



SELECT *
FROM assignment.sales s
JOIN assignment.products p
  ON s.product_id = p.product_id;






-- 135. Replace NULL email values with 'No Email Provided' using COALESCE if any


SELECT 
    COALESCE(email, 'No Email Provided') AS email
FROM assignment.customers;





-- 136. Trim any leading or trailing spaces from customer first names if any



SELECT 
    TRIM(first_name) AS clean_first_name
FROM assignment.customers;






-- 137. Convert all customer emails to lowercase if any


SELECT 
    LOWER(email) AS email_lowercase
FROM assignment.customers;

-- 138. Replace empty strings in phone numbers with NULL if any


SELECT 
    CASE 
        WHEN phone_number = '' THEN NULL
        ELSE phone_number
    END AS phone_number
FROM assignment.customers;







-- 139. Extract the year from registration_date and handle any NULL dates gracefully if any


SELECT 
    customer_id,
    EXTRACT(YEAR FROM registration_date) AS registration_year
FROM assignment.customers
WHERE registration_date IS NOT NULL;








