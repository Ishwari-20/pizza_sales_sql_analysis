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
-pizza_id
-pizza_type_id
-sales
-price
Table 2: Pizza_types'
- pizza_type_id
- name
- category
- ingredients
Table 3: orders
-order_id
-order_date
-order_time
Table 4: order_details
-details_id
-order_id
-pizza_id
-quantity
  
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

