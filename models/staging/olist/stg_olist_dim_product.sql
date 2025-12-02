with source as (

    select * 
    from {{ source('olist_curated', 'dim_product') }}

),

renamed as (

    select
        product_sk,
        product_id,
        product_category_name,
        product_weight_g,
        product_length_cm,
        product_height_cm,
        product_width_cm,
        created_at
    from source

)

select * from renamed;
