This folder contains raw CSV datasets used for this projects.

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
