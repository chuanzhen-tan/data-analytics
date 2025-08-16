## Entity Relationship Diagram

<img src="https://github.com/user-attachments/assets/20c14550-cc0e-4758-a667-6cdc8e0f247d" alt="image" width="600"/>

## Table 1: Sales
The `sales` table records customer purchases, including the order date and the product ID of each item bought.

| customer_id | order_date | product_id |
|-------------|------------|------------|
| A | 2021-01-01 | 1 |
| A | 2021-01-01 | 2 |
| A | 2021-01-07 | 2 |
| A | 2021-01-10 | 3 |
| A | 2021-01-11 | 3 |
| A | 2021-01-11 | 3 |
| B | 2021-01-01 | 2 |
| B | 2021-01-02 | 2 |
| B | 2021-01-04 | 1 |
| B | 2021-01-11 | 1 |
| B | 2021-01-16 | 3 |
| B | 2021-02-01 | 3 |
| C | 2021-01-01 | 3 |
| C | 2021-01-01 | 3 |
| C | 2021-01-07 | 3 |

---

## Table 2: Menu
The `menu` table lists each product ID along with its name and price.

| product_id | product_name | price |
|------------|--------------|-------|
| 1 | sushi  | 10 |
| 2 | curry  | 15 |
| 3 | ramen  | 12 |

---

## Table 3: Members
The `members` table tracks the join date for customers who signed up for the Danny’s Diner loyalty program.

| customer_id | join_date  |
|-------------|------------|
| A | 2021-01-07 |
| B | 2021-01-09 |
