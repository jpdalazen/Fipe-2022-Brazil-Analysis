-- Calcula o preço médio dos veículos "populares", considerando apenas carros com preço até R$ 100.000
-- Filtra os registros com avg_price_brl <= 100000 e arredonda a média para duas casas decimais
-- Útil para analisar o comportamento do segmento de veículos de entrada no mercado

SELECT
	ROUND(AVG(avg_price_brl), 2) AS Preco_Medio_Populares
FROM fipe_prices
where avg_price_brl <= 100000;