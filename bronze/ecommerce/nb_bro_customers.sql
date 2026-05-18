-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Notebook para ler e escrever a tabela de Clientes

-- COMMAND ----------

-- MAGIC %python
-- MAGIC
-- MAGIC df = spark.read.format("csv").option("header", "true").option("inferschema", "true").load("/Volumes/workspace/raw/volume/Ecommerce/olist_customers_dataset.csv")

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df.write.format("delta").mode("overwrite").saveAsTable("Workspace.bronze.tb_customer")
-- MAGIC
-- MAGIC
