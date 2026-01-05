-- Calcula o preço médio dos veículos por tipo de combustível
-- Agrupa os dados pela coluna 'fuel' e arredonda a média para duas casas decimais
-- Ordena do combustível com menor preço médio para o maior
-- Permite analisar como o tipo de combustível impacta o preço médio dos veículos

Select
	fuel,
    ROUND(AVG(avg_price_brl), 2) AS preco_medio_tipocombustivel
FROM fipe_prices
GROUP BY fuel
ORDER BY preco_medio_tipocombustivel;