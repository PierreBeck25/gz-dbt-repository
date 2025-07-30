WITH squery1 AS (
    SELECT
        stg_RAW__sales.date_date,
        stg_RAW__sales.orders_id,
        stg_RAW__sales.products_id,
        stg_RAW__sales.quantity,
        stg_RAW__sales.revenue,
        stg_RAW__product.purchase_price
    FROM {{ref("stg_RAW__sales")}}
    LEFT JOIN {{ref("stg_RAW__product")}}
        ON stg_RAW__sales.products_id = stg_RAW__product.products_id
)
SELECT
*,
revenue-purchase_price AS margin,
quantity*purchase_price AS purchase_cost
FROM squery1