with source as (

    select * 
    from {{ source('olist_curated', 'dim_seller') }}

),

renamed as (

    select
        seller_sk,
        seller_id,
        seller_city,
        seller_state,
        created_at
    from source

)

select * from renamed;
