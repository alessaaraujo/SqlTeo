-- Databricks notebook source
--Selecione todas as colunas da tabela silver_olist.pedido
SELECT * 
FROM silver_olist.pedido

-- COMMAND ----------

-- Selecione as colunas idpedido e descSituacao da tabela silver_olist.pedido
SELECT
  idpedido,
  descSituacao
FROM silver_olist.pedido

-- COMMAND ----------

-- Selecione as colunas idpedido e descSituacao da tabela silver_olist.pedido com apenas 5 pedidos de forma aleatória.
SELECT
  idpedido,
  descSituacao
FROM silver_olist.pedido
LIMIT 5

-- COMMAND ----------

--Seleciona toda a tabela incluindo uma coluna QtdDiasPromessas com a diferença de dias entre a data de fim/Max = dtEstimativaEntrega e início/Min = dtEntregue
SELECT *,
  DATEDIFF(dtEstimativaEntrega,dtEntregue) AS QtdDiasPromessas
FROM silver_olist.pedido

-- COMMAND ----------


