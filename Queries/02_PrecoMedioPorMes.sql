-- Calcula o preço médio dos veículos por mês em 2022
-- Agrupa por mês e arredonda a média para duas casas decimais
-- Permite analisar a variação mensal de preços ao longo do ano

SELECT
	month_of_reference,
    ROUND(AVG(avg_price_brl), 2) AS PRECO_MEDIO
FROM fipe_prices
GROUP BY month_of_reference
order by month_of_reference DESC;