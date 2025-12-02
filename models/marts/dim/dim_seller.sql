{{ config(materialized='table', alias='dim_seller_final') }}

select
    seller_sk,
    seller_id,
    seller_city,
    seller_state,
    created_at
from {{ ref('stg_olist_dim_seller') }};
