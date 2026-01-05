-- Considera apenas tamanhos de motor mais comuns (>= 1000 registros)
-- para evitar distorções causadas por motores raros

SELECT
  engine_size,
  ROUND(AVG(avg_price_brl), 2) AS preco_medio_tamanhomotor
FROM fipe_prices
WHERE engine_size IS NOT NULL
  AND engine_size IN (
    SELECT engine_size
    FROM fipe_prices
    WHERE engine_size IS NOT NULL
    GROUP BY engine_size
    HAVING COUNT(*) >= 1000
  )
GROUP BY engine_size
ORDER BY engine_size;