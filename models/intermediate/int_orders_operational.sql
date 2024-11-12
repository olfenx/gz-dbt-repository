SELECT
*,
int_orders_margin.Margin + stg_gz_raw_data__raw_gz_ship.shipping_fee - stg_gz_raw_data__raw_gz_ship.ship_cost - stg_gz_raw_data__raw_gz_ship.logcost AS operational_margin
FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_gz_raw_data__raw_gz_ship') }}
ON int_orders_margin.Orders = stg_gz_raw_data__raw_gz_ship.orders_id