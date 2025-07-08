{{ config(
    materialized="incremental",
    incremental_strategy="append",
) }}

select * from {{source('my_raw_data','stg_customerdata')}} where id in(1,2,3,4,5,6)
