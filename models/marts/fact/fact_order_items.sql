{{ config(materialized='table', alias='fact_order_items_final') }}

select 
    f.order_id,
    f.order_item_id,
    f.product_id,
    f.seller_id,
    f.customer_id,
    f.price,
    f.freight_value,
    p.product_sk,
    s.seller_sk,
    c.customer_sk
from {{ ref('stg_olist_fact_order_items') }} f
left join {{ ref('dim_product') }} p on f.product_id = p.product_id
left join {{ ref('dim_seller') }} s on f.seller_id = s.seller_id
left join {{ ref('dim_customer') }} c on f.customer_id = c.customer_id;
