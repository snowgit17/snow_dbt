{% snapshot check_stat %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='dept_id',
          check_cols=['department_name','manager_id'],
        )
    }}

    select * from {{ source('my_raw_data','departments') }}

{% endsnapshot %}
