with source as (

    select * 
    from {{ source('olist_curated', 'fact_order_items') }}

),

renamed as (

    select
        order_id,
        order_item_id,
        customer_id,
        seller_id,
        product_id,
        price,
        freight_value,
        gross_revenue,
        total_payment_value,
        review_score,
        order_purchase_timestamp,
        order_approved_at,
        order_delivered_carrier_date,
        order_delivered_customer_date,
        order_estimated_delivery_date,
        order_date_sk,
        order_date
    from source

)

select * from renamed;
