-- Queries
-- 1.Retrieve the total number of orders placed
select count(order_id) as Total_no_of_Orders from orders;



-- 2.Retrieve the total number of orders placed
SELECT 
    round(sum(order_details.quantity * pizzas.price),2) AS total_revenue
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;

-- 3.Identify the highest-priced pizza.
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;

-- 4.Identify the most common pizza size ordered.
SELECT 
    pizzas.size, COUNT(order_details.details_id) AS order_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC
limit 1;

-- 5.List the top 5 most ordered pizza types along with their quantities.
SELECT 
    pizza_types.name, SUM(order_details.quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;

-- 6.Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT 
    pizza_types.category AS category,
    SUM(order_details.quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY category
ORDER BY quantity ASC;
    
-- 7.Determine the distribution of orders by hour of the day.
SELECT 
    count(order_id) AS order_count,
    HOUR(order_time) AS hours
FROM
    orders
GROUP BY hours;

-- 8.Join relevant tables to find the category-wise distribution of pizzas.
SELECT 
    category, COUNT(name) AS category_wise_distribution
FROM
    pizza_types
GROUP BY category;

-- 9.Group orders by date and calculate average number of pizzas ordered per day.
SELECT 
    ROUND(AVG(t.quantity), 0) AS average_order_quantity
FROM
    (SELECT 
        orders.order_date AS dates,
            SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY dates
    ) as t;

-- 10. top 3 most ordered pizza based on revenue 
use pizza_sales;
SELECT 
    pizza_types.name AS names,
    SUM(order_details.quantity * pizzas.price) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY names
ORDER BY revenue DESC
LIMIT 3;
