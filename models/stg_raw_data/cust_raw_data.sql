

{{config(materialized='table')}}

    select
    id as cust_id,
    first_name as cust_first_name,
    last_name as cust_last_name
    from {{source('my_raw_data','stg_customerdata')}}


