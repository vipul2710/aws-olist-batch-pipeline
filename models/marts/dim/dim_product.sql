{{ config(materialized='table', alias='dim_product_final') }}

select
    product_sk,
    product_id,
    product_category_name,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm,
    created_at
from {{ ref('stg_olist_dim_product') }};