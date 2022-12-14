-- Databricks notebook source
--Selecione todas as colunas da tabela silver onde a situação do pedido seja delivered. No ano de 2018
SELECT *
 FROM silver_olist.pedido
WHERE
 descSituacao='delivered'
 AND YEAR(dtPedido) = '2018'
--LIMIT 100

-- COMMAND ----------

--Selecione todas as colunas da tabela silver onde a situação do pedido seja delivered e Canceled. No ano de 2018
SELECT *
 FROM silver_olist.pedido
WHERE
 (descSituacao='delivered' OR descSituacao= 'canceled') -- colocado os parenteses para dar a ordem correta de processamento 1o encontrando as situações e depois retornando apenas o ano 2018.
 AND YEAR(dtPedido) = '2018'


-- COMMAND ----------

--Selecione todas as colunas da tabela silver onde a situação do pedido seja delivered e Canceled. No ano de 2018
SELECT *
 FROM silver_olist.pedido
WHERE
 descSituacao IN ('delivered','canceled') -- IN Substitui os PARENTESES !! Igual a outra query
 AND YEAR(dtPedido) = '2018'


-- COMMAND ----------

--Selecione todas as colunas da tabela silver onde a situação do pedido seja sHIPPED e Canceled. No ano de 2018. Onde a data de entrega seja 30 dias após a data aprovada.
SELECT *,
  DATEDIFF(dtEstimativaEntrega, dtAprovado) AS QtdDias
 FROM silver_olist.pedido
WHERE
 descSituacao IN ('shipped','canceled') -- IN Substitui os PARENTESES !! Igual a outra query
 AND YEAR(dtPedido) = '2018'
 AND DATEDIFF(dtEstimativaEntrega,dtAprovado) > 30


-- COMMAND ----------


