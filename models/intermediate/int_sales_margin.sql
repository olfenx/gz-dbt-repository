SELECT
*
,ROUND(purchase_price * quantity,2) AS purchase_cost
,ROUND(revenue - (purchase_price * quantity),2) as margin
FROM {{ ref("stg_raw__sales") }} s
LEFT JOIN {{ ref("stg_raw__product") }} p
USING(products_id)