{% snapshot hhhard4 %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='dept_id',
          check_cols=['department_name'],
          invalidate_hard_deletes=True    

        )
    }}

    select * from {{ source('my_raw_data', 'departments') }} limit 10

{% endsnapshot %}