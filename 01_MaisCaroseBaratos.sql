-- Identificação dos modelos mais caros e mais baratos
-- Utiliza a média do preço de cada modelo ao longo de 2022
-- Ordena e limita aos 5 modelos mais caros e 5 mais baratos
-- Permite entender o posicionamento de preço dos veículos no mercado brasileiro

-- Top 5 modelos mais caros
SELECT
  model,
  brand,
  ROUND(AVG(avg_price_brl), 2) AS preco_medio
FROM fipe_prices
GROUP BY model, brand
ORDER BY preco_medio DESC
LIMIT 5;

-- Top 5 modelos mais baratos

SELECT
  model,
  brand,
  ROUND(AVG(avg_price_brl), 2) AS preco_medio
FROM fipe_prices
GROUP BY model, brand
ORDER BY preco_medio ASC
LIMIT 5;
