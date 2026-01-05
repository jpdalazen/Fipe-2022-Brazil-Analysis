-- Variação de preço por marca ao longo do ano
-- Considerando apenas marcas com volume relevante

WITH preco_mensal_marca AS (
  SELECT
    brand,
    month_of_reference,
    AVG(avg_price_brl) AS preco_medio
  FROM fipe_prices
  WHERE brand IN (
    SELECT brand
    FROM fipe_prices
    GROUP BY brand
    HAVING COUNT(*) >= 1000
  )
  GROUP BY brand, month_of_reference
)
SELECT
  brand,
  ROUND(MAX(preco_medio) - MIN(preco_medio), 2) AS variacao_preco
FROM preco_mensal_marca
GROUP BY brand
ORDER BY variacao_preco DESC;