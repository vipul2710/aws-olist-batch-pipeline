{{ config(
    materialized='table',
    alias='dim_customer_final'
) }}


select
    customer_sk,
    customer_id,
    customer_unique_id,
    customer_city,
    customer_state,
    created_at
from {{ ref('stg_olist_dim_customer') }};
