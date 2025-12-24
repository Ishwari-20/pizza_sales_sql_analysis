# pizza_sales_sql_analysis
SQL analysis for pizza sales

# Problem Statement:
The objective of this project is to analyze sales data using SQL to identify trends, performance metrics, and actionable insights for business decision-making.

# Dataset :
- Source: Sales dataset (CSV) kaggle
- Data Type: Transactional sales data
- Key Attributes:
  - Product
  - type
  - order details
  - Quantity
  - Sales amount
  - Category 

# Schema structure:
Table 1: pizzas
- pizza_id
- pizza_type_id
- sales
- price

Table 2: Pizza_types'
- pizza_type_id
- name
- category
- ingredients
  
Table 3: orders
- order_id
- order_date
- order_time

Table 4: order_details
- details_id
- order_id
- pizza_id
- quantity
  
# Tools 
- MySQL
- SQL
  - GROUP BY & HAVING
  - Aggregate functions
  - Conditional logic
  - Sorting & filtering
  - Joins

# Project Workflow: 
- Created sales table schema
- Loaded CSV data into MySQL
- Performed:
  - Total and average sales calculations
  - Category-wise performance analysis
  - Identification of high and low-performing products
  - Trend-based sales evaluation

# Output of the project:
<img width="962" height="756" alt="Screenshot 2025-12-24 114904" src="https://github.com/user-attachments/assets/55ce5ce4-f4ee-4512-a9e7-d8066d0af7a9" />
<img width="801" height="740" alt="Screenshot 2025-12-24 114919" src="https://github.com/user-attachments/assets/f57636c3-c56a-4fd7-b1a1-317b42527e64" />
<img width="868" height="747" alt="Screenshot 2025-12-24 114841" src="https://github.com/user-attachments/assets/28a6a878-e24b-42c7-9141-5bd8b16ff090" />
<img width="1009" height="738" alt="Screenshot 2025-12-24 114815" src="https://github.com/user-attachments/assets/42d79f65-67f2-4b92-be94-166793393d7e" />

1. Retrieve the total number of orders placed.
<img width="949" height="368" alt="Screenshot 2025-12-24 113957" src="https://github.com/user-attachments/assets/f97cac5b-bcaa-41d2-beb7-67579ca66e15" />

2. Calculate the total revenue generated from pizza sales.
<img width="928" height="449" alt="Screenshot 2025-12-24 114055" src="https://github.com/user-attachments/assets/dfc43f5d-8aa0-4212-8fe1-afded5b5dd07" />

3. Identify the highest-priced pizza.
   <img width="949" height="476" alt="Screenshot 2025-12-24 114140" src="https://github.com/user-attachments/assets/92d7b016-a2f5-4704-b609-23f30127bf73" />

4. Identify the most common pizza size ordered.
   <img width="959" height="543" alt="Screenshot 2025-12-24 114202" src="https://github.com/user-attachments/assets/6bbee589-02a1-46d4-8a44-78b5c6252317" />

5. List the top 5 most ordered pizza types along with their quantities.
<img width="965" height="671" alt="Screenshot 2025-12-24 114254" src="https://github.com/user-attachments/assets/64624979-934b-4868-9b7b-9c03adfb23b5" />

6. Join the necessary tables to find the total quantity of each pizza category ordered.
<img width="983" height="662" alt="Screenshot 2025-12-24 114345" src="https://github.com/user-attachments/assets/e648c8de-9ce3-40d1-a921-54df3bdc9f24" />

7. Determine the distribution of orders by hour of the day.
<img width="894" height="695" alt="Screenshot 2025-12-24 114513" src="https://github.com/user-attachments/assets/f8aa169a-316e-4117-ba8c-693aaef86423" />

8. Join relevant tables to find the category-wise distribution of pizzas.
<img width="811" height="470" alt="Screenshot 2025-12-24 114529" src="https://github.com/user-attachments/assets/d8a7406a-57d0-4415-8217-af23731d3376" />

9. Group the orders by date and calculate the average number of pizzas ordered per day.
<img width="820" height="505" alt="Screenshot 2025-12-24 115210" src="https://github.com/user-attachments/assets/f0cf594f-a01c-4d3e-a9c4-c7c6755a1f29" />

10. Determine the top 3 most ordered pizza types based on revenue.
<img width="752" height="632" alt="Screenshot 2025-12-24 115236" src="https://github.com/user-attachments/assets/33a5311c-50b3-40ee-bcdd-85db24a7c1e3" />



