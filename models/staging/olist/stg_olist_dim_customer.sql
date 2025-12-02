with source as (

    select * 
    from {{ source('olist_curated', 'dim_customer') }}

),

renamed as (

    select
        customer_sk,
        customer_id,
        customer_unique_id,
        customer_city,
        customer_state,
        created_at
    from source

)

select * from renamed;
