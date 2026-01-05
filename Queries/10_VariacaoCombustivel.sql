-- Preço médio por marca e tipo de combustível
-- Considerando apenas marcas com volume relevante

SELECT
  brand,
  fuel,
  ROUND(AVG(avg_price_brl), 2) AS preco_medio_marcacombustivel
FROM fipe_prices
WHERE brand IN (
  SELECT brand
  FROM fipe_prices
  GROUP BY brand
  HAVING COUNT(*) >= 1000
)
GROUP BY brand, fuel
ORDER BY preco_medio_marcacombustivel ASC;