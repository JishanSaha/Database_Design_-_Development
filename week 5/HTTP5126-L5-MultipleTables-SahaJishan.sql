--  LAB 5 MULTIPLE TABLES
--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
--  1 
-- A 
SELECT * FROM sales WHERE item=1014;

-- B 
SELECT s.date,st.item FROM sales s,stock_items st WHERE st.id=s.item AND s.item=1014;


--  2
-- A 
SELECT * FROM sales WHERE employee=111;

-- B
SELECT s.date,e.first_name,e.last_name,s.item FROM sales s,employees e WHERE s.employee=e.id AND s.employee=111;

--  3
-- A
SELECT DATE,item,first_name FROM sales s,employees e WHERE s.employee=e.id AND DATE BETWEEN "2024-09-12" AND "2024-09-18";
-- B
SELECT first_name,last_name, count(s.id) AS total_sales FROM sales s,employees e WHERE s.employee=e.id GROUP BY first_name,last_name ORDER BY total_sales DESC;

--  4
-- A
SELECT s.date,si.item,si.price,si.category,e.first_name FROM sales s JOIN employees e ON s.employee=e.id JOIN stock_items si ON s.item=si.id WHERE e.first_name = 'Farud' AND e.last_name = 'Said';
-- B
SELECT si.id AS stock_item_id, si.item,si.price, si.category,COUNT(s.item) AS times_sold  FROM stock_items si LEFT JOIN sales s ON si.id=s.item GROUP BY si.id, si.item, si.price, si.category ORDER BY si.id ASC;

--  5
-- A Display “who is the top-selling employee for each category?” Provide first name and last name(employees), category(stock_items) and count “total_sales” for each item (sales). The result should show most sales to least sales.
-- B
SELECT si.category, e.first_name, e.last_name, count(s.id) AS total_sales FROM employees e, stock_items si, sales s WHERE e.id = s.employee AND si.id = s.item GROUP BY si.category, e.first_name, e.last_name ORDER BY total_sales DESC;
