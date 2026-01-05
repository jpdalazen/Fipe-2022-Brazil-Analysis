-- Preço médio por marca considerando apenas marcas com volume relevante

SELECT
  brand,
  ROUND(AVG(avg_price_brl), 2) AS preco_medio
FROM fipe_prices
WHERE brand IN (
  SELECT brand
  FROM fipe_prices
  GROUP BY brand
  HAVING COUNT(*) >= 1000
)
GROUP BY brand
ORDER BY preco_medio DESC;