{{ config(materialized='table') }}

select distinct
O_ORDERDATE,  
sum(O_TOTALPRICE) over ( order by O_ORDERDATE) as cumulative_total
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
order by O_ORDERDATE