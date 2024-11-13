SELECT
*,
ROUND(int_orders_margin.Margin + stg_raw__ship.shipping_fee - stg_raw__ship.ship_cost - stg_raw__ship.logcost,2) AS operational_margin
FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_raw__ship') }}
ON int_orders_margin.Orders = stg_raw__ship.orders_id