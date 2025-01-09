-------------------------
----calender view----
-------------------------
CREATE VIEW gold.Calender
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://datalakep2.dfs.core.windows.net/silver/AdventureWorks_Calender/',
    FORMAT = 'PARQUET'
) as query1

------------------------------
---- Customers View ----
------------------------------

CREATE VIEW gold.Customer
AS
SELECT *
FROM OPENROWSET(
    BULK'https://datalakep2.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
)as query1


-------------------------------
---- Product View----
-------------------------------

CREATE VIEW gold.poduct
AS
SELECT *
FROM OPENROWSET(
    BULK'https://datalakep2.dfs.core.windows.net/silver/AdventureWorks_poduct/',
    FORMAT = 'PARQUET'
)as query1


---------------------------------
---- Product_Subcategory view----
---------------------------------

CREATE VIEW gold.poduct_Subcategory
AS
SELECT *
FROM OPENROWSET(
    BULK'https://datalakep2.dfs.core.windows.net/silver/AdventureWorks_poduct_Subcategory/',
    FORMAT = 'PARQUET'
)as query1


-----------------------------------
---- returns view ----
-----------------------------------

CREATE VIEW gold.returns
AS
SELECT *
FROM OPENROWSET(
    BULK'https://datalakep2.dfs.core.windows.net/silver/AdventureWorks_returns/',
    FORMAT = 'PARQUET'
)as query1



----------------------------------
---- Sales view -----
-----------------------------------

CREATE VIEW gold.Sales
AS
SELECT *
FROM OPENROWSET(
    BULK'https://datalakep2.dfs.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
)as query1


----------------------------------------
--- territories view ----
----------------------------------------

CREATE VIEW gold.territories
AS
SELECT *
FROM OPENROWSET(
    BULK'https://datalakep2.dfs.core.windows.net/silver/AdventureWorks_territories/',
    FORMAT = 'PARQUET'
)as query1