-- Calcula o preço médio dos veículos por tipo de câmbio (manual ou automático)
-- Agrupa os dados pela coluna 'gear' e arredonda a média para duas casas decimais
-- Permite comparar o impacto do tipo de câmbio no preço médio dos veículos

SELECT
	gear,
    ROUND(AVG(avg_price_brl), 2) AS preco_medio_cambio
from fipe_prices
GROUP BY gear;
