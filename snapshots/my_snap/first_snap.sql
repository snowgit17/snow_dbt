{% snapshot  first_snap %}

{{
    config(
      strategy='timestamp',
      unique_key='employee_id',
      updated_at='updated_at'
    )
}}
select * 
from {{source('my_raw_data','employees')}}

{% endsnapshot %}