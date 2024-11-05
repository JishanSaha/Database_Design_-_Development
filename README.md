# Course Materials for HTTP-5126: Database Design and Development

### Course Code: HTTP 5126

### Academic Year: 2024-2025

This course aims to equip students with strategies and techniques essential for the design, creation, and management of databases. The primary focus will be on SQL and MySQL, while also providing an introduction to NoSQL concepts to broaden understanding of diverse database systems.

## Helpful Resources
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)

## Visual Reference
![Database Design Overview](sql.png)

> **Important Notice:** This repository is dedicated to best practices in database design and development. It is highly encouraged to become well-versed in both SQL and NoSQL principles to maximize the benefits of the resources offered.

## Sample SQL Commands

sql
-- Fetch all entries from the employees table for roles categorized as 'Manager' or 'Assistant'.
SELECT * FROM employees WHERE role = 'Manager' OR role = 'Assistant';

-- Query stock_items for entries where the category is 'Aquatic' and the inventory count is below 25.
SELECT * FROM stock_items WHERE category = 'Aquatic' AND inventory < 25;

-- Retrieve items from stock_items that have 'cage' included in their name.
SELECT * FROM stock_items WHERE item LIKE '%cage';

-- Find employees whose first names start with the letter 'F'.
SELECT * FROM employees WHERE first_name LIKE 'F%';
