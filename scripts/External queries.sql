CREATE DATABASE SCOPED CREDENTIAL cred_arun
WITH
    IDENTITY = 'Managed Identity'

---------------------------------------
--create External data source
---------------------------------------

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://datalakep2.dfs.core.windows.net/silver',
    CREDENTIAL = cred_arun

)


CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://datalakep2.dfs.core.windows.net/gold',
    CREDENTIAL = cred_arun

)


-----------------------------------------------
--- external file formate---
------------------------------------------------

CREATE EXTERNAL FILE FORMAT parquet_file
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


----------------------------------------------
--- external table ----------------
-----------------------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = parquet_file
)AS
select* FROM gold.Sales



------------------------------------


