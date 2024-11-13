SELECT
    DISTINCT(Date) AS Date,
    COUNT(Orders) AS Nb_Transac,
    ROUND(SUM(Turnover),2) AS Revenue,
    ROUND(SAFE_DIVIDE(SUM(Turnover),COUNT(Orders)),2) AS ABV,
    ROUND(SUM(Margin),2) AS Margin,
    ROUND(SUM(operational_margin),2) AS OP_Margin
FROM {{ ref('int_orders_operational') }}
GROUP BY Date