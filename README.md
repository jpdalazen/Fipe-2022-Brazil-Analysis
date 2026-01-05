# FIPE SQLite Analysis

Este projeto explora dados de preços de veículos no Brasil usando o dataset da **FIPE (Fundação Instituto de Pesquisas Econômicas)** de 2022, analisado através de **SQLite**. O objetivo é gerar insights sobre preços médios, variações e padrões do mercado de veículos.

---

## DATASET

- Fonte: https://www.kaggle.com/datasets/vagnerbessa/average-car-prices-bazil  
- Ano analisado: 2022  
- Número total de registros: 290.275  
- Colunas principais:
  - `year_of_reference` – Ano de referência
  - `month_of_reference` – Mês de referência
  - `fipe_code` – Código do modelo FIPE
  - `brand` – Marca do veículo
  - `model` – Modelo do veículo
  - `fuel` – Tipo de combustível
  - `gear` – Tipo de câmbio (Manual/Automático)
  - `engine_size` – Tamanho do motor
  - `year_model` – Ano do modelo
  - `avg_price_brl` – Preço médio em BRL
  - `age_years` – Idade do veículo (apenas no fipe_2022)

---

## ESTRUTURA DO PROJETO

fipe-sqlite-analysis/
├── [README.md](http://README.md)
├── database/ (opcional)
│   └── fipe.sqlite
└── queries/
    ├── 01_maiscarosebaratos.sql
    ├── 02_precomediomes.sql
    ├── 03_variacaoprecomedio.sql
    ├── 04_precomedioporambio.sql
    ├── 05_precomediopopulares.sql
    ├── 06_precoporidadeveiculo.sql
    ├── 07_Precotipocombustivel.sql
    ├── 08_precotamanhomotor.sql
    ├── 09_PrecomedioMontadora.sql
    ├── 10_Variacaocombustivel.sql
    └── 11_Variacaopormontadora.sql


---

## FERRAMENTAS UTILIZADAS

- **SQLite** – manipulação e consulta do banco de dados  
- **SQL** – análise exploratória  
- **Kaggle** – fonte dos dados

---

## PRINCIPAIS INSIGHTS

O preço médio dos veículos ao longo de 2022 se manteve relativamente estável, indicando um mercado com pequenas oscilações mensais. Apesar disso, houve meses em que os preços atingiram picos, com a diferença entre o mês mais caro e o mais barato chegando a **R$ 3.538,45**.  

O tipo de câmbio exerce grande influência no valor do veículo: carros automáticos apresentam um preço médio significativamente mais alto (**R$ 160.201,15**) em comparação aos manuais (**R$ 107.590,60**). Já o segmento de carros populares, com preços até R$ 100.000, apresenta um preço médio em torno de **R$ 37.779,49**, mostrando o comportamento típico do mercado de entrada.  

A idade do veículo também impacta diretamente no preço. Modelos novos (idade 0) atingem os valores mais altos, enquanto o preço tende a decrescer gradualmente com a idade, refletindo a depreciação natural.  

O tipo de combustível é outro fator relevante: veículos a diesel costumam ser os mais caros, enquanto gasolina é mais acessível e flex se posiciona entre os dois. Além disso, veículos com motores maiores apresentam preço médio mais elevado, evidenciando a influência da cilindrada no valor final.  

Quando se observa o comportamento das marcas, nota-se que algumas apresentam preços mais estáveis ao longo do ano, como a **Volkswagen**, enquanto outras, como a **Mercedes-Benz**, exibem maior variação, mostrando marcas com diferentes estratégias de preço e segmentação. Dentro de uma mesma marca, a escolha do combustível continua sendo decisiva: carros a diesel tendem a custar mais que os equivalentes a gasolina ou flex.  

Os modelos de ponta revelam diferenças ainda mais evidentes: os cinco veículos mais caros alcançam médias impressionantes, enquanto os cinco mais baratos refletem claramente o mercado de entrada, fornecendo uma visão completa do posicionamento de preço por modelo.

---

## COMO RODAR

1. Abra o arquivo `.sqlite` no seu editor SQLite ou online (ex: [https://sqliteonline.com/](https://sqliteonline.com/))  
2. Abra cada arquivo `.sql` da pasta `queries/`  
3. Execute a query para gerar os resultados  
4. Confira os insights conforme descrito acima
