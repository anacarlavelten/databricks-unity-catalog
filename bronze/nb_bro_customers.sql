-- Databricks notebook source
-- MAGIC %md
-- MAGIC

-- COMMAND ----------

-- MAGIC %python
-- MAGIC
-- MAGIC df = spark.read.format("csv").option("header", "true").option("inferschema", "true").load("/Volumes/workspace/raw/volume/Ecommerce/olist_customers_dataset.csv")
