SELECT
    DISTINCT(orders_id) AS Orders,
    date_date AS Date,
    ROUND(SUM(revenue),2) AS Turnover,
    ROUND(SUM(quantity),2) AS Quantity,
    ROUND(SUM(purchase_cost),2) AS Purchase_Cost,
    ROUND(SUM(margin),2) AS Margin
FROM {{ ref('int_sales_margin') }}
GROUP BY orders_id,date_date
