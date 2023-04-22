
{{ config(materialized='table') }}

SELECT o.customer_id, o.product_id, p.name AS product_name, p.price, c.email
FROM testing_dbt_connection.orders o
JOIN testing_dbt_connection.products p ON o.product_id = p.id
JOIN testing_dbt_connection.customers c ON o.customer_id = c.id
WHERE o.quantity >= 2
