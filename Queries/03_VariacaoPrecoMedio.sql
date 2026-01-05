-- Calcula a variação entre o mês com maior e menor preço médio em 2022
-- Primeiro calcula o preço médio por mês usando um CTE (preco_mensal)
-- Depois subtrai o menor preço médio do maior para obter a variação total
-- Útil para identificar a amplitude de flutuação de preços ao longo do ano

WITH preco_mensal AS (
  SELECT
    month_of_reference,
    AVG(avg_price_brl) AS preco_medio
  FROM fipe_prices
  GROUP BY month_of_reference
)
SELECT
  ROUND(MAX(preco_medio) - MIN(preco_medio), 2) AS Variacao_PrecoMedio
FROM preco_mensal;