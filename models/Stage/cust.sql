

    select
    ORDER_ID as or_id,
    ORDER_DATE,
   ORDER_TIME,
   PRODUCT_NAME,
   ORDER_PRICE,
   TAX_VALUE,
   EXISTING_CUSTOMER,
   CUSTOMER_NAME,
   MOBILE_NUMBER
     from {{source('datafeed_shared_schema','data')}}

