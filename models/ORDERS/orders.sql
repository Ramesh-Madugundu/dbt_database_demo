{{ config(materialized='table') }}

WITH base AS (
    SELECT
        order_id,
        customer_id,
        order_date,
        product_name,
        quantity,
        price_per_unit,
        total_amount,
        status
    FROM DBT_DATABASE.DBT_SCHEMA.ORDERS
),

cleaned AS (
    SELECT
        order_id,
        customer_id,
        order_date,
        product_name,
        quantity,
        price_per_unit,
        -- If total_amount is null or wrong, recalc it
        COALESCE(total_amount, quantity * price_per_unit) AS total_amount,
        UPPER(status) AS order_status,
        -- Add derived fields
        DATE_TRUNC('month', order_date) AS order_month,
        CASE 
            WHEN status ILIKE 'completed' THEN 1 
            ELSE 0 
        END AS is_completed
    FROM base
)

SELECT * FROM cleaned
