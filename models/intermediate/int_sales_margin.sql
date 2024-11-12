SELECT
*
,ROUND(purchase_price * quantity,2) AS purchase_cost
,ROUND(revenue - (purchase_price * quantity),2) as margin
FROM {{ ref('stg_gz_raw_data__raw_gz_sales') }}
JOIN
{{ ref('stg_gz_raw_data__raw_gz_product') }}
USING(products_id)