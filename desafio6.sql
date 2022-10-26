SELECT 
    ROUND(MIN(plan_price), 2) AS faturamento_minimo,
    ROUND(MAX(plan_price), 2) AS faturamento_maximo,
    ROUND(AVG(plan_price), 2) AS faturamento_medio,
    ROUND(SUM(plan_price), 2) AS faturamento_total
FROM
    SpotifyClone.user AS u
        INNER JOIN
    SpotifyClone.plan AS p ON u.plan_id = p.plan_id;